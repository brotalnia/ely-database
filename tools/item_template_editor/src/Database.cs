using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;

namespace ItemTemplateCreator
{
    public static class Database
    {

        // Token: 0x06000001 RID: 1 RVA: 0x00002050 File Offset: 0x00000250
        public static bool Connect(string host, string db, string pwd, string login)
        {
            bool result;
            try
            {
                string connectionString = string.Format("server={0};uid={1};pwd={2};database={3};", new object[]
                {
                    host,
                    login,
                    pwd,
                    db
                });
                Database._connection = new MySqlConnection
                {
                    ConnectionString = connectionString
                };
                Database._connection.Open();
                result = true;
            }
            catch (MySqlException arg_40_0)
            {
                MessageBox.Show(arg_40_0.Message);
                result = false;
            }
            return result;
        }

        // Token: 0x06000002 RID: 2 RVA: 0x000020C0 File Offset: 0x000002C0
        public static bool Connect(string connectionString)
        {
            bool result;
            try
            {
                Database._connection = new MySqlConnection
                {
                    ConnectionString = connectionString
                };
                Database._connection.Open();
                result = true;
            }
            catch (MySqlException arg_1F_0)
            {
                MessageBox.Show(arg_1F_0.Message);
                result = false;
            }
            return result;
        }

        // Token: 0x06000003 RID: 3 RVA: 0x0000210C File Offset: 0x0000030C
        public static void Disconnect()
        {
            MySqlConnection expr_05 = Database._connection;
            if (expr_05 != null && expr_05.State == ConnectionState.Open)
            {
                Database._connection.Close();
            }
        }

        // Token: 0x06000004 RID: 4 RVA: 0x00002130 File Offset: 0x00000330
        public static DataTable Select(string body, string param)
        {
            DataTable result;
            try
            {
                using (MySqlCommand mySqlCommand = new MySqlCommand(body, Database._connection))
                {
                    mySqlCommand.Parameters.AddWithValue("@value0", param);
                    DataTable dataTable = new DataTable();
                    using (MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(mySqlCommand))
                    {
                        mySqlDataAdapter.Fill(dataTable);
                        result = dataTable;
                    }
                }
            }
            catch (Exception arg_4B_0)
            {
                MessageBox.Show(arg_4B_0.Message);
                result = null;
            }
            return result;
        }

        // Token: 0x06000005 RID: 5 RVA: 0x000021C0 File Offset: 0x000003C0
        public static int Update(string body, string[] values)
        {
            int result;
            try
            {
                using (MySqlCommand mySqlCommand = new MySqlCommand(body, Database._connection))
                {
                    mySqlCommand.Parameters.AddWithValue("@value0", values[0]);
                    for (uint num = 1u; num < 78u; num += 1u)
                    {
                        mySqlCommand.Parameters.AddWithValue("@value" + num, values[(int)num]);
                    }
                    result = mySqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception arg_5F_0)
            {
                MessageBox.Show(arg_5F_0.Message);
                result = -1;
            }
            return result;
        }

        // Token: 0x06000006 RID: 6 RVA: 0x00002258 File Offset: 0x00000458
        public static DataTable Select(string body)
        {
            DataTable result;
            try
            {
                using (MySqlCommand mySqlCommand = new MySqlCommand(body, Database._connection))
                {
                    DataTable dataTable = new DataTable();
                    using (MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(mySqlCommand))
                    {
                        mySqlDataAdapter.Fill(dataTable);
                        result = dataTable;
                    }
                }
            }
            catch (Exception arg_39_0)
            {
                MessageBox.Show(arg_39_0.Message);
                result = null;
            }
            return result;
        }

        // Token: 0x04000001 RID: 1
        private static MySqlConnection _connection;

        // Token: 0x04000002 RID: 2
        public static readonly string SelectItem = "SELECT * FROM `item_template` WHERE `entry` = @value0 LIMIT 1;";

        // Token: 0x04000003 RID: 3
        public static readonly string UpdateItem = "UPDATE `item_template` SET `stat_type1` = @value1, `stat_value1` = @value2, `stat_type2` = @value3, `stat_value2` = @value4, `stat_type3` = @value5, `stat_value3` = @value6, `stat_type4` = @value7, `stat_value4` = @value8, `stat_type5` = @value9, `stat_value5` = @value10, `stat_type6` = @value11, `stat_value6` = @value12, `stat_type7` = @value13, `stat_value7` = @value14, `stat_type8` = @value15, `stat_value8` = @value16, `stat_type9` = @value17, `stat_value9` = @value18, `stat_type10` = @value19, `stat_value10` = @value20, `dmg_min1` = @value21, `dmg_max1` = @value22, `dmg_type1` = @value23, `dmg_min2` = @value24, `dmg_max2` = @value25, `dmg_type2` = @value26, `dmg_min3` = @value27, `dmg_max3` = @value28, `dmg_type3` = @value29, `dmg_min4` = @value30, `dmg_max4` = @value31, `dmg_type4` = @value32, `dmg_min5` = @value33, `dmg_max5` = @value34, `dmg_type5` = @value35, `armor` = @value36, `holy_res` = @value37, `fire_res` = @value38, `nature_res` = @value39, `frost_res` = @value40, `shadow_res` = @value41, `arcane_res` = @value42, `spellid_1` = @value43, `spelltrigger_1` = @value44, `spellcharges_1` = @value45, `spellppmRate_1` = @value46, `spellcooldown_1` = @value47, `spellcategory_1` = @value48, `spellcategorycooldown_1` = @value49, `spellid_2` = @value50, `spelltrigger_2` = @value51, `spellcharges_2` = @value52, `spellppmRate_2` = @value53, `spellcooldown_2` = @value54, `spellcategory_2` = @value55, `spellcategorycooldown_2` = @value56, `spellid_3` = @value57, `spelltrigger_3` = @value58, `spellcharges_3` = @value59, `spellppmRate_3` = @value60, `spellcooldown_3` = @value61, `spellcategory_3` = @value62, `spellcategorycooldown_3` = @value63, `spellid_4` = @value64, `spelltrigger_4` = @value65, `spellcharges_4` = @value66, `spellppmRate_4` = @value67, `spellcooldown_4` = @value68, `spellcategory_4` = @value69, `spellcategorycooldown_4` = @value70, `spellid_5` = @value71, `spelltrigger_5` = @value72, `spellcharges_5` = @value73, `spellppmRate_5` = @value74, `spellcooldown_5` = @value75, `spellcategory_5` = @value76, `spellcategorycooldown_5` = @value77 WHERE `entry` = @value0;";
    }
}
