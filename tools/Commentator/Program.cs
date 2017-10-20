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

namespace Commentator
{
    class Program
    {
        /// <summary>
        /// Gets all SQL comments and formats them as markdown
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            if (args.Length < 1)
            {
                Console.WriteLine("Syntax: Commentator.exe <source file> <destination file>");
                Console.WriteLine("OR: Commentator.exe -getall");
                return;
            }            

            Console.WriteLine("Commentator");
            Console.WriteLine("===========");

            if(args[0] != "-getall")
            {
                if (!File.Exists(args[0]))
                {
                    Console.WriteLine($"{args[0]} doesn't exist!");
                    return;
                }
                if (File.Exists(args[1])) File.Delete(args[1]);
                SaveComments(args[0], args[1]);
            }
            else
            {
                var path = System.Reflection.Assembly.GetEntryAssembly().Location;
                var files = Directory.GetFiles(Path.GetDirectoryName(path), "*.sql");
                foreach (var file in files)
                {
                    var newFile = file.Replace(".sql", ".md");
                    if (File.Exists(newFile)) File.Delete(newFile);
                    SaveComments(file, newFile);
                }
            }
        }

        /// <summary>
        /// Gets all comments from a file and stores it into a new file
        /// </summary>
        /// <param name="path">SQL source file</param>
        /// <param name="saveToPath">Destionation file</param>
        static void SaveComments(string path, string saveToPath)
        {
            var comments = GetAllComments(File.ReadAllLines(path));
            var result = new List<string>();

            foreach (var comment in comments)
            {
                Console.WriteLine(comment);
                var formatted = FormatComment(comment);
                result.Add(formatted[0]);
                if (formatted[1] != "") result.Add(formatted[1]);
            }

            // Saves to file
            File.AppendAllLines(saveToPath, result);
            Console.WriteLine($"Finished saving to: {saveToPath}");
        }

        /// <summary>
        /// Gets all SQL comments
        /// </summary>
        /// <param name="lines">Array of all lines of a SQL file</param>
        /// <returns>List of comments</returns>
        static IEnumerable<string> GetAllComments(string[] lines)
        {
            var list = new List<string>();
            foreach (var line in lines)
            {
                if (!line.Contains("-- ")) continue;
                var split = line.Split(new string[] { "-- " }, StringSplitOptions.RemoveEmptyEntries);
                list.Add(split.Length > 1 ? split[1].Trim() : split[0].Trim());
            }
            return list;
        }

        /// <summary>
        /// Formats the comment for markdown
        /// </summary>
        /// <param name="comment">The comment</param>
        /// <returns>Formatted comment</returns>
        static string[] FormatComment(string comment)
        {
            // Seperate extra data
            var datasplit = comment.Split(new char[] { '|' }, 2);
            var main = datasplit[0].Trim();
            var extra = datasplit.Length > 1 ? datasplit[1].Trim() : "";

            // Create headers
            if (main.StartsWith("*"))
            {
                return new string[] { main.Replace("*", "#").Trim(), FormatExtraData(extra) };
            }

            // Create lists with reference
            if (main.StartsWith("-"))
            {
                var split = main.Remove(0, 2).Split(new char[] { '.' }, 2);
                var index = split[0].Trim() + ".";
                var text = split[1].Trim();
                var reference = "[" + text + "](" + "#" + text.ToLower().Replace(" ", "-") + ")";

                return new string[] { index + " " + reference, FormatExtraData(extra) };
            }

            // No bullet point if ^
            return main.StartsWith("^ ") ? new string[] { main.Replace("^ ", ""), FormatExtraData(extra) } : new string[] { "* " + main, FormatExtraData(extra) };
        }

        /// <summary>
        /// Format the extra data
        /// </summary>
        /// <param name="extra"></param>
        /// <returns></returns>
        static string FormatExtraData(string extra)
        {
            if (extra == "") return "";
            return $"<br/>*NOTE*: {extra.Replace(" | ", ", ")}";
        }
    }
}