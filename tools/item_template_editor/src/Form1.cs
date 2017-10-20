using System;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using System.IO;
using System.Text;

namespace ItemTemplateCreator
{
    public partial class Form1 : Form
    {
        int CurrentItemIndex = 1;

        Item[] CachedItems;
        bool ShowItemMiniMutex;

        int[] TargetIDs =
            {
                16542,
                16544,
                16541,
                16543,
                16548,
                16545,
                16578,
                16580,
                16577,
                16579,
                16574,
                16573,
                16566,
                16568,
                16565,
                16567,
                16571,
                16569,
                17623,
                17622,
                17624,
                17625,
                17620,
                17618,
                16533,
                16536,
                16535,
                16534,
                16540,
                16539,
                16550,
                16551,
                16549,
                16552,
                16555,
                16554,
                17591,
                17590,
                17592,
                17593,
                17588,
                17586,
                16561,
                16562,
                16563,
                16564,
                16560,
                16558,


                16478,
                16480,
                16477,
                16479,
                16484,
                16483,
                16474,
                16476,
                16473,
                16475,
                16471,
                16472,
                16465,
                16468,
                16466,
                16467,
                16463,
                16462,
                17602,
                17604,
                17605,
                17603,
                17608,
                17607,
                16441,
                16444,
                16443,
                16442,
                16440,
                16437,
                16451,
                16449,
                16452,
                16450,
                16448,
                16459,
                17578,
                17580,
                17581,
                17579,
                17584,
                17583,
                16455,
                16457,
                16453,
                16456,
                16454,
                16446
            };

        public Form1()
        {
            InitializeComponent();
            ShowItemMiniMutex = false;

            InitializeComboBoxWithStatEnum(StatTypeSelector1);
            InitializeComboBoxWithStatEnum(StatTypeSelector2);
            InitializeComboBoxWithStatEnum(StatTypeSelector3);
            InitializeComboBoxWithStatEnum(StatTypeSelector4);
            InitializeComboBoxWithStatEnum(StatTypeSelector5);
            InitializeComboBoxWithStatEnum(StatTypeSelector6);
            InitializeComboBoxWithStatEnum(StatTypeSelector7);
            InitializeComboBoxWithStatEnum(StatTypeSelector8);
            InitializeComboBoxWithStatEnum(StatTypeSelector9);
            InitializeComboBoxWithStatEnum(StatTypeSelector10);

            if (Spell.InitializeSpellTable())
            {
                spellName1.Enabled = true;
                spellName2.Enabled = true;
                spellName3.Enabled = true;
                spellName4.Enabled = true;
                spellName5.Enabled = true;

                spellId1.Enabled = false;
                spellId2.Enabled = false;
                spellId3.Enabled = false;
                spellId4.Enabled = false;
                spellId5.Enabled = false;

                InitializeComboBoxWithSpellNames(spellName1);
                InitializeComboBoxWithSpellNames(spellName2);
                InitializeComboBoxWithSpellNames(spellName3);
                InitializeComboBoxWithSpellNames(spellName4);
                InitializeComboBoxWithSpellNames(spellName5);
            }
            else
            {
                spellName1.Enabled = false;
                spellName2.Enabled = false;
                spellName3.Enabled = false;
                spellName4.Enabled = false;
                spellName5.Enabled = false;

                spellId1.Enabled = true;
                spellId2.Enabled = true;
                spellId3.Enabled = true;
                spellId4.Enabled = true;
                spellId5.Enabled = true;
            }
        }

        private void InitializeComboBoxWithStatEnum (ComboBox ElementTarget)
        {
            ElementTarget.Items.Clear();
            string[] EnumValues = Enum.GetNames(typeof(ItemStatType));

            for (int i = 0; i < EnumValues.Length; ++i)
            {
                ElementTarget.Items.Add(EnumValues[i]);
            }
        }

        private void InitializeComboBoxWithSpellNames (ComboBox ElementTarget)
        {
            ElementTarget.Items.Clear();
            foreach (var item in Spell.ID2Name)
            {
                ElementTarget.Items.Add(item.Value);
            }
        }

        private void buttonConnect_Click_1(object sender, System.EventArgs e)
        {
            if (Database.Connect(tbHost.Text, tbDatabase.Text, tbPassword.Text, tbLogin.Text))
            {
                OnConnected();
                return;
            }
            labelStatus.ForeColor = Color.Red;
            buttonConnect.Enabled = true;
            buttonDisconnect.Enabled = false;
            groupBoxAll.Enabled = false;
            groupItem.Enabled = false;
        }

        private void OnConnected()
        {
            labelStatus.ForeColor = Color.Green;
            buttonConnect.Enabled = false;
            buttonDisconnect.Enabled = true;
            groupBoxAll.Enabled = true;
            groupItem.Enabled = true;

//             CachedItems = new Item[TargetIDs.Length];
//             for (int i = 0; i < TargetIDs.Length; ++i)
//             {
//                 int ItemID = TargetIDs[i];
// 
//                 CachedItems[i] = Item.Load(ItemID);
//             }
// 
//             if (TargetIDs.Length > 0)
//             {
//                 ShowItem(CachedItems[CurrentItemIndex - 1]);
//             }
            UpdateItemIndexTxtBoxs();
        }

        private void UpdateItemIndexTxtBoxs()
        {
            if (CachedItems != null)
            {
                ActualItemIndexTxt.Text = CurrentItemIndex.ToString();
                UpperRangeTxt.Text = CachedItems.Length.ToString();
            }
        }

