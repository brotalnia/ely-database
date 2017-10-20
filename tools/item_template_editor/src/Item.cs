using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemTemplateCreator
{
    class ItemDamage
    {
        public int DamageType;
        public int DamageMin;
        public int DamageMax;
    }

    class ResistanceInfo
    {
        public int Holy;
        public int Fire;
        public int Nature;
        public int Frost;
        public int Shadow;
        public int Arcane;

        public void Load (DataRow ItemRow)
        {
            Holy    = Convert.ToInt32(ItemRow[61]);
            Fire    = Convert.ToInt32(ItemRow[62]);
            Nature  = Convert.ToInt32(ItemRow[63]);
            Frost   = Convert.ToInt32(ItemRow[64]);
            Shadow  = Convert.ToInt32(ItemRow[65]);
            Arcane  = Convert.ToInt32(ItemRow[66]);
        }
    }

    enum ItemStatType
    {
        MOD_NONE,
        MOD_MANA,
        MOD_HEALTH,
        MOD_AGILITY,
        MOD_STRENGTH,
        MOD_INTELLECT,
        MOD_SPIRIT,
        MOD_STAMINA,
        MOD_DEFENSE_SKILL_RATING,
        MOD_DODGE_RATING,
        MOD_PARRY_RATING,
        MOD_BLOCK_RATING,
        MOD_HIT_MELEE_RATING,
        MOD_HIT_RANGED_RATING,
        MOD_HIT_SPELL_RATING,
        MOD_CRIT_MELEE_RATING,
        MOD_CRIT_RANGED_RATING,
        MOD_CRIT_SPELL_RATING,
        MOD_HIT_TAKEN_MELEE_RATING,
        MOD_HIT_TAKEN_RANGED_RATING,
        MOD_HIT_TAKEN_SPELL_RATING,
        MOD_CRIT_TAKEN_MELEE_RATING,
        MOD_CRIT_TAKEN_RANGED_RATING,
        MOD_CRIT_TAKEN_SPELL_RATING,
        MOD_HASTE_MELEE_RATING,
        MOD_HASTE_RANGED_RATING,
        MOD_HASTE_SPELL_RATING,
        MOD_HIT_RATING,
        MOD_CRIT_RATING,
        MOD_HIT_TAKEN_RATING,
        MOD_CRIT_TAKEN_RATING,
        MOD_RESILIENCE_RATING,
        MOD_HASTE_RATING,
        MOD_EXPERTISE_RATING
    }

    class ItemStat
    {
        public ItemStatType Type;
        public int Value;
    }


    class Item
    {
        public int ID;
        public string Name;
        public Spell[] ItemSpells;
        public ItemDamage[] ItemDamages;
        public ResistanceInfo Resistance;
        public ItemStat[] ItemStats;
        public int Armor;


        public Item () : this (0)
        {
        }

        private Item (int InID)
        {
            ID = InID;
            Name = "";
            ItemSpells = new Spell[5];
            ItemDamages = new ItemDamage[5];
            Resistance = new ResistanceInfo();
            ItemStats = new ItemStat[10];
            Armor = 0;
        }

        public static Item Load (int InID)
        {
            Item Result = new Item(InID);

            DataTable dataTable = Database.Select(Database.SelectItem, InID.ToString());
            if (dataTable.Rows.Count < 1)
            {
                return null;
            }

            DataRow DatabaseItem = dataTable.Rows[0];
            Result.Name = DatabaseItem[3].ToString();

            int CurrentDataTableIndex = 0;
            //load stats
            for (int statID = 0; statID < 10; ++statID)
            {
                Result.ItemStats[statID] = new ItemStat();
                ItemStat CurrentStat = Result.ItemStats[statID];
                CurrentDataTableIndex = 25 + (2 * statID);

                CurrentStat.Type = (ItemStatType)Convert.ToInt32 (DatabaseItem[CurrentDataTableIndex]);
                CurrentStat.Value = Convert.ToInt32 (DatabaseItem[CurrentDataTableIndex + 1]);
            }

            //load damage types
            for (int damageID = 0; damageID < 5; ++damageID)
            {
                Result.ItemDamages[damageID] = new ItemDamage();
                ItemDamage CurrentItemDamage = Result.ItemDamages[damageID];
                CurrentDataTableIndex = 45 + (3 * damageID);

                CurrentItemDamage.DamageMin = Convert.ToInt32(DatabaseItem[CurrentDataTableIndex]);
                CurrentItemDamage.DamageMax = Convert.ToInt32(DatabaseItem[CurrentDataTableIndex + 1]);
                CurrentItemDamage.DamageType = Convert.ToInt32(DatabaseItem[CurrentDataTableIndex + 2]);
            }

            //armor
            Result.Armor = Convert.ToInt32(DatabaseItem[60]);

            //resistances
            Result.Resistance.Load(DatabaseItem);

            //item spells
            for (int itemSpellID = 0; itemSpellID < 5; ++itemSpellID)
            {
                Result.ItemSpells[itemSpellID] = new Spell();
                Spell CurrentItemSpell = Result.ItemSpells[itemSpellID];
                
                CurrentDataTableIndex = 70 + (7 * itemSpellID);
                CurrentItemSpell.Load(DatabaseItem, CurrentDataTableIndex);
            }

            return Result;
        }

        public ItemStat SearchItemStatByType (ItemStatType InType)
        {
            foreach (ItemStat item in ItemStats)
            {
                if (item.Type == InType)
                {
                    return item;
                }
            }
            return null;
        }

        public ItemStat GetFirstEmptyStat ()
        {
            for (int i = 0; i < ItemStats.Length; ++i)
            {
                if (ItemStats[i].Type == ItemStatType.MOD_NONE) return ItemStats[i];
            }

            return null;
        }

        public void SortStats()
        {
            for (int MainSelector = 0; MainSelector < ItemStats.Length; ++MainSelector)
            {
                ItemStat SelectedStat = ItemStats[MainSelector];
                if (SelectedStat.Type == ItemStatType.MOD_NONE)
                {
                    for (int SecondSelector = MainSelector + 1; SecondSelector < ItemStats.Length; ++SecondSelector)
                    {
                        ItemStat SecondSelectedStat = ItemStats[SecondSelector];
                        if (SecondSelectedStat.Type == ItemStatType.MOD_NONE) continue;

                        ItemStats[MainSelector] = ItemStats[SecondSelector];
                        ItemStats[SecondSelector] = SelectedStat;
                        break;
                    }
                }
            }
        }
    }
}
