using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ItemTemplateCreator
{
    class Spell
    {
        public int ID;
        public int Trigger;
        public int Charges;
        public int PpmRate;
        public int Cd;
        public int Category;
        public int CategoryID;

        public static Dictionary<int, string> ID2Name;
        public static bool IsDictInitialized { get; private set; }

        static Spell ()
        {
            ID2Name = new Dictionary<int, string>();
        }

        public Spell ()
        {
            ID = 0;
            Trigger = 0;
            Charges = 0;
            PpmRate = 0;
            Cd = 0;
            Category = 0;
            CategoryID = 0;
        }

        public Spell (int InID, int InTrigger = 0, int InCharges = 0, int InPpmRate = 0, int InCd = 0, int InCategory = 0, int InCategoryID = 0)
        {
            ID = InID;
            Trigger = InTrigger;
            Charges = InCharges;
            PpmRate = InPpmRate;
            Cd = InCd;
            Category = InCategory;
            CategoryID = InCategoryID;
        }

        public void Load (DataRow ItemData, int StartIndex)
        {
            ID          = Convert.ToInt32(ItemData[StartIndex]);
            Trigger     = Convert.ToInt32(ItemData[StartIndex + 1]);
            Charges     = Convert.ToInt32(ItemData[StartIndex + 2]);
            PpmRate     = Convert.ToInt32(ItemData[StartIndex + 3]);
            Cd          = Convert.ToInt32(ItemData[StartIndex + 4]);
            Category    = Convert.ToInt32(ItemData[StartIndex + 5]);
            CategoryID  = Convert.ToInt32(ItemData[StartIndex + 6]);
        }

        public static bool InitializeSpellTable ()
        {
            try
            {
                using (StreamReader sr = File.OpenText("SpellTable.csv"))
                {
                    while (!sr.EndOfStream)
                    {
                        string EntryLine = sr.ReadLine();
                        string[] SpellParams = EntryLine.Split(';');

                        int ID;
                        if (!int.TryParse(SpellParams[0], out ID))
                        {
                            continue;
                        }

                        string spellName = SpellParams[1];
                        // fix for duplicate names
                        if (ID2Name.ContainsValue(spellName))
                        {
                            spellName += String.Format("[{0}]", ID);
                        }

                        ID2Name.Add(ID, spellName);
                    }

                    IsDictInitialized = true;
                    return true;
                }
            }
            catch (FileNotFoundException)
            {
                IsDictInitialized = false;
                return false;
            }
        }

        public static string GetSpellName (int ID)
        {
            if (ID2Name.ContainsKey (ID))
            {
                return ID2Name[ID];
            }
            return "NONE";
        }

        public static int GetSpellID (string SpellName)
        {
            if (ID2Name.ContainsValue(SpellName))
            {
                foreach (var item in ID2Name)
                {
                    if (item.Value == SpellName)
                    {
                        return item.Key;
                    }
                }
            }
            return 0;
        }
    }
}