        private void ScriptFunction ()
        {

            using (StreamWriter SW = File.CreateText("Output.sql"))
            {
                SW.WriteLine("--Alliance PvP items");

                for (int i = 0; i < TargetIDs.Length; ++i)
                {
                    int CurrentID = TargetIDs[i];
                    itemEntry.Value = Convert.ToDecimal(CurrentID);

                    buttonLoad_Click_1(null, null);

                    string EntryComment = $"-- {tbName.Text} ID: {CurrentID}";
                    SW.WriteLine(EntryComment);

                    string SQLUpdateString = GetUpdateSQLString();
                    SW.WriteLine(SQLUpdateString);
                    SW.WriteLine(SW.NewLine);
                }

                SW.WriteLine("--End Alliance PvP items");
            }
        }

        private void buttonDisconnect_Click_1(object sender, System.EventArgs e)
        {
            Database.Disconnect();
            labelStatus.ForeColor = Color.Red;
            buttonConnect.Enabled = true;
            buttonDisconnect.Enabled = false;
            groupBoxAll.Enabled = false;
            groupItem.Enabled = false;
        }

        private void buttonClear_Click_1(object sender, System.EventArgs e)
        {
            _loadedEntry = string.Empty;
            tbName.Clear();
            StatTypeSelector1.SelectedIndex = 0;
            StatTypeSelector2.SelectedIndex = 0;
            StatTypeSelector3.SelectedIndex = 0;
            StatTypeSelector4.SelectedIndex = 0;
            StatTypeSelector5.SelectedIndex = 0;
            StatTypeSelector6.SelectedIndex = 0;
            StatTypeSelector7.SelectedIndex = 0;
            StatTypeSelector8.SelectedIndex = 0;
            StatTypeSelector9.SelectedIndex = 0;
            StatTypeSelector10.SelectedIndex = 0;
            statValue1.Value = decimal.Zero;
            statValue2.Value = decimal.Zero;
            statValue3.Value = decimal.Zero;
            statValue4.Value = decimal.Zero;
            statValue5.Value = decimal.Zero;
            statValue6.Value = decimal.Zero;
            statValue7.Value = decimal.Zero;
            statValue8.Value = decimal.Zero;
            statValue9.Value = decimal.Zero;
            statValue10.Value = decimal.Zero;
            dmgMin1.Value = decimal.Zero;
            dmgMax1.Value = decimal.Zero;
            dmgType1.Value = decimal.Zero;
            dmgMin2.Value = decimal.Zero;
            dmgMax2.Value = decimal.Zero;
            dmgType2.Value = decimal.Zero;
            dmgMin3.Value = decimal.Zero;
            dmgMax3.Value = decimal.Zero;
            dmgType3.Value = decimal.Zero;
            dmgMin4.Value = decimal.Zero;
            dmgMax4.Value = decimal.Zero;
            dmgType4.Value = decimal.Zero;
            dmgMin5.Value = decimal.Zero;
            dmgMax5.Value = decimal.Zero;
            dmgType5.Value = decimal.Zero;
            armor.Value = decimal.Zero;
            resHoly.Value = decimal.Zero;
            resFire.Value = decimal.Zero;
            resNature.Value = decimal.Zero;
            resFrost.Value = decimal.Zero;
            resShadow.Value = decimal.Zero;
            resArcane.Value = decimal.Zero;
            spellId1.Value = decimal.Zero;
            spellTrigger1.Value = decimal.Zero;
            spellCharges1.Value = decimal.Zero;
            spellppm1.Value = decimal.Zero;
            spellcd1.Value = decimal.Zero;
            spellcat1.Value = decimal.Zero;
            spellcatcd1.Value = decimal.Zero;
            spellId2.Value = decimal.Zero;
            spellTrigger2.Value = decimal.Zero;
            spellCharges2.Value = decimal.Zero;
            spellppm2.Value = decimal.Zero;
            spellcd2.Value = decimal.Zero;
            spellcat2.Value = decimal.Zero;
            spellcatcd2.Value = decimal.Zero;
            spellId3.Value = decimal.Zero;
            spellTrigger3.Value = decimal.Zero;
            spellCharges3.Value = decimal.Zero;
            spellppm3.Value = decimal.Zero;
            spellcd3.Value = decimal.Zero;
            spellcat3.Value = decimal.Zero;
            spellcatcd3.Value = decimal.Zero;
            spellId4.Value = decimal.Zero;
            spellTrigger4.Value = decimal.Zero;
            spellCharges4.Value = decimal.Zero;
            spellppm4.Value = decimal.Zero;
            spellcd4.Value = decimal.Zero;
            spellcat4.Value = decimal.Zero;
            spellcatcd4.Value = decimal.Zero;
            spellId5.Value = decimal.Zero;
            spellTrigger5.Value = decimal.Zero;
            spellCharges5.Value = decimal.Zero;
            spellppm5.Value = decimal.Zero;
            spellcd5.Value = decimal.Zero;
            spellcat5.Value = decimal.Zero;
            spellcatcd5.Value = decimal.Zero;
        }

