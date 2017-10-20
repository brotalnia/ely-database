/*
 * Copyright (C) 2017 Elysium Project <https://github.com/elysium-project>
 * Copyright (C) 2017 Josipbroz <https://github.com/JosipbrozElysium>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace Commentator
{
    class Program
    {
        /// <summary>
        /// Adds a comment to each statement
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("Syntax: Commentator.exe <source file> <destination file>");
                return;
            }

            if (!File.Exists(args[0]))
            {
                Console.WriteLine($"{args[0]} doesn't exist!");
                return;
            }

            if (File.Exists(args[1])) File.Delete(args[1]);

            Console.WriteLine("Commentator");
            Console.WriteLine("===========");

            var result = new List<string>();
            var file = File.ReadAllLines(args[0]);
            foreach (var line in file)
            {
                // First, we save all the item's stats inside a dictionary
                var item = GetItemTemplate(line);

                // Finally, we create the comment and add it AND the SQL statement to the list
                var resultString = new StringBuilder();

                // Name
                resultString.Append($"{item["name"]}");

                // Armor
                resultString.Append(item["armor"] != "0" ? $" | Armor: {item["armor"]}" : "");

                // Stats
                resultString.Append(item["stat_value1"] != "0" ? $" | {item["stat_type1"]}: {item["stat_value1"]}" : "");
                resultString.Append(item["stat_value2"] != "0" ? $" | {item["stat_type2"]}: {item["stat_value2"]}" : "");
                resultString.Append(item["stat_value3"] != "0" ? $" | {item["stat_type3"]}: {item["stat_value3"]}" : "");
                resultString.Append(item["stat_value4"] != "0" ? $" | {item["stat_type4"]}: {item["stat_value4"]}" : "");
                resultString.Append(item["stat_value5"] != "0" ? $" | {item["stat_type5"]}: {item["stat_value5"]}" : "");
                resultString.Append(item["stat_value6"] != "0" ? $" | {item["stat_type6"]}: {item["stat_value6"]}" : "");
                resultString.Append(item["stat_value7"] != "0" ? $" | {item["stat_type7"]}: {item["stat_value7"]}" : "");
                resultString.Append(item["stat_value8"] != "0" ? $" | {item["stat_type8"]}: {item["stat_value8"]}" : "");
                resultString.Append(item["stat_value9"] != "0" ? $" | {item["stat_type9"]}: {item["stat_value9"]}" : "");
                resultString.Append(item["stat_value10"] != "0" ? $" | {item["stat_type10"]}: {item["stat_value10"]}" : ""); 

                // Resistances
                resultString.Append(item["holy_res"] != "0" ? $" | Holy Resistance: {item["holy_res"]}" : "");
                resultString.Append(item["fire_res"] != "0" ? $" | Fire Resistance: {item["fire_res"]}" : "");
                resultString.Append(item["nature_res"] != "0" ? $" | Nature Resistance: {item["nature_res"]}" : "");
                resultString.Append(item["frost_res"] != "0" ? $" | Frost Resistance: {item["frost_res"]}" : "");
                resultString.Append(item["shadow_res"] != "0" ? $" | Shadow Resistance: {item["shadow_res"]}" : "");
                resultString.Append(item["arcane_res"] != "0" ? $" | Arcane Resistance: {item["arcane_res"]}" : "");

                // SpellID
                resultString.Append(item["spellid_1"] != "0" ? $" | SpellID 1: {item["spellid_1"]}" : "");
                resultString.Append(item["spellid_2"] != "0" ? $" | SpellID 2: {item["spellid_2"]}" : "");
                resultString.Append(item["spellid_3"] != "0" ? $" | SpellID 3: {item["spellid_3"]}" : "");
                resultString.Append(item["spellid_4"] != "0" ? $" | SpellID 4: {item["spellid_4"]}" : "");
                resultString.Append(item["spellid_5"] != "0" ? $" | SpellID 5: {item["spellid_5"]}" : "");

                result.Add("-- " + resultString.ToString());
                result.Add(line);
                Console.WriteLine(resultString);
            }

            // Saves to file
            Console.WriteLine($"Finished saving to: {args[1]}");
            File.AppendAllLines(args[1], result);
            Console.WriteLine("DONE!");
        }

        public static Dictionary<string, string> GetItemTemplate(string line)
        {
            var item = new Dictionary<string, string>();
            var split = line.Split(new string[] { ") VALUES (" }, StringSplitOptions.None);
            var keys = split[0]
                .Replace("REPLACE INTO `item_template` (", "")
                .Replace("`", "").Split(new string[] { ", " }, StringSplitOptions.None);
            var values = Regex.Replace(split[1]
                .Replace(");", "")
                .Replace("'", "")
                .Replace(@"\", ""), "[a-zA-Z], [a-zA-Z]", delegate (Match match) 
                {
                    return match.ToString().Replace(" ", "<REGEX>");
                })
                .Split(new string[] { ", " }, StringSplitOptions.None);
            values[3] = values[3].Replace("<REGEX>", " ");

            for (int i = 0; i < keys.Length; i++)
            {
                var value = values[i];
                if (keys[i].StartsWith("stat_type"))
                {
                    value = StatTypeToString((StatType)Convert.ToInt32(values[i]));
                }
                item.Add(keys[i], value);
            }

            return item;
        }

        public enum StatType
        {
            ITEM_MOD_MANA = 0,
            ITEM_MOD_HEALTH = 1,
            ITEM_MOD_AGILITY = 3,
            ITEM_MOD_STRENGTH = 4,
            ITEM_MOD_INTELLECT = 5,
            ITEM_MOD_SPIRIT = 6,
            ITEM_MOD_STAMINA = 7
        }

        public static string StatTypeToString(StatType e)
        {
            switch (e)
            {
                case StatType.ITEM_MOD_MANA:
                    return "No Stats";
                case StatType.ITEM_MOD_HEALTH:
                    return "Health";
                case StatType.ITEM_MOD_AGILITY:
                    return "Agility";
                case StatType.ITEM_MOD_STRENGTH:
                    return "Strength";
                case StatType.ITEM_MOD_INTELLECT:
                    return "Intellect";
                case StatType.ITEM_MOD_SPIRIT:
                    return "Spirit";
                case StatType.ITEM_MOD_STAMINA:
                    return "Stamina";
                default:
                    return "";
            }
        }
    }
}