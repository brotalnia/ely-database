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
using System.IO;

namespace CSVParser
{
    class Program
    {
        /// <summary>
        /// Parses all entries from a CSV file into an appropriate file
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            if (args.Length != 1 || !File.Exists(args[0]))
            {
                Console.WriteLine("Syntax: CSVParser <csv file>");
                return;
            }

            var lines = File.ReadAllLines(args[0]);
            var first = true;
            foreach (var line in lines)
            {
                if (first)
                {
                    first = false;
                    continue;
                }

                var split = line.Split(';');
                var result = split[3].Trim() == "" ? $"{split[0].Trim()}, -- {split[1].Trim()}" : $"{split[0].Trim()}, -- {split[1].Trim()} | {split[3].Trim()}";
                Console.WriteLine($"{split[2].Trim()}.txt: {result}");
                File.AppendAllLines($"{split[2].Trim()}.txt", new string[] { result });
            }
        }
    }
}