        private void buttonLoad_Click_1(object sender, System.EventArgs e)
        {
            //buttonClear_Click_1(null, null);
            if (itemEntry.Value == decimal.Zero)
            {
                return;
            }
            _loadedEntry = itemEntry.Value.ToString(CultureInfo.InvariantCulture);

            CachedItems = new Item[1];
            Item loaded = Item.Load(int.Parse(_loadedEntry));
            if (loaded == null)
            {
                MessageBox.Show(String.Format("No item exists with ID {0}", int.Parse(_loadedEntry)));
                return;
            }
            else
                CachedItems[0] = loaded;

            ShowItem(CachedItems[0]);
        }

        private void ShowItem (Item InItem)
        {
            //anti recursive
            if (ShowItemMiniMutex) return;
            ShowItemMiniMutex = true;

            //ID and name
            itemEntry.Value     = InItem.ID;
            tbName.Text         = InItem.Name;

            //item stats
            StatTypeSelector1.SelectedIndex = (int)InItem.ItemStats[0].Type;
            statValue1.Value                = InItem.ItemStats[0].Value;
            StatTypeSelector2.SelectedIndex = (int)InItem.ItemStats[1].Type;
            statValue2.Value                = InItem.ItemStats[1].Value;
            StatTypeSelector3.SelectedIndex = (int)InItem.ItemStats[2].Type;
            statValue3.Value                = InItem.ItemStats[2].Value;
            StatTypeSelector4.SelectedIndex = (int)InItem.ItemStats[3].Type;
            statValue4.Value                = InItem.ItemStats[3].Value;
            StatTypeSelector5.SelectedIndex = (int)InItem.ItemStats[4].Type;
            statValue5.Value                = InItem.ItemStats[4].Value;
            StatTypeSelector6.SelectedIndex = (int)InItem.ItemStats[5].Type;
            statValue6.Value                = InItem.ItemStats[5].Value;
            StatTypeSelector7.SelectedIndex = (int)InItem.ItemStats[6].Type;
            statValue7.Value                = InItem.ItemStats[6].Value;
            StatTypeSelector8.SelectedIndex = (int)InItem.ItemStats[7].Type;
            statValue8.Value                = InItem.ItemStats[7].Value;
            StatTypeSelector9.SelectedIndex = (int)InItem.ItemStats[8].Type;
            statValue9.Value                = InItem.ItemStats[8].Value;
            StatTypeSelector10.SelectedIndex = (int)InItem.ItemStats[9].Type;
            statValue10.Value                = InItem.ItemStats[9].Value;

            //damage types
            dmgMin1.Value  = InItem.ItemDamages[0].DamageMin;
            dmgMax1.Value  = InItem.ItemDamages[0].DamageMax;
            dmgType1.Value = InItem.ItemDamages[0].DamageType;
            dmgMin2.Value  = InItem.ItemDamages[1].DamageMin;
            dmgMax2.Value  = InItem.ItemDamages[1].DamageMax;
            dmgType2.Value = InItem.ItemDamages[1].DamageType;
            dmgMin3.Value  = InItem.ItemDamages[2].DamageMin;
            dmgMax3.Value  = InItem.ItemDamages[2].DamageMax;
            dmgType3.Value = InItem.ItemDamages[2].DamageType;
            dmgMin4.Value  = InItem.ItemDamages[3].DamageMin;
            dmgMax4.Value  = InItem.ItemDamages[3].DamageMax;
            dmgType4.Value = InItem.ItemDamages[3].DamageType;
            dmgMin5.Value  = InItem.ItemDamages[4].DamageMin;
            dmgMax5.Value  = InItem.ItemDamages[4].DamageMax;
            dmgType5.Value = InItem.ItemDamages[4].DamageType;

            //armor
            armor.Value = InItem.Armor;

            //resistances
            resHoly.Value   = InItem.Resistance.Holy;
            resFire.Value   = InItem.Resistance.Fire;
            resNature.Value = InItem.Resistance.Nature;
            resFrost.Value  = InItem.Resistance.Frost;
            resShadow.Value = InItem.Resistance.Shadow;
            resArcane.Value = InItem.Resistance.Arcane;

            //Spells
            spellId1.Value      = InItem.ItemSpells[0].ID;
            spellTrigger1.Value = InItem.ItemSpells[0].Trigger;
            spellCharges1.Value = InItem.ItemSpells[0].Charges;
            spellppm1.Value     = InItem.ItemSpells[0].PpmRate;
            spellcd1.Value      = InItem.ItemSpells[0].Cd;
            spellcat1.Value     = InItem.ItemSpells[0].Category;
            spellcatcd1.Value   = InItem.ItemSpells[0].CategoryID;
            spellId2.Value      = InItem.ItemSpells[1].ID;
            spellTrigger2.Value = InItem.ItemSpells[1].Trigger;
            spellCharges2.Value = InItem.ItemSpells[1].Charges;
            spellppm2.Value     = InItem.ItemSpells[1].PpmRate;
            spellcd2.Value      = InItem.ItemSpells[1].Cd;
            spellcat2.Value     = InItem.ItemSpells[1].Category;
            spellcatcd2.Value   = InItem.ItemSpells[1].CategoryID;
            spellId3.Value      = InItem.ItemSpells[2].ID;
            spellTrigger3.Value = InItem.ItemSpells[2].Trigger;
            spellCharges3.Value = InItem.ItemSpells[2].Charges;
            spellppm3.Value     = InItem.ItemSpells[2].PpmRate;
            spellcd3.Value      = InItem.ItemSpells[2].Cd;
            spellcat3.Value     = InItem.ItemSpells[2].Category;
            spellcatcd3.Value   = InItem.ItemSpells[2].CategoryID;
            spellId4.Value      = InItem.ItemSpells[3].ID;
            spellTrigger4.Value = InItem.ItemSpells[3].Trigger;
            spellCharges4.Value = InItem.ItemSpells[3].Charges;
            spellppm4.Value     = InItem.ItemSpells[3].PpmRate;
            spellcd4.Value      = InItem.ItemSpells[3].Cd;
            spellcat4.Value     = InItem.ItemSpells[3].Category;
            spellcatcd4.Value   = InItem.ItemSpells[3].CategoryID;
            spellId5.Value      = InItem.ItemSpells[4].ID;
            spellTrigger5.Value = InItem.ItemSpells[4].Trigger;
            spellCharges5.Value = InItem.ItemSpells[4].Charges;
            spellppm5.Value     = InItem.ItemSpells[4].PpmRate;
            spellcd5.Value      = InItem.ItemSpells[4].Cd;
            spellcat5.Value     = InItem.ItemSpells[4].Category;
            spellcatcd5.Value   = InItem.ItemSpells[4].CategoryID;

            ShowStaticStats(InItem);

            if (Spell.IsDictInitialized)
            {
                spellName1.Text = Spell.GetSpellName(InItem.ItemSpells[0].ID);
                spellName2.Text = Spell.GetSpellName(InItem.ItemSpells[1].ID);
                spellName3.Text = Spell.GetSpellName(InItem.ItemSpells[2].ID);
                spellName4.Text = Spell.GetSpellName(InItem.ItemSpells[3].ID);
                spellName5.Text = Spell.GetSpellName(InItem.ItemSpells[4].ID);
            }
            ShowItemMiniMutex = false;
        }

