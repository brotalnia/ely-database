using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace EntryParser
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("Syntax: EntryParser.exe <source txt> <destination txt>");
                return;
            }

            if (!File.Exists(args[0]))
            {
                Console.WriteLine($"{args[0]} doesn't exist!");
                return;
            }
            if (File.Exists(args[1])) File.Delete(args[1]);

            Console.WriteLine("EntryParser");
            Console.WriteLine("===========");

            var listOfEntries = new List<string>();
            // Opens the to be parsed file
            var file = File.ReadAllLines(args[0]);
            int i = 0;
            foreach (var line in file)
            {
                Console.WriteLine($"{i}. Checking line: {line}");
                i++;
                var entries = new List<string>();

                // Skips comments
                if (line.Trim().StartsWith("--")) continue;

                // Parses entries from updates and inserts
                if (!line.ToUpper().StartsWith("REPLACE INTO"))
                {
                    var cleanLine = line.Replace("`", "").Replace(" =", "=").Replace("= ", "=").Replace("'", "").Replace(";", "").ToUpper();
                    if (cleanLine.Contains("ENTRY="))
                    {
                        entries.Add(cleanLine.Split(new string[] { "ENTRY=" }, StringSplitOptions.None)[1].Split(' ')[0]);
                    }
                    else if (cleanLine.Contains("ENTRY IN ("))
                    {
                        entries.AddRange(cleanLine.Split(new string[] { "ENTRY IN (" }, StringSplitOptions.None)[1].Split(')')[0].Trim().Split(','));
                    }
                }
                else if (line.ToUpper().StartsWith("REPLACE INTO `ITEM_TEMPLATE` VALUE ("))
                {
                    var values = line.ToUpper().Replace("REPLACE INTO `ITEM_TEMPLATE` VALUE (", "").Replace(" ", "").TrimEnd(new char[] { ')' }).Split(new string[] { "),(" }, StringSplitOptions.None);
                    foreach (var value in values)
                    {
                        entries.Add(value.Split(',')[0]);
                    }
                }

                if (entries.Count() == 0) continue;

                // Stores the successfully parsed entries
                foreach (var entry in entries)
                {
                    if (!int.TryParse(entry, out int x) || entry == "") continue;
                    listOfEntries.Add(entry);
                    Console.WriteLine($"Added ENTRY: {entry}");
                }
            }

            //Saves to file
            Console.WriteLine($"Parsing finished, saving to: {args[1]}");
            File.AppendAllLines(args[1], listOfEntries);
            Console.WriteLine("DONE!");
        }
    }
}