        private void ShowStaticStats(Item InItem)
        {
            ItemStat StatHolder = null;

            //strength
            StatHolder = InItem.SearchItemStatByType(ItemStatType.MOD_STRENGTH);
            if (StatHolder != null)
            {
                strengthValue.Value = StatHolder.Value;
            }
            else
            {
                strengthValue.Value = 0;
            }

            //agility
            StatHolder = InItem.SearchItemStatByType(ItemStatType.MOD_AGILITY);
            if (StatHolder != null)
            {
                agilityValue.Value = StatHolder.Value;
            }
            else
            {
                agilityValue.Value = 0;
            }

            //stamina
            StatHolder = InItem.SearchItemStatByType(ItemStatType.MOD_STAMINA);
            if (StatHolder != null)
            {
                staminaValue.Value = StatHolder.Value;
            }
            else
            {
                staminaValue.Value = 0;
            }

            //intellect
            StatHolder = InItem.SearchItemStatByType(ItemStatType.MOD_INTELLECT);
            if (StatHolder != null)
            {
                intellectValue.Value = StatHolder.Value;
            }
            else
            {
                intellectValue.Value = 0;
            }

            //spirit
            StatHolder = InItem.SearchItemStatByType(ItemStatType.MOD_SPIRIT);
            if (StatHolder != null)
            {
                spiritValue.Value = StatHolder.Value;
            }
            else
            {
                spiritValue.Value = 0;
            }

            //armor
            armorValue.Value = InItem.Armor;
        }

        private string GetUpdateSQLString()
        {
            string[] values = new string[]
            {
                _loadedEntry,
                StatTypeSelector1.SelectedIndex.ToString(),
                statValue1.Text,
                StatTypeSelector2.SelectedIndex.ToString(),
                statValue2.Text,
                StatTypeSelector3.SelectedIndex.ToString(),
                statValue3.Text,
                StatTypeSelector4.SelectedIndex.ToString(),
                statValue4.Text,
                StatTypeSelector5.SelectedIndex.ToString(),
                statValue5.Text,
                StatTypeSelector6.SelectedIndex.ToString(),
                statValue6.Text,
                StatTypeSelector7.SelectedIndex.ToString(),
                statValue7.Text,
                StatTypeSelector8.SelectedIndex.ToString(),
                statValue8.Text,
                StatTypeSelector9.SelectedIndex.ToString(),
                statValue9.Text,
                StatTypeSelector10.SelectedIndex.ToString(),
                statValue10.Text,
                dmgMin1.Text,
                dmgMax1.Text,
                dmgType1.Text,
                dmgMin2.Text,
                dmgMax2.Text,
                dmgType2.Text,
                dmgMin3.Text,
                dmgMax3.Text,
                dmgType3.Text,
                dmgMin4.Text,
                dmgMax4.Text,
                dmgType4.Text,
                dmgMin5.Text,
                dmgMax5.Text,
                dmgType5.Text,
                armor.Text,
                resHoly.Text,
                resFire.Text,
                resNature.Text,
                resFrost.Text,
                resShadow.Text,
                resArcane.Text,
                spellId1.Text,
                spellTrigger1.Text,
                spellCharges1.Text,
                spellppm1.Text,
                spellcd1.Text,
                spellcat1.Text,
                spellcatcd1.Text,
                spellId2.Text,
                spellTrigger2.Text,
                spellCharges2.Text,
                spellppm2.Text,
                spellcd2.Text,
                spellcat2.Text,
                spellcatcd2.Text,
                spellId3.Text,
                spellTrigger3.Text,
                spellCharges3.Text,
                spellppm3.Text,
                spellcd3.Text,
                spellcat3.Text,
                spellcatcd3.Text,
                spellId4.Text,
                spellTrigger4.Text,
                spellCharges4.Text,
                spellppm4.Text,
                spellcd4.Text,
                spellcat4.Text,
                spellcatcd4.Text,
                spellId5.Text,
                spellTrigger5.Text,
                spellCharges5.Text,
                spellppm5.Text,
                spellcd5.Text,
                spellcat5.Text,
                spellcatcd5.Text
            };
            string FinalSQLString = UpdateString(values);
            return FinalSQLString;
        }

        private string GetUpdateSQLString(Item item)
        {
            string FinalSQLString = "";

            string[] values =
            {
                item.ID.ToString(),

                ((int)(item.ItemStats[0].Type)).ToString(),
                item.ItemStats[0].Value.ToString(),
                ((int)(item.ItemStats[1].Type)).ToString(),
                item.ItemStats[1].Value.ToString(),
                ((int)(item.ItemStats[2].Type)).ToString(),
                item.ItemStats[2].Value.ToString(),
                ((int)(item.ItemStats[3].Type)).ToString(),
                item.ItemStats[3].Value.ToString(),
                ((int)(item.ItemStats[4].Type)).ToString(),
                item.ItemStats[4].Value.ToString(),
                ((int)(item.ItemStats[5].Type)).ToString(),
                item.ItemStats[5].Value.ToString(),
                ((int)(item.ItemStats[6].Type)).ToString(),
                item.ItemStats[6].Value.ToString(),
                ((int)(item.ItemStats[7].Type)).ToString(),
                item.ItemStats[7].Value.ToString(),
                ((int)(item.ItemStats[8].Type)).ToString(),
                item.ItemStats[8].Value.ToString(),
                ((int)(item.ItemStats[9].Type)).ToString(),
                item.ItemStats[9].Value.ToString(),

                item.ItemDamages[0].DamageMin.ToString(),
                item.ItemDamages[0].DamageMax.ToString(),
                item.ItemDamages[0].DamageType.ToString(),
                item.ItemDamages[1].DamageMin.ToString(),
                item.ItemDamages[1].DamageMax.ToString(),
                item.ItemDamages[1].DamageType.ToString(),
                item.ItemDamages[2].DamageMin.ToString(),
                item.ItemDamages[2].DamageMax.ToString(),
                item.ItemDamages[2].DamageType.ToString(),
                item.ItemDamages[3].DamageMin.ToString(),
                item.ItemDamages[3].DamageMax.ToString(),
                item.ItemDamages[3].DamageType.ToString(),
                item.ItemDamages[4].DamageMin.ToString(),
                item.ItemDamages[4].DamageMax.ToString(),
                item.ItemDamages[4].DamageType.ToString(),

                item.Armor.ToString(),

                item.Resistance.Holy.ToString(),
                item.Resistance.Fire.ToString(),
                item.Resistance.Nature.ToString(),
                item.Resistance.Frost.ToString(),
                item.Resistance.Shadow.ToString(),
                item.Resistance.Arcane.ToString(),

                item.ItemSpells[0].ID.ToString(),
                item.ItemSpells[0].Trigger.ToString(),
                item.ItemSpells[0].Charges.ToString(),
                item.ItemSpells[0].PpmRate.ToString(),
                item.ItemSpells[0].Cd.ToString(),
                item.ItemSpells[0].Category.ToString(),
                item.ItemSpells[0].CategoryID.ToString(),
                item.ItemSpells[1].ID.ToString(),
                item.ItemSpells[1].Trigger.ToString(),
                item.ItemSpells[1].Charges.ToString(),
                item.ItemSpells[1].PpmRate.ToString(),
                item.ItemSpells[1].Cd.ToString(),
                item.ItemSpells[1].Category.ToString(),
                item.ItemSpells[1].CategoryID.ToString(),
                item.ItemSpells[2].ID.ToString(),
                item.ItemSpells[2].Trigger.ToString(),
                item.ItemSpells[2].Charges.ToString(),
                item.ItemSpells[2].PpmRate.ToString(),
                item.ItemSpells[2].Cd.ToString(),
                item.ItemSpells[2].Category.ToString(),
                item.ItemSpells[2].CategoryID.ToString(),
                item.ItemSpells[3].ID.ToString(),
                item.ItemSpells[3].Trigger.ToString(),
                item.ItemSpells[3].Charges.ToString(),
                item.ItemSpells[3].PpmRate.ToString(),
                item.ItemSpells[3].Cd.ToString(),
                item.ItemSpells[3].Category.ToString(),
                item.ItemSpells[3].CategoryID.ToString(),
                item.ItemSpells[4].ID.ToString(),
                item.ItemSpells[4].Trigger.ToString(),
                item.ItemSpells[4].Charges.ToString(),
                item.ItemSpells[4].PpmRate.ToString(),
                item.ItemSpells[4].Cd.ToString(),
                item.ItemSpells[4].Category.ToString(),
                item.ItemSpells[4].CategoryID.ToString(),
            };

            FinalSQLString = UpdateString(values);

            return FinalSQLString;
        }

        private void buttonUpdate_Click_1(object sender, System.EventArgs e)
        {
            if (_loadedEntry == string.Empty)
            {
                return;
            }

            StringBuilder sb = new StringBuilder(CachedItems.Length * 120);

            for (int i = 0; i < CachedItems.Length; ++i)
            {
                sb.Append($"-- {CachedItems[i].Name} ID: {CachedItems[i].ID}\r\n");
                sb.Append (GetUpdateSQLString(CachedItems[i]));
                sb.Append("\r\n\r\n");
            }

            string FinalSQLString = sb.ToString();

            Form2 ShowingForm = new Form2(FinalSQLString);
            ShowingForm.Show();
        }

        private string UpdateString(string[] values)
        {
            return string.Concat(new string[]
            {
                "UPDATE `item_template` SET ",
                string.Format("`stat_type1` = {0}, `stat_value1` = {1}, ", values[1], values[2]),
                string.Format("`stat_type2` = {0}, `stat_value2` = {1}, ", values[3], values[4]),
                string.Format("`stat_type3` = {0}, `stat_value3` = {1}, ", values[5], values[6]),
                string.Format("`stat_type4` = {0}, `stat_value4` = {1}, ", values[7], values[8]),
                string.Format("`stat_type5` = {0}, `stat_value5` = {1}, ", values[9], values[10]),
                string.Format("`stat_type6` = {0}, `stat_value6` = {1}, ", values[11], values[12]),
                string.Format("`stat_type7` = {0}, `stat_value7` = {1}, ", values[13], values[14]),
                string.Format("`stat_type8` = {0}, `stat_value8` = {1}, ", values[15], values[16]),
                string.Format("`stat_type9` = {0}, `stat_value9` = {1}, ", values[17], values[18]),
                string.Format("`stat_type10` = {0}, `stat_value10` = {1}, ", values[19], values[20]),
                string.Format("`dmg_min1` = {0}, `dmg_max1` = {1}, `dmg_type1` = {2}, ", values[21], values[22], values[23]),
                string.Format("`dmg_min2` = {0}, `dmg_max2` = {1}, `dmg_type2` = {2}, ", values[24], values[25], values[26]),
                string.Format("`dmg_min3` = {0}, `dmg_max3` = {1}, `dmg_type3` = {2}, ", values[27], values[28], values[29]),
                string.Format("`dmg_min4` = {0}, `dmg_max4` = {1}, `dmg_type4` = {2}, ", values[30], values[31], values[32]),
                string.Format("`dmg_min5` = {0}, `dmg_max5` = {1}, `dmg_type5` = {2}, ", values[33], values[34], values[35]),
                string.Format("`armor` = {0}, ", values[36]),
                string.Format("`holy_res` = {0}, ", values[37]),
                string.Format("`fire_res` = {0}, ", values[38]),
                string.Format("`nature_res` = {0}, ", values[39]),
                string.Format("`frost_res` = {0}, ", values[40]),
                string.Format("`shadow_res` = {0}, ", values[41]),
                string.Format("`arcane_res` = {0}, ", values[41]),
                string.Format("`spellid_1` = {0}, `spelltrigger_1` = {1}, `spellcharges_1` = {2}, `spellppmRate_1` = {3}, `spellcooldown_1` = {4}, `spellcategory_1` = {5}, `spellcategorycooldown_1` = {6}, ", new object[]
                {
                    values[43],
                    values[44],
                    values[45],
                    values[46],
                    values[47],
                    values[48],
                    values[49]
                }),
                string.Format("`spellid_2` = {0}, `spelltrigger_2` = {1}, `spellcharges_2` = {2}, `spellppmRate_2` = {3}, `spellcooldown_2` = {4}, `spellcategory_2` = {5}, `spellcategorycooldown_2` = {6}, ", new object[]
                {
                    values[50],
                    values[51],
                    values[52],
                    values[53],
                    values[54],
                    values[55],
                    values[56]
                }),
                string.Format("`spellid_3` = {0}, `spelltrigger_3` = {1}, `spellcharges_3` = {2}, `spellppmRate_3` = {3}, `spellcooldown_3` = {4}, `spellcategory_3` = {5}, `spellcategorycooldown_3` = {6}, ", new object[]
                {
                    values[57],
                    values[58],
                    values[59],
                    values[60],
                    values[61],
                    values[62],
                    values[63]
                }),
                string.Format("`spellid_4` = {0}, `spelltrigger_4` = {1}, `spellcharges_4` = {2}, `spellppmRate_4` = {3}, `spellcooldown_4` = {4}, `spellcategory_4` = {5}, `spellcategorycooldown_4` = {6}, ", new object[]
                {
                    values[64],
                    values[65],
                    values[66],
                    values[67],
                    values[68],
                    values[69],
                    values[70]
                }),
                string.Format("`spellid_5` = {0}, `spelltrigger_5` = {1}, `spellcharges_5` = {2}, `spellppmRate_5` = {3}, `spellcooldown_5` = {4}, `spellcategory_5` = {5}, `spellcategorycooldown_5` = {6}", new object[]
                {
                    values[71],
                    values[72],
                    values[73],
                    values[74],
                    values[75],
                    values[76],
                    values[77]
                }),
                string.Format(" WHERE `entry` = {0};", values[0])
            });
        }

        private void itemEntry_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                buttonLoad_Click_1(null, null);
            }
        }

        private void ItemGoBackBtn_Click(object sender, EventArgs e)
        {
            int OverallIndexesSize = TargetIDs.Length;

            int NextIndex = CurrentItemIndex - 1;
            if (NextIndex < 1)
            {
                NextIndex = OverallIndexesSize;
            }

            CurrentItemIndex = NextIndex;

            ShowItem(CachedItems[CurrentItemIndex - 1]);
            UpdateItemIndexTxtBoxs();
        }

        private void ItemGoForwardBtn_Click(object sender, EventArgs e)
        {
            int OverallIndexesSize = TargetIDs.Length;

            int NextIndex = CurrentItemIndex + 1;
            if (NextIndex > OverallIndexesSize)
            {
                NextIndex = 1;
            }

            CurrentItemIndex = NextIndex;

            ShowItem(CachedItems[CurrentItemIndex - 1]);
            UpdateItemIndexTxtBoxs();
        }

        private void OnItemStatChanged (ItemStatType Type, int Value)
        {
            Item TargetItem = CachedItems[CurrentItemIndex - 1];

            ItemStat TargetItemStat = TargetItem.SearchItemStatByType(Type);

            //create
            if (TargetItemStat == null && Value > 0)
            {
                ItemStat StatContainer = TargetItem.GetFirstEmptyStat();
                if (StatContainer == null)
                {
                    MessageBox.Show("Items hold too many stats, delete one of them!", "Error");
                    return;
                }

                StatContainer.Type = Type;
                StatContainer.Value = Value;

                ShowItem(TargetItem);
                return;
            }

            //delete
            if (TargetItemStat != null && Value == 0)
            {
                TargetItemStat.Type = ItemStatType.MOD_NONE;
                TargetItemStat.Value = 0;
                TargetItem.SortStats();

                ShowItem(TargetItem);
                return;
            }

            //modify
            if (TargetItemStat != null)
            {
                TargetItemStat.Value = Value;

                ShowItem(TargetItem);
                return;
            }
        }

        private void strengthValue_ValueChanged(object sender, EventArgs e)
        {
            OnItemStatChanged(ItemStatType.MOD_STRENGTH, Convert.ToInt32(strengthValue.Value));
        }

        private void agilityValue_ValueChanged(object sender, EventArgs e)
        {
            OnItemStatChanged(ItemStatType.MOD_AGILITY, Convert.ToInt32(agilityValue.Value));
        }

        private void staminaValue_ValueChanged(object sender, EventArgs e)
        {
            OnItemStatChanged(ItemStatType.MOD_STAMINA, Convert.ToInt32(staminaValue.Value));
        }

        private void intellectValue_ValueChanged(object sender, EventArgs e)
        {
            OnItemStatChanged(ItemStatType.MOD_INTELLECT, Convert.ToInt32(intellectValue.Value));
        }

        private void spiritValue_ValueChanged(object sender, EventArgs e)
        {
            OnItemStatChanged(ItemStatType.MOD_SPIRIT, Convert.ToInt32(spiritValue.Value));
        }

        private void armorValue_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].Armor = Convert.ToInt32(armorValue.Value);
            ShowItem(CachedItems[CurrentItemIndex - 1]);
        }

        private void spellName1_TextChanged(object sender, EventArgs e)
        {
            // don't update spell id based on text while loading item
            if (ShowItemMiniMutex) return;

            spellId1.Value = Spell.GetSpellID(spellName1.Text);
        }

        private void spellName2_TextChanged(object sender, EventArgs e)
        {
            // don't update spell id based on text while loading item
            if (ShowItemMiniMutex) return;
            spellId2.Value = Spell.GetSpellID(spellName2.Text);
        }

        private void spellName3_TextChanged(object sender, EventArgs e)
        {
            // don't update spell id based on text while loading item
            if (ShowItemMiniMutex) return;
            spellId3.Value = Spell.GetSpellID(spellName3.Text);
        }

        private void spellName4_TextChanged(object sender, EventArgs e)
        {
            // don't update spell id based on text while loading item
            if (ShowItemMiniMutex) return;
            spellId4.Value = Spell.GetSpellID(spellName4.Text);
        }

        private void spellName5_TextChanged(object sender, EventArgs e)
        {
            // don't update spell id based on text while loading item
            if (ShowItemMiniMutex) return;
            spellId5.Value = Spell.GetSpellID(spellName5.Text);
        }

        private void spellId1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].ID = Convert.ToInt32(spellId1.Value);
        }

        private void spellId2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].ID = Convert.ToInt32(spellId2.Value);
        }

        private void spellId3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].ID = Convert.ToInt32(spellId3.Value);
        }

        private void spellId4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].ID = Convert.ToInt32(spellId4.Value);
        }

        private void spellId5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].ID = Convert.ToInt32(spellId5.Value);
        }

        private void spellTrigger1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].Trigger = Convert.ToInt32(spellTrigger1.Value);
        }

        private void spellTrigger2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].Trigger = Convert.ToInt32(spellTrigger2.Value);
        }

        private void spellTrigger3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].Trigger = Convert.ToInt32(spellTrigger3.Value);
        }

        private void spellTrigger4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].Trigger = Convert.ToInt32(spellTrigger4.Value);
        }

        private void spellTrigger5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].Trigger = Convert.ToInt32(spellTrigger5.Value);
        }

        private void spellCharges1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].Charges = Convert.ToInt32(spellCharges1.Value);
        }

        private void spellCharges2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].Charges = Convert.ToInt32(spellCharges2.Value);
        }

        private void spellCharges3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].Charges = Convert.ToInt32(spellCharges3.Value);
        }

        private void spellCharges4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].Charges = Convert.ToInt32(spellCharges4.Value);
        }

        private void spellCharges5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].Charges = Convert.ToInt32(spellCharges5.Value);
        }

        private void spellppm1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].PpmRate = Convert.ToInt32(spellppm1.Value);
        }

        private void spellppm2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].PpmRate = Convert.ToInt32(spellppm2.Value);
        }

        private void spellppm3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].PpmRate = Convert.ToInt32(spellppm3.Value);
        }

        private void spellppm4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].PpmRate = Convert.ToInt32(spellppm4.Value);
        }

        private void spellppm5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].PpmRate = Convert.ToInt32(spellppm5.Value);
        }

        private void spellcd1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].Cd = Convert.ToInt32(spellcd1.Value);
        }

        private void spellcd2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].Cd = Convert.ToInt32(spellcd2.Value);
        }

        private void spellcd3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].Cd = Convert.ToInt32(spellcd3.Value);
        }

        private void spellcd4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].Cd = Convert.ToInt32(spellcd4.Value);
        }

        private void spellcd5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].Cd = Convert.ToInt32(spellcd5.Value);
        }

        private void spellcat1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].Category = Convert.ToInt32(spellcat1.Value);
        }

        private void spellcat2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].Category = Convert.ToInt32(spellcat2.Value);
        }

        private void spellcat3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].Category = Convert.ToInt32(spellcat3.Value);
        }

        private void spellcat4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].Category = Convert.ToInt32(spellcat4.Value);
        }

        private void spellcat5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].Category = Convert.ToInt32(spellcat5.Value);
        }

        private void spellcatcd1_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[0].CategoryID = Convert.ToInt32(spellcatcd1.Value);
        }

        private void spellcatcd2_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[1].CategoryID = Convert.ToInt32(spellcatcd2.Value);
        }

        private void spellcatcd3_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[2].CategoryID = Convert.ToInt32(spellcatcd3.Value);
        }

        private void spellcatcd4_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[3].CategoryID = Convert.ToInt32(spellcatcd4.Value);
        }

        private void spellcatcd5_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].ItemSpells[4].CategoryID = Convert.ToInt32(spellcatcd5.Value);
        }

        private void StatTypeSelector1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector1.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[0].Type = NewItemType;
                statValue1.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[0].Type = NewItemType;
            //don't invoke general update - this probably invoke several value event handlers, that don't like empty stats
        }

        private void StatTypeSelector2_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector2.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[1].Type = NewItemType;
                statValue2.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[1].Type = NewItemType;
        }

        private void StatTypeSelector3_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector3.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[2].Type = NewItemType;
                statValue3.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[2].Type = NewItemType;
        }

        private void StatTypeSelector4_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector4.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[3].Type = NewItemType;
                statValue4.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[3].Type = NewItemType;
        }

        private void StatTypeSelector5_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector5.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[4].Type = NewItemType;
                statValue5.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[4].Type = NewItemType;
        }

        private void StatTypeSelector6_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector6.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[5].Type = NewItemType;
                statValue6.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[5].Type = NewItemType;
        }

        private void StatTypeSelector7_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector7.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[6].Type = NewItemType;
                statValue7.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[6].Type = NewItemType;
        }

        private void StatTypeSelector8_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector8.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[7].Type = NewItemType;
                statValue8.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[7].Type = NewItemType;
        }

        private void StatTypeSelector9_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector9.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[8].Type = NewItemType;
                statValue9.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[8].Type = NewItemType;
        }

        private void StatTypeSelector10_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemStatType NewItemType = (ItemStatType)StatTypeSelector10.SelectedIndex;
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];

            //delete
            if (NewItemType == ItemStatType.MOD_NONE)
            {
                //apply to cache
                CurrentItem.ItemStats[9].Type = NewItemType;
                statValue10.Value = 0;

                CurrentItem.SortStats();
                ShowItem(CurrentItem);
                return;
            }

            //create or modify
            CurrentItem.ItemStats[9].Type = NewItemType;
        }

        private void statValue1_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[0].Value = Convert.ToInt32 (statValue1.Value);
            ShowItem(CurrentItem);
        }

        private void statValue2_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[1].Value = Convert.ToInt32(statValue2.Value);
            ShowItem(CurrentItem);
        }

        private void statValue3_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[2].Value = Convert.ToInt32(statValue3.Value);
            ShowItem(CurrentItem);
        }

        private void statValue4_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[3].Value = Convert.ToInt32(statValue4.Value);
            ShowItem(CurrentItem);
        }

        private void statValue5_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[4].Value = Convert.ToInt32(statValue5.Value);
            ShowItem(CurrentItem);
        }

        private void statValue6_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[5].Value = Convert.ToInt32(statValue6.Value);
            ShowItem(CurrentItem);
        }

        private void statValue7_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[6].Value = Convert.ToInt32(statValue7.Value);
            ShowItem(CurrentItem);
        }

        private void statValue8_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[7].Value = Convert.ToInt32(statValue8.Value);
            ShowItem(CurrentItem);
        }

        private void statValue9_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[8].Value = Convert.ToInt32(statValue9.Value);
            ShowItem(CurrentItem);
        }

        private void statValue10_ValueChanged(object sender, EventArgs e)
        {
            Item CurrentItem = CachedItems[CurrentItemIndex - 1];
            CurrentItem.ItemStats[9].Value = Convert.ToInt32(statValue10.Value);
            ShowItem(CurrentItem);
        }

        private void armor_ValueChanged(object sender, EventArgs e)
        {
            CachedItems[CurrentItemIndex - 1].Armor = Convert.ToInt32(armor.Value);

            ShowItem(CachedItems[CurrentItemIndex - 1]);
        }
    }
}
