using System.Drawing;
using System.Windows.Forms;

namespace ItemTemplateCreator
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.tbHost = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tbDatabase = new System.Windows.Forms.TextBox();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.tbLogin = new System.Windows.Forms.TextBox();
            this.labelStatus = new System.Windows.Forms.Label();
            this.buttonDisconnect = new System.Windows.Forms.Button();
            this.buttonConnect = new System.Windows.Forms.Button();
            this.groupBoxAll = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.armorValue = new System.Windows.Forms.NumericUpDown();
            this.spiritValue = new System.Windows.Forms.NumericUpDown();
            this.intellectValue = new System.Windows.Forms.NumericUpDown();
            this.staminaValue = new System.Windows.Forms.NumericUpDown();
            this.agilityValue = new System.Windows.Forms.NumericUpDown();
            this.strengthValue = new System.Windows.Forms.NumericUpDown();
            this.label18 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.spellName5 = new System.Windows.Forms.ComboBox();
            this.spellName4 = new System.Windows.Forms.ComboBox();
            this.spellName3 = new System.Windows.Forms.ComboBox();
            this.spellName2 = new System.Windows.Forms.ComboBox();
            this.spellName1 = new System.Windows.Forms.ComboBox();
            this.label19 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.spellcatcd5 = new System.Windows.Forms.NumericUpDown();
            this.spellcatcd4 = new System.Windows.Forms.NumericUpDown();
            this.spellcatcd3 = new System.Windows.Forms.NumericUpDown();
            this.spellcatcd2 = new System.Windows.Forms.NumericUpDown();
            this.spellcatcd1 = new System.Windows.Forms.NumericUpDown();
            this.spellcat5 = new System.Windows.Forms.NumericUpDown();
            this.spellcat4 = new System.Windows.Forms.NumericUpDown();
            this.spellcat3 = new System.Windows.Forms.NumericUpDown();
            this.spellcat2 = new System.Windows.Forms.NumericUpDown();
            this.spellcat1 = new System.Windows.Forms.NumericUpDown();
            this.spellppm5 = new System.Windows.Forms.NumericUpDown();
            this.spellcd5 = new System.Windows.Forms.NumericUpDown();
            this.spellppm4 = new System.Windows.Forms.NumericUpDown();
            this.spellcd4 = new System.Windows.Forms.NumericUpDown();
            this.spellppm3 = new System.Windows.Forms.NumericUpDown();
            this.spellcd3 = new System.Windows.Forms.NumericUpDown();
            this.spellppm2 = new System.Windows.Forms.NumericUpDown();
            this.spellcd2 = new System.Windows.Forms.NumericUpDown();
            this.spellppm1 = new System.Windows.Forms.NumericUpDown();
            this.spellcd1 = new System.Windows.Forms.NumericUpDown();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.spellCharges5 = new System.Windows.Forms.NumericUpDown();
            this.spellCharges4 = new System.Windows.Forms.NumericUpDown();
            this.spellCharges3 = new System.Windows.Forms.NumericUpDown();
            this.spellCharges2 = new System.Windows.Forms.NumericUpDown();
            this.spellCharges1 = new System.Windows.Forms.NumericUpDown();
            this.spellId5 = new System.Windows.Forms.NumericUpDown();
            this.spellTrigger5 = new System.Windows.Forms.NumericUpDown();
            this.textBox24 = new System.Windows.Forms.TextBox();
            this.spellId4 = new System.Windows.Forms.NumericUpDown();
            this.spellTrigger4 = new System.Windows.Forms.NumericUpDown();
            this.textBox25 = new System.Windows.Forms.TextBox();
            this.spellId3 = new System.Windows.Forms.NumericUpDown();
            this.spellTrigger3 = new System.Windows.Forms.NumericUpDown();
            this.textBox26 = new System.Windows.Forms.TextBox();
            this.spellId2 = new System.Windows.Forms.NumericUpDown();
            this.spellTrigger2 = new System.Windows.Forms.NumericUpDown();
            this.textBox27 = new System.Windows.Forms.TextBox();
            this.spellId1 = new System.Windows.Forms.NumericUpDown();
            this.spellTrigger1 = new System.Windows.Forms.NumericUpDown();
            this.textBox29 = new System.Windows.Forms.TextBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.textBox18 = new System.Windows.Forms.TextBox();
            this.textBox17 = new System.Windows.Forms.TextBox();
            this.textBox16 = new System.Windows.Forms.TextBox();
            this.textBox15 = new System.Windows.Forms.TextBox();
            this.textBox14 = new System.Windows.Forms.TextBox();
            this.resArcane = new System.Windows.Forms.NumericUpDown();
            this.resShadow = new System.Windows.Forms.NumericUpDown();
            this.resFrost = new System.Windows.Forms.NumericUpDown();
            this.resNature = new System.Windows.Forms.NumericUpDown();
            this.resFire = new System.Windows.Forms.NumericUpDown();
            this.resHoly = new System.Windows.Forms.NumericUpDown();
            this.textBox28 = new System.Windows.Forms.TextBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dmgMax5 = new System.Windows.Forms.NumericUpDown();
            this.dmgMax4 = new System.Windows.Forms.NumericUpDown();
            this.dmgMax3 = new System.Windows.Forms.NumericUpDown();
            this.dmgMax2 = new System.Windows.Forms.NumericUpDown();
            this.dmgMax1 = new System.Windows.Forms.NumericUpDown();
            this.dmgType5 = new System.Windows.Forms.NumericUpDown();
            this.dmgMin5 = new System.Windows.Forms.NumericUpDown();
            this.textBox19 = new System.Windows.Forms.TextBox();
            this.dmgType4 = new System.Windows.Forms.NumericUpDown();
            this.dmgMin4 = new System.Windows.Forms.NumericUpDown();
            this.textBox20 = new System.Windows.Forms.TextBox();
            this.dmgType3 = new System.Windows.Forms.NumericUpDown();
            this.dmgMin3 = new System.Windows.Forms.NumericUpDown();
            this.textBox21 = new System.Windows.Forms.TextBox();
            this.dmgType2 = new System.Windows.Forms.NumericUpDown();
            this.dmgMin2 = new System.Windows.Forms.NumericUpDown();
            this.textBox22 = new System.Windows.Forms.TextBox();
            this.dmgType1 = new System.Windows.Forms.NumericUpDown();
            this.dmgMin1 = new System.Windows.Forms.NumericUpDown();
            this.textBox23 = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.StatTypeSelector10 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector9 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector8 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector7 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector6 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector5 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector4 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector3 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector2 = new System.Windows.Forms.ComboBox();
            this.StatTypeSelector1 = new System.Windows.Forms.ComboBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.armor = new System.Windows.Forms.NumericUpDown();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.statValue10 = new System.Windows.Forms.NumericUpDown();
            this.textBox13 = new System.Windows.Forms.TextBox();
            this.statValue9 = new System.Windows.Forms.NumericUpDown();
            this.textBox12 = new System.Windows.Forms.TextBox();
            this.statValue8 = new System.Windows.Forms.NumericUpDown();
            this.textBox11 = new System.Windows.Forms.TextBox();
            this.statValue7 = new System.Windows.Forms.NumericUpDown();
            this.textBox10 = new System.Windows.Forms.TextBox();
            this.statValue6 = new System.Windows.Forms.NumericUpDown();
            this.textBox9 = new System.Windows.Forms.TextBox();
            this.statValue5 = new System.Windows.Forms.NumericUpDown();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.statValue4 = new System.Windows.Forms.NumericUpDown();
            this.textBox7 = new System.Windows.Forms.TextBox();
            this.statValue3 = new System.Windows.Forms.NumericUpDown();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.statValue2 = new System.Windows.Forms.NumericUpDown();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.statValue1 = new System.Windows.Forms.NumericUpDown();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.groupItem = new System.Windows.Forms.GroupBox();
            this.itemEntry = new System.Windows.Forms.NumericUpDown();
            this.buttonUpdate = new System.Windows.Forms.Button();
            this.tbName = new System.Windows.Forms.TextBox();
            this.buttonClear = new System.Windows.Forms.Button();
            this.buttonLoad = new System.Windows.Forms.Button();
            this.ActualItemIndexTxt = new System.Windows.Forms.TextBox();
            this.UpperRangeTxt = new System.Windows.Forms.TextBox();
            this.ItemGoBackBtn = new System.Windows.Forms.Button();
            this.ItemGoForwardBtn = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBoxAll.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.armorValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spiritValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.intellectValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.staminaValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.agilityValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.strengthValue)).BeginInit();
            this.groupBox7.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger1)).BeginInit();
            this.groupBox6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.resArcane)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.resShadow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.resFrost)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.resNature)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.resFire)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.resHoly)).BeginInit();
            this.groupBox5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin1)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.armor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue10)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue9)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue1)).BeginInit();
            this.groupItem.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.itemEntry)).BeginInit();
            this.SuspendLayout();
            // 
            // tbHost
            // 
            this.tbHost.Location = new System.Drawing.Point(6, 20);
            this.tbHost.Name = "tbHost";
            this.tbHost.Size = new System.Drawing.Size(142, 20);
            this.tbHost.TabIndex = 0;
            this.tbHost.Text = "localhost";
            this.tbHost.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.tbDatabase);
            this.groupBox1.Controls.Add(this.tbPassword);
            this.groupBox1.Controls.Add(this.tbLogin);
            this.groupBox1.Controls.Add(this.labelStatus);
            this.groupBox1.Controls.Add(this.buttonDisconnect);
            this.groupBox1.Controls.Add(this.buttonConnect);
            this.groupBox1.Controls.Add(this.tbHost);
            this.groupBox1.Location = new System.Drawing.Point(317, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(444, 83);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Connection";
            // 
            // tbDatabase
            // 
            this.tbDatabase.Location = new System.Drawing.Point(6, 48);
            this.tbDatabase.Name = "tbDatabase";
            this.tbDatabase.Size = new System.Drawing.Size(142, 20);
            this.tbDatabase.TabIndex = 62;
            this.tbDatabase.Text = "mangos0";
            this.tbDatabase.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tbPassword
            // 
            this.tbPassword.Location = new System.Drawing.Point(154, 48);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.PasswordChar = '#';
            this.tbPassword.Size = new System.Drawing.Size(155, 20);
            this.tbPassword.TabIndex = 61;
            this.tbPassword.Text = "3454";
            this.tbPassword.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tbLogin
            // 
            this.tbLogin.Location = new System.Drawing.Point(154, 20);
            this.tbLogin.Name = "tbLogin";
            this.tbLogin.Size = new System.Drawing.Size(155, 20);
            this.tbLogin.TabIndex = 60;
            this.tbLogin.Text = "root";
            this.tbLogin.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // labelStatus
            // 
            this.labelStatus.AutoSize = true;
            this.labelStatus.ForeColor = System.Drawing.Color.Red;
            this.labelStatus.Location = new System.Drawing.Point(319, 54);
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(14, 13);
            this.labelStatus.TabIndex = 59;
            this.labelStatus.Text = "#";
            // 
            // buttonDisconnect
            // 
            this.buttonDisconnect.Enabled = false;
            this.buttonDisconnect.Location = new System.Drawing.Point(340, 46);
            this.buttonDisconnect.Name = "buttonDisconnect";
            this.buttonDisconnect.Size = new System.Drawing.Size(98, 31);
            this.buttonDisconnect.TabIndex = 2;
            this.buttonDisconnect.Text = "Disconnect";
            this.buttonDisconnect.UseVisualStyleBackColor = true;
            this.buttonDisconnect.Click += new System.EventHandler(this.buttonDisconnect_Click_1);
            // 
            // buttonConnect
            // 
            this.buttonConnect.Location = new System.Drawing.Point(316, 12);
            this.buttonConnect.Name = "buttonConnect";
            this.buttonConnect.Size = new System.Drawing.Size(122, 31);
            this.buttonConnect.TabIndex = 1;
            this.buttonConnect.Text = "Connect";
            this.buttonConnect.UseVisualStyleBackColor = true;
            this.buttonConnect.Click += new System.EventHandler(this.buttonConnect_Click_1);
            // 
            // groupBoxAll
            // 
            this.groupBoxAll.Controls.Add(this.groupBox2);
            this.groupBoxAll.Controls.Add(this.groupBox7);
            this.groupBoxAll.Controls.Add(this.groupBox6);
            this.groupBoxAll.Controls.Add(this.groupBox5);
            this.groupBoxAll.Controls.Add(this.groupBox4);
            this.groupBoxAll.Enabled = false;
            this.groupBoxAll.Location = new System.Drawing.Point(12, 101);
            this.groupBoxAll.Name = "groupBoxAll";
            this.groupBoxAll.Size = new System.Drawing.Size(992, 404);
            this.groupBoxAll.TabIndex = 2;
            this.groupBoxAll.TabStop = false;
            this.groupBoxAll.Text = "Item";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.armorValue);
            this.groupBox2.Controls.Add(this.spiritValue);
            this.groupBox2.Controls.Add(this.intellectValue);
            this.groupBox2.Controls.Add(this.staminaValue);
            this.groupBox2.Controls.Add(this.agilityValue);
            this.groupBox2.Controls.Add(this.strengthValue);
            this.groupBox2.Controls.Add(this.label18);
            this.groupBox2.Controls.Add(this.label17);
            this.groupBox2.Controls.Add(this.label16);
            this.groupBox2.Controls.Add(this.label15);
            this.groupBox2.Controls.Add(this.label14);
            this.groupBox2.Controls.Add(this.label13);
            this.groupBox2.Location = new System.Drawing.Point(330, 203);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(136, 192);
            this.groupBox2.TabIndex = 36;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Static Stats";
            // 
            // armorValue
            // 
            this.armorValue.Location = new System.Drawing.Point(68, 165);
            this.armorValue.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this.armorValue.Name = "armorValue";
            this.armorValue.Size = new System.Drawing.Size(52, 20);
            this.armorValue.TabIndex = 11;
            this.armorValue.ValueChanged += new System.EventHandler(this.armorValue_ValueChanged);
            // 
            // spiritValue
            // 
            this.spiritValue.Location = new System.Drawing.Point(68, 138);
            this.spiritValue.Name = "spiritValue";
            this.spiritValue.Size = new System.Drawing.Size(52, 20);
            this.spiritValue.TabIndex = 10;
            this.spiritValue.ValueChanged += new System.EventHandler(this.spiritValue_ValueChanged);
            // 
            // intellectValue
            // 
            this.intellectValue.Location = new System.Drawing.Point(68, 112);
            this.intellectValue.Name = "intellectValue";
            this.intellectValue.Size = new System.Drawing.Size(52, 20);
            this.intellectValue.TabIndex = 9;
            this.intellectValue.ValueChanged += new System.EventHandler(this.intellectValue_ValueChanged);
            // 
            // staminaValue
            // 
            this.staminaValue.Location = new System.Drawing.Point(68, 86);
            this.staminaValue.Name = "staminaValue";
            this.staminaValue.Size = new System.Drawing.Size(52, 20);
            this.staminaValue.TabIndex = 8;
            this.staminaValue.ValueChanged += new System.EventHandler(this.staminaValue_ValueChanged);
            // 
            // agilityValue
            // 
            this.agilityValue.Location = new System.Drawing.Point(68, 60);
            this.agilityValue.Name = "agilityValue";
            this.agilityValue.Size = new System.Drawing.Size(52, 20);
            this.agilityValue.TabIndex = 7;
            this.agilityValue.ValueChanged += new System.EventHandler(this.agilityValue_ValueChanged);
            // 
            // strengthValue
            // 
            this.strengthValue.Location = new System.Drawing.Point(68, 34);
            this.strengthValue.Name = "strengthValue";
            this.strengthValue.Size = new System.Drawing.Size(52, 20);
            this.strengthValue.TabIndex = 6;
            this.strengthValue.ValueChanged += new System.EventHandler(this.strengthValue_ValueChanged);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(15, 165);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(34, 13);
            this.label18.TabIndex = 5;
            this.label18.Text = "Armor";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(15, 142);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(30, 13);
            this.label17.TabIndex = 4;
            this.label17.Text = "Spirit";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(15, 114);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(44, 13);
            this.label16.TabIndex = 3;
            this.label16.Text = "Intellect";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(15, 89);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(45, 13);
            this.label15.TabIndex = 2;
            this.label15.Text = "Stamina";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(15, 63);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(34, 13);
            this.label14.TabIndex = 1;
            this.label14.Text = "Agility";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(15, 37);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(47, 13);
            this.label13.TabIndex = 0;
            this.label13.Text = "Strength";
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.spellName5);
            this.groupBox7.Controls.Add(this.spellName4);
            this.groupBox7.Controls.Add(this.spellName3);
            this.groupBox7.Controls.Add(this.spellName2);
            this.groupBox7.Controls.Add(this.spellName1);
            this.groupBox7.Controls.Add(this.label19);
            this.groupBox7.Controls.Add(this.label12);
            this.groupBox7.Controls.Add(this.label11);
            this.groupBox7.Controls.Add(this.label10);
            this.groupBox7.Controls.Add(this.label9);
            this.groupBox7.Controls.Add(this.spellcatcd5);
            this.groupBox7.Controls.Add(this.spellcatcd4);
            this.groupBox7.Controls.Add(this.spellcatcd3);
            this.groupBox7.Controls.Add(this.spellcatcd2);
            this.groupBox7.Controls.Add(this.spellcatcd1);
            this.groupBox7.Controls.Add(this.spellcat5);
            this.groupBox7.Controls.Add(this.spellcat4);
            this.groupBox7.Controls.Add(this.spellcat3);
            this.groupBox7.Controls.Add(this.spellcat2);
            this.groupBox7.Controls.Add(this.spellcat1);
            this.groupBox7.Controls.Add(this.spellppm5);
            this.groupBox7.Controls.Add(this.spellcd5);
            this.groupBox7.Controls.Add(this.spellppm4);
            this.groupBox7.Controls.Add(this.spellcd4);
            this.groupBox7.Controls.Add(this.spellppm3);
            this.groupBox7.Controls.Add(this.spellcd3);
            this.groupBox7.Controls.Add(this.spellppm2);
            this.groupBox7.Controls.Add(this.spellcd2);
            this.groupBox7.Controls.Add(this.spellppm1);
            this.groupBox7.Controls.Add(this.spellcd1);
            this.groupBox7.Controls.Add(this.label6);
            this.groupBox7.Controls.Add(this.label7);
            this.groupBox7.Controls.Add(this.label8);
            this.groupBox7.Controls.Add(this.spellCharges5);
            this.groupBox7.Controls.Add(this.spellCharges4);
            this.groupBox7.Controls.Add(this.spellCharges3);
            this.groupBox7.Controls.Add(this.spellCharges2);
            this.groupBox7.Controls.Add(this.spellCharges1);
            this.groupBox7.Controls.Add(this.spellId5);
            this.groupBox7.Controls.Add(this.spellTrigger5);
            this.groupBox7.Controls.Add(this.textBox24);
            this.groupBox7.Controls.Add(this.spellId4);
            this.groupBox7.Controls.Add(this.spellTrigger4);
            this.groupBox7.Controls.Add(this.textBox25);
            this.groupBox7.Controls.Add(this.spellId3);
            this.groupBox7.Controls.Add(this.spellTrigger3);
            this.groupBox7.Controls.Add(this.textBox26);
            this.groupBox7.Controls.Add(this.spellId2);
            this.groupBox7.Controls.Add(this.spellTrigger2);
            this.groupBox7.Controls.Add(this.textBox27);
            this.groupBox7.Controls.Add(this.spellId1);
            this.groupBox7.Controls.Add(this.spellTrigger1);
            this.groupBox7.Controls.Add(this.textBox29);
            this.groupBox7.Location = new System.Drawing.Point(7, 19);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(676, 178);
            this.groupBox7.TabIndex = 35;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Spells";
            // 
            // spellName5
            // 
            this.spellName5.FormattingEnabled = true;
            this.spellName5.Location = new System.Drawing.Point(49, 138);
            this.spellName5.Name = "spellName5";
            this.spellName5.Size = new System.Drawing.Size(121, 21);
            this.spellName5.TabIndex = 65;
            this.spellName5.TextChanged += new System.EventHandler(this.spellName5_TextChanged);
            // 
            // spellName4
            // 
            this.spellName4.FormattingEnabled = true;
            this.spellName4.Location = new System.Drawing.Point(50, 112);
            this.spellName4.Name = "spellName4";
            this.spellName4.Size = new System.Drawing.Size(121, 21);
            this.spellName4.TabIndex = 64;
            this.spellName4.TextChanged += new System.EventHandler(this.spellName4_TextChanged);
            // 
            // spellName3
            // 
            this.spellName3.FormattingEnabled = true;
            this.spellName3.Location = new System.Drawing.Point(50, 86);
            this.spellName3.Name = "spellName3";
            this.spellName3.Size = new System.Drawing.Size(121, 21);
            this.spellName3.TabIndex = 63;
            this.spellName3.TextChanged += new System.EventHandler(this.spellName3_TextChanged);
            // 
            // spellName2
            // 
            this.spellName2.FormattingEnabled = true;
            this.spellName2.Location = new System.Drawing.Point(50, 59);
            this.spellName2.Name = "spellName2";
            this.spellName2.Size = new System.Drawing.Size(121, 21);
            this.spellName2.TabIndex = 62;
            this.spellName2.TextChanged += new System.EventHandler(this.spellName2_TextChanged);
            // 
            // spellName1
            // 
            this.spellName1.FormattingEnabled = true;
            this.spellName1.Location = new System.Drawing.Point(50, 34);
            this.spellName1.Name = "spellName1";
            this.spellName1.Size = new System.Drawing.Size(121, 21);
            this.spellName1.TabIndex = 61;
            this.spellName1.TextChanged += new System.EventHandler(this.spellName1_TextChanged);
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(93, 16);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(33, 13);
            this.label19.TabIndex = 60;
            this.label19.Text = "name";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(593, 16);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(35, 13);
            this.label12.TabIndex = 58;
            this.label12.Text = "catCd";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(524, 16);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(48, 13);
            this.label11.TabIndex = 57;
            this.label11.Text = "category";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(466, 16);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(19, 13);
            this.label10.TabIndex = 56;
            this.label10.Text = "cd";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(385, 16);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(50, 13);
            this.label9.TabIndex = 55;
            this.label9.Text = "ppmRate";
            // 
            // spellcatcd5
            // 
            this.spellcatcd5.Location = new System.Drawing.Point(584, 138);
            this.spellcatcd5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcatcd5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcatcd5.Name = "spellcatcd5";
            this.spellcatcd5.Size = new System.Drawing.Size(62, 20);
            this.spellcatcd5.TabIndex = 54;
            this.spellcatcd5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcatcd5.ValueChanged += new System.EventHandler(this.spellcatcd5_ValueChanged);
            // 
            // spellcatcd4
            // 
            this.spellcatcd4.Location = new System.Drawing.Point(584, 112);
            this.spellcatcd4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcatcd4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcatcd4.Name = "spellcatcd4";
            this.spellcatcd4.Size = new System.Drawing.Size(62, 20);
            this.spellcatcd4.TabIndex = 53;
            this.spellcatcd4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcatcd4.ValueChanged += new System.EventHandler(this.spellcatcd4_ValueChanged);
            // 
            // spellcatcd3
            // 
            this.spellcatcd3.Location = new System.Drawing.Point(584, 86);
            this.spellcatcd3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcatcd3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcatcd3.Name = "spellcatcd3";
            this.spellcatcd3.Size = new System.Drawing.Size(62, 20);
            this.spellcatcd3.TabIndex = 52;
            this.spellcatcd3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcatcd3.ValueChanged += new System.EventHandler(this.spellcatcd3_ValueChanged);
            // 
            // spellcatcd2
            // 
            this.spellcatcd2.Location = new System.Drawing.Point(584, 60);
            this.spellcatcd2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcatcd2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcatcd2.Name = "spellcatcd2";
            this.spellcatcd2.Size = new System.Drawing.Size(62, 20);
            this.spellcatcd2.TabIndex = 51;
            this.spellcatcd2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcatcd2.ValueChanged += new System.EventHandler(this.spellcatcd2_ValueChanged);
            // 
            // spellcatcd1
            // 
            this.spellcatcd1.Location = new System.Drawing.Point(584, 34);
            this.spellcatcd1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcatcd1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcatcd1.Name = "spellcatcd1";
            this.spellcatcd1.Size = new System.Drawing.Size(62, 20);
            this.spellcatcd1.TabIndex = 50;
            this.spellcatcd1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcatcd1.ValueChanged += new System.EventHandler(this.spellcatcd1_ValueChanged);
            // 
            // spellcat5
            // 
            this.spellcat5.Location = new System.Drawing.Point(516, 138);
            this.spellcat5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcat5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcat5.Name = "spellcat5";
            this.spellcat5.Size = new System.Drawing.Size(62, 20);
            this.spellcat5.TabIndex = 49;
            this.spellcat5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcat5.ValueChanged += new System.EventHandler(this.spellcat5_ValueChanged);
            // 
            // spellcat4
            // 
            this.spellcat4.Location = new System.Drawing.Point(516, 112);
            this.spellcat4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcat4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcat4.Name = "spellcat4";
            this.spellcat4.Size = new System.Drawing.Size(62, 20);
            this.spellcat4.TabIndex = 48;
            this.spellcat4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcat4.ValueChanged += new System.EventHandler(this.spellcat4_ValueChanged);
            // 
            // spellcat3
            // 
            this.spellcat3.Location = new System.Drawing.Point(516, 86);
            this.spellcat3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcat3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcat3.Name = "spellcat3";
            this.spellcat3.Size = new System.Drawing.Size(62, 20);
            this.spellcat3.TabIndex = 47;
            this.spellcat3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcat3.ValueChanged += new System.EventHandler(this.spellcat3_ValueChanged);
            // 
            // spellcat2
            // 
            this.spellcat2.Location = new System.Drawing.Point(516, 60);
            this.spellcat2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcat2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcat2.Name = "spellcat2";
            this.spellcat2.Size = new System.Drawing.Size(62, 20);
            this.spellcat2.TabIndex = 46;
            this.spellcat2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcat2.ValueChanged += new System.EventHandler(this.spellcat2_ValueChanged);
            // 
            // spellcat1
            // 
            this.spellcat1.Location = new System.Drawing.Point(516, 34);
            this.spellcat1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcat1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcat1.Name = "spellcat1";
            this.spellcat1.Size = new System.Drawing.Size(62, 20);
            this.spellcat1.TabIndex = 45;
            this.spellcat1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcat1.ValueChanged += new System.EventHandler(this.spellcat1_ValueChanged);
            // 
            // spellppm5
            // 
            this.spellppm5.Location = new System.Drawing.Point(380, 138);
            this.spellppm5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellppm5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellppm5.Name = "spellppm5";
            this.spellppm5.Size = new System.Drawing.Size(62, 20);
            this.spellppm5.TabIndex = 44;
            this.spellppm5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellppm5.ValueChanged += new System.EventHandler(this.spellppm5_ValueChanged);
            // 
            // spellcd5
            // 
            this.spellcd5.Location = new System.Drawing.Point(448, 138);
            this.spellcd5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcd5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcd5.Name = "spellcd5";
            this.spellcd5.Size = new System.Drawing.Size(62, 20);
            this.spellcd5.TabIndex = 43;
            this.spellcd5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcd5.ValueChanged += new System.EventHandler(this.spellcd5_ValueChanged);
            // 
            // spellppm4
            // 
            this.spellppm4.Location = new System.Drawing.Point(380, 112);
            this.spellppm4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellppm4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellppm4.Name = "spellppm4";
            this.spellppm4.Size = new System.Drawing.Size(62, 20);
            this.spellppm4.TabIndex = 42;
            this.spellppm4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellppm4.ValueChanged += new System.EventHandler(this.spellppm4_ValueChanged);
            // 
            // spellcd4
            // 
            this.spellcd4.Location = new System.Drawing.Point(448, 112);
            this.spellcd4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcd4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcd4.Name = "spellcd4";
            this.spellcd4.Size = new System.Drawing.Size(62, 20);
            this.spellcd4.TabIndex = 41;
            this.spellcd4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcd4.ValueChanged += new System.EventHandler(this.spellcd4_ValueChanged);
            // 
            // spellppm3
            // 
            this.spellppm3.Location = new System.Drawing.Point(380, 86);
            this.spellppm3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellppm3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellppm3.Name = "spellppm3";
            this.spellppm3.Size = new System.Drawing.Size(62, 20);
            this.spellppm3.TabIndex = 40;
            this.spellppm3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellppm3.ValueChanged += new System.EventHandler(this.spellppm3_ValueChanged);
            // 
            // spellcd3
            // 
            this.spellcd3.Location = new System.Drawing.Point(448, 86);
            this.spellcd3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcd3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcd3.Name = "spellcd3";
            this.spellcd3.Size = new System.Drawing.Size(62, 20);
            this.spellcd3.TabIndex = 39;
            this.spellcd3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcd3.ValueChanged += new System.EventHandler(this.spellcd3_ValueChanged);
            // 
            // spellppm2
            // 
            this.spellppm2.Location = new System.Drawing.Point(380, 60);
            this.spellppm2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellppm2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellppm2.Name = "spellppm2";
            this.spellppm2.Size = new System.Drawing.Size(62, 20);
            this.spellppm2.TabIndex = 38;
            this.spellppm2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellppm2.ValueChanged += new System.EventHandler(this.spellppm2_ValueChanged);
            // 
            // spellcd2
            // 
            this.spellcd2.Location = new System.Drawing.Point(448, 60);
            this.spellcd2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcd2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcd2.Name = "spellcd2";
            this.spellcd2.Size = new System.Drawing.Size(62, 20);
            this.spellcd2.TabIndex = 37;
            this.spellcd2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcd2.ValueChanged += new System.EventHandler(this.spellcd2_ValueChanged);
            // 
            // spellppm1
            // 
            this.spellppm1.Location = new System.Drawing.Point(380, 34);
            this.spellppm1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellppm1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellppm1.Name = "spellppm1";
            this.spellppm1.Size = new System.Drawing.Size(62, 20);
            this.spellppm1.TabIndex = 36;
            this.spellppm1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellppm1.ValueChanged += new System.EventHandler(this.spellppm1_ValueChanged);
            // 
            // spellcd1
            // 
            this.spellcd1.Location = new System.Drawing.Point(448, 34);
            this.spellcd1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellcd1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellcd1.Name = "spellcd1";
            this.spellcd1.Size = new System.Drawing.Size(62, 20);
            this.spellcd1.TabIndex = 35;
            this.spellcd1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellcd1.ValueChanged += new System.EventHandler(this.spellcd1_ValueChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(320, 16);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 13);
            this.label6.TabIndex = 34;
            this.label6.Text = "charges";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(255, 16);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(36, 13);
            this.label7.TabIndex = 33;
            this.label7.Text = "trigger";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(194, 16);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(15, 13);
            this.label8.TabIndex = 32;
            this.label8.Text = "id";
            // 
            // spellCharges5
            // 
            this.spellCharges5.Location = new System.Drawing.Point(312, 138);
            this.spellCharges5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellCharges5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellCharges5.Name = "spellCharges5";
            this.spellCharges5.Size = new System.Drawing.Size(62, 20);
            this.spellCharges5.TabIndex = 20;
            this.spellCharges5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellCharges5.ValueChanged += new System.EventHandler(this.spellCharges5_ValueChanged);
            // 
            // spellCharges4
            // 
            this.spellCharges4.Location = new System.Drawing.Point(312, 112);
            this.spellCharges4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellCharges4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellCharges4.Name = "spellCharges4";
            this.spellCharges4.Size = new System.Drawing.Size(62, 20);
            this.spellCharges4.TabIndex = 19;
            this.spellCharges4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellCharges4.ValueChanged += new System.EventHandler(this.spellCharges4_ValueChanged);
            // 
            // spellCharges3
            // 
            this.spellCharges3.Location = new System.Drawing.Point(312, 86);
            this.spellCharges3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellCharges3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellCharges3.Name = "spellCharges3";
            this.spellCharges3.Size = new System.Drawing.Size(62, 20);
            this.spellCharges3.TabIndex = 18;
            this.spellCharges3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellCharges3.ValueChanged += new System.EventHandler(this.spellCharges3_ValueChanged);
            // 
            // spellCharges2
            // 
            this.spellCharges2.Location = new System.Drawing.Point(312, 60);
            this.spellCharges2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellCharges2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellCharges2.Name = "spellCharges2";
            this.spellCharges2.Size = new System.Drawing.Size(62, 20);
            this.spellCharges2.TabIndex = 17;
            this.spellCharges2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellCharges2.ValueChanged += new System.EventHandler(this.spellCharges2_ValueChanged);
            // 
            // spellCharges1
            // 
            this.spellCharges1.Location = new System.Drawing.Point(312, 34);
            this.spellCharges1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellCharges1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellCharges1.Name = "spellCharges1";
            this.spellCharges1.Size = new System.Drawing.Size(62, 20);
            this.spellCharges1.TabIndex = 16;
            this.spellCharges1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellCharges1.ValueChanged += new System.EventHandler(this.spellCharges1_ValueChanged);
            // 
            // spellId5
            // 
            this.spellId5.Location = new System.Drawing.Point(176, 138);
            this.spellId5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellId5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellId5.Name = "spellId5";
            this.spellId5.Size = new System.Drawing.Size(62, 20);
            this.spellId5.TabIndex = 15;
            this.spellId5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellId5.ValueChanged += new System.EventHandler(this.spellId5_ValueChanged);
            // 
            // spellTrigger5
            // 
            this.spellTrigger5.Location = new System.Drawing.Point(244, 138);
            this.spellTrigger5.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellTrigger5.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellTrigger5.Name = "spellTrigger5";
            this.spellTrigger5.Size = new System.Drawing.Size(62, 20);
            this.spellTrigger5.TabIndex = 14;
            this.spellTrigger5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellTrigger5.ValueChanged += new System.EventHandler(this.spellTrigger5_ValueChanged);
            // 
            // textBox24
            // 
            this.textBox24.Enabled = false;
            this.textBox24.Location = new System.Drawing.Point(17, 141);
            this.textBox24.Name = "textBox24";
            this.textBox24.Size = new System.Drawing.Size(27, 20);
            this.textBox24.TabIndex = 13;
            this.textBox24.Text = "5";
            this.textBox24.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // spellId4
            // 
            this.spellId4.Location = new System.Drawing.Point(176, 112);
            this.spellId4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellId4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellId4.Name = "spellId4";
            this.spellId4.Size = new System.Drawing.Size(62, 20);
            this.spellId4.TabIndex = 12;
            this.spellId4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellId4.ValueChanged += new System.EventHandler(this.spellId4_ValueChanged);
            // 
            // spellTrigger4
            // 
            this.spellTrigger4.Location = new System.Drawing.Point(244, 112);
            this.spellTrigger4.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellTrigger4.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellTrigger4.Name = "spellTrigger4";
            this.spellTrigger4.Size = new System.Drawing.Size(62, 20);
            this.spellTrigger4.TabIndex = 11;
            this.spellTrigger4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellTrigger4.ValueChanged += new System.EventHandler(this.spellTrigger4_ValueChanged);
            // 
            // textBox25
            // 
            this.textBox25.Enabled = false;
            this.textBox25.Location = new System.Drawing.Point(17, 115);
            this.textBox25.Name = "textBox25";
            this.textBox25.Size = new System.Drawing.Size(27, 20);
            this.textBox25.TabIndex = 10;
            this.textBox25.Text = "4";
            this.textBox25.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // spellId3
            // 
            this.spellId3.Location = new System.Drawing.Point(176, 86);
            this.spellId3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellId3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellId3.Name = "spellId3";
            this.spellId3.Size = new System.Drawing.Size(62, 20);
            this.spellId3.TabIndex = 9;
            this.spellId3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellId3.ValueChanged += new System.EventHandler(this.spellId3_ValueChanged);
            // 
            // spellTrigger3
            // 
            this.spellTrigger3.Location = new System.Drawing.Point(244, 86);
            this.spellTrigger3.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellTrigger3.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellTrigger3.Name = "spellTrigger3";
            this.spellTrigger3.Size = new System.Drawing.Size(62, 20);
            this.spellTrigger3.TabIndex = 8;
            this.spellTrigger3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellTrigger3.ValueChanged += new System.EventHandler(this.spellTrigger3_ValueChanged);
            // 
            // textBox26
            // 
            this.textBox26.Enabled = false;
            this.textBox26.Location = new System.Drawing.Point(17, 89);
            this.textBox26.Name = "textBox26";
            this.textBox26.Size = new System.Drawing.Size(27, 20);
            this.textBox26.TabIndex = 7;
            this.textBox26.Text = "3";
            this.textBox26.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // spellId2
            // 
            this.spellId2.Location = new System.Drawing.Point(176, 60);
            this.spellId2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellId2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellId2.Name = "spellId2";
            this.spellId2.Size = new System.Drawing.Size(62, 20);
            this.spellId2.TabIndex = 6;
            this.spellId2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellId2.ValueChanged += new System.EventHandler(this.spellId2_ValueChanged);
            // 
            // spellTrigger2
            // 
            this.spellTrigger2.Location = new System.Drawing.Point(244, 60);
            this.spellTrigger2.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellTrigger2.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellTrigger2.Name = "spellTrigger2";
            this.spellTrigger2.Size = new System.Drawing.Size(62, 20);
            this.spellTrigger2.TabIndex = 5;
            this.spellTrigger2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellTrigger2.ValueChanged += new System.EventHandler(this.spellTrigger2_ValueChanged);
            // 
            // textBox27
            // 
            this.textBox27.Enabled = false;
            this.textBox27.Location = new System.Drawing.Point(17, 63);
            this.textBox27.Name = "textBox27";
            this.textBox27.Size = new System.Drawing.Size(27, 20);
            this.textBox27.TabIndex = 4;
            this.textBox27.Text = "2";
            this.textBox27.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // spellId1
            // 
            this.spellId1.Location = new System.Drawing.Point(176, 34);
            this.spellId1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellId1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellId1.Name = "spellId1";
            this.spellId1.Size = new System.Drawing.Size(62, 20);
            this.spellId1.TabIndex = 3;
            this.spellId1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellId1.ValueChanged += new System.EventHandler(this.spellId1_ValueChanged);
            // 
            // spellTrigger1
            // 
            this.spellTrigger1.Location = new System.Drawing.Point(244, 34);
            this.spellTrigger1.Maximum = new decimal(new int[] {
            999999999,
            0,
            0,
            0});
            this.spellTrigger1.Minimum = new decimal(new int[] {
            999999999,
            0,
            0,
            -2147483648});
            this.spellTrigger1.Name = "spellTrigger1";
            this.spellTrigger1.Size = new System.Drawing.Size(62, 20);
            this.spellTrigger1.TabIndex = 2;
            this.spellTrigger1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.spellTrigger1.ValueChanged += new System.EventHandler(this.spellTrigger1_ValueChanged);
            // 
            // textBox29
            // 
            this.textBox29.Enabled = false;
            this.textBox29.Location = new System.Drawing.Point(17, 37);
            this.textBox29.Name = "textBox29";
            this.textBox29.Size = new System.Drawing.Size(27, 20);
            this.textBox29.TabIndex = 1;
            this.textBox29.Text = "1";
            this.textBox29.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.textBox18);
            this.groupBox6.Controls.Add(this.textBox17);
            this.groupBox6.Controls.Add(this.textBox16);
            this.groupBox6.Controls.Add(this.textBox15);
            this.groupBox6.Controls.Add(this.textBox14);
            this.groupBox6.Controls.Add(this.resArcane);
            this.groupBox6.Controls.Add(this.resShadow);
            this.groupBox6.Controls.Add(this.resFrost);
            this.groupBox6.Controls.Add(this.resNature);
            this.groupBox6.Controls.Add(this.resFire);
            this.groupBox6.Controls.Add(this.resHoly);
            this.groupBox6.Controls.Add(this.textBox28);
            this.groupBox6.Location = new System.Drawing.Point(476, 203);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(207, 192);
            this.groupBox6.TabIndex = 32;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Resistance";
            // 
            // textBox18
            // 
            this.textBox18.Enabled = false;
            this.textBox18.Location = new System.Drawing.Point(18, 157);
            this.textBox18.Name = "textBox18";
            this.textBox18.Size = new System.Drawing.Size(58, 20);
            this.textBox18.TabIndex = 33;
            this.textBox18.Text = "arcane";
            this.textBox18.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox17
            // 
            this.textBox17.Enabled = false;
            this.textBox17.Location = new System.Drawing.Point(18, 131);
            this.textBox17.Name = "textBox17";
            this.textBox17.Size = new System.Drawing.Size(58, 20);
            this.textBox17.TabIndex = 35;
            this.textBox17.Text = "shadow";
            this.textBox17.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox16
            // 
            this.textBox16.Enabled = false;
            this.textBox16.Location = new System.Drawing.Point(18, 105);
            this.textBox16.Name = "textBox16";
            this.textBox16.Size = new System.Drawing.Size(58, 20);
            this.textBox16.TabIndex = 34;
            this.textBox16.Text = "frost";
            this.textBox16.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox15
            // 
            this.textBox15.Enabled = false;
            this.textBox15.Location = new System.Drawing.Point(18, 80);
            this.textBox15.Name = "textBox15";
            this.textBox15.Size = new System.Drawing.Size(58, 20);
            this.textBox15.TabIndex = 33;
            this.textBox15.Text = "nature";
            this.textBox15.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox14
            // 
            this.textBox14.Enabled = false;
            this.textBox14.Location = new System.Drawing.Point(18, 54);
            this.textBox14.Name = "textBox14";
            this.textBox14.Size = new System.Drawing.Size(58, 20);
            this.textBox14.TabIndex = 32;
            this.textBox14.Text = "fire";
            this.textBox14.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resArcane
            // 
            this.resArcane.Location = new System.Drawing.Point(82, 158);
            this.resArcane.Name = "resArcane";
            this.resArcane.Size = new System.Drawing.Size(62, 20);
            this.resArcane.TabIndex = 18;
            this.resArcane.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resShadow
            // 
            this.resShadow.Location = new System.Drawing.Point(82, 132);
            this.resShadow.Name = "resShadow";
            this.resShadow.Size = new System.Drawing.Size(62, 20);
            this.resShadow.TabIndex = 15;
            this.resShadow.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resFrost
            // 
            this.resFrost.Location = new System.Drawing.Point(82, 106);
            this.resFrost.Name = "resFrost";
            this.resFrost.Size = new System.Drawing.Size(62, 20);
            this.resFrost.TabIndex = 12;
            this.resFrost.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resNature
            // 
            this.resNature.Location = new System.Drawing.Point(82, 80);
            this.resNature.Name = "resNature";
            this.resNature.Size = new System.Drawing.Size(62, 20);
            this.resNature.TabIndex = 9;
            this.resNature.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resFire
            // 
            this.resFire.Location = new System.Drawing.Point(82, 54);
            this.resFire.Name = "resFire";
            this.resFire.Size = new System.Drawing.Size(62, 20);
            this.resFire.TabIndex = 6;
            this.resFire.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // resHoly
            // 
            this.resHoly.Location = new System.Drawing.Point(82, 28);
            this.resHoly.Name = "resHoly";
            this.resHoly.Size = new System.Drawing.Size(62, 20);
            this.resHoly.TabIndex = 3;
            this.resHoly.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox28
            // 
            this.textBox28.Enabled = false;
            this.textBox28.Location = new System.Drawing.Point(18, 28);
            this.textBox28.Name = "textBox28";
            this.textBox28.Size = new System.Drawing.Size(58, 20);
            this.textBox28.TabIndex = 1;
            this.textBox28.Text = "holy";
            this.textBox28.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.label5);
            this.groupBox5.Controls.Add(this.label4);
            this.groupBox5.Controls.Add(this.label3);
            this.groupBox5.Controls.Add(this.dmgMax5);
            this.groupBox5.Controls.Add(this.dmgMax4);
            this.groupBox5.Controls.Add(this.dmgMax3);
            this.groupBox5.Controls.Add(this.dmgMax2);
            this.groupBox5.Controls.Add(this.dmgMax1);
            this.groupBox5.Controls.Add(this.dmgType5);
            this.groupBox5.Controls.Add(this.dmgMin5);
            this.groupBox5.Controls.Add(this.textBox19);
            this.groupBox5.Controls.Add(this.dmgType4);
            this.groupBox5.Controls.Add(this.dmgMin4);
            this.groupBox5.Controls.Add(this.textBox20);
            this.groupBox5.Controls.Add(this.dmgType3);
            this.groupBox5.Controls.Add(this.dmgMin3);
            this.groupBox5.Controls.Add(this.textBox21);
            this.groupBox5.Controls.Add(this.dmgType2);
            this.groupBox5.Controls.Add(this.dmgMin2);
            this.groupBox5.Controls.Add(this.textBox22);
            this.groupBox5.Controls.Add(this.dmgType1);
            this.groupBox5.Controls.Add(this.dmgMin1);
            this.groupBox5.Controls.Add(this.textBox23);
            this.groupBox5.Location = new System.Drawing.Point(7, 200);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(309, 195);
            this.groupBox5.TabIndex = 31;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Damage";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(203, 31);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(52, 13);
            this.label5.TabIndex = 34;
            this.label5.Text = "dmg_max";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(137, 31);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(49, 13);
            this.label4.TabIndex = 33;
            this.label4.Text = "dmg_min";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(66, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 32;
            this.label3.Text = "dmg_type";
            // 
            // dmgMax5
            // 
            this.dmgMax5.Location = new System.Drawing.Point(200, 156);
            this.dmgMax5.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMax5.Name = "dmgMax5";
            this.dmgMax5.Size = new System.Drawing.Size(62, 20);
            this.dmgMax5.TabIndex = 20;
            this.dmgMax5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMax4
            // 
            this.dmgMax4.Location = new System.Drawing.Point(200, 130);
            this.dmgMax4.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMax4.Name = "dmgMax4";
            this.dmgMax4.Size = new System.Drawing.Size(62, 20);
            this.dmgMax4.TabIndex = 19;
            this.dmgMax4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMax3
            // 
            this.dmgMax3.Location = new System.Drawing.Point(200, 104);
            this.dmgMax3.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMax3.Name = "dmgMax3";
            this.dmgMax3.Size = new System.Drawing.Size(62, 20);
            this.dmgMax3.TabIndex = 18;
            this.dmgMax3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMax2
            // 
            this.dmgMax2.Location = new System.Drawing.Point(200, 78);
            this.dmgMax2.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMax2.Name = "dmgMax2";
            this.dmgMax2.Size = new System.Drawing.Size(62, 20);
            this.dmgMax2.TabIndex = 17;
            this.dmgMax2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMax1
            // 
            this.dmgMax1.Location = new System.Drawing.Point(200, 52);
            this.dmgMax1.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMax1.Name = "dmgMax1";
            this.dmgMax1.Size = new System.Drawing.Size(62, 20);
            this.dmgMax1.TabIndex = 16;
            this.dmgMax1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgType5
            // 
            this.dmgType5.Location = new System.Drawing.Point(64, 156);
            this.dmgType5.Name = "dmgType5";
            this.dmgType5.Size = new System.Drawing.Size(62, 20);
            this.dmgType5.TabIndex = 15;
            this.dmgType5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMin5
            // 
            this.dmgMin5.Location = new System.Drawing.Point(132, 156);
            this.dmgMin5.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMin5.Name = "dmgMin5";
            this.dmgMin5.Size = new System.Drawing.Size(62, 20);
            this.dmgMin5.TabIndex = 14;
            this.dmgMin5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox19
            // 
            this.textBox19.Enabled = false;
            this.textBox19.Location = new System.Drawing.Point(31, 156);
            this.textBox19.Name = "textBox19";
            this.textBox19.Size = new System.Drawing.Size(27, 20);
            this.textBox19.TabIndex = 13;
            this.textBox19.Text = "5";
            this.textBox19.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgType4
            // 
            this.dmgType4.Location = new System.Drawing.Point(64, 130);
            this.dmgType4.Name = "dmgType4";
            this.dmgType4.Size = new System.Drawing.Size(62, 20);
            this.dmgType4.TabIndex = 12;
            this.dmgType4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMin4
            // 
            this.dmgMin4.Location = new System.Drawing.Point(132, 130);
            this.dmgMin4.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this.dmgMin4.Name = "dmgMin4";
            this.dmgMin4.Size = new System.Drawing.Size(62, 20);
            this.dmgMin4.TabIndex = 11;
            this.dmgMin4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox20
            // 
            this.textBox20.Enabled = false;
            this.textBox20.Location = new System.Drawing.Point(31, 130);
            this.textBox20.Name = "textBox20";
            this.textBox20.Size = new System.Drawing.Size(27, 20);
            this.textBox20.TabIndex = 10;
            this.textBox20.Text = "4";
            this.textBox20.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgType3
            // 
            this.dmgType3.Location = new System.Drawing.Point(64, 104);
            this.dmgType3.Name = "dmgType3";
            this.dmgType3.Size = new System.Drawing.Size(62, 20);
            this.dmgType3.TabIndex = 9;
            this.dmgType3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMin3
            // 
            this.dmgMin3.Location = new System.Drawing.Point(132, 104);
            this.dmgMin3.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMin3.Name = "dmgMin3";
            this.dmgMin3.Size = new System.Drawing.Size(62, 20);
            this.dmgMin3.TabIndex = 8;
            this.dmgMin3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox21
            // 
            this.textBox21.Enabled = false;
            this.textBox21.Location = new System.Drawing.Point(31, 104);
            this.textBox21.Name = "textBox21";
            this.textBox21.Size = new System.Drawing.Size(27, 20);
            this.textBox21.TabIndex = 7;
            this.textBox21.Text = "3";
            this.textBox21.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgType2
            // 
            this.dmgType2.Location = new System.Drawing.Point(64, 78);
            this.dmgType2.Name = "dmgType2";
            this.dmgType2.Size = new System.Drawing.Size(62, 20);
            this.dmgType2.TabIndex = 6;
            this.dmgType2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMin2
            // 
            this.dmgMin2.Location = new System.Drawing.Point(132, 78);
            this.dmgMin2.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMin2.Name = "dmgMin2";
            this.dmgMin2.Size = new System.Drawing.Size(62, 20);
            this.dmgMin2.TabIndex = 5;
            this.dmgMin2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox22
            // 
            this.textBox22.Enabled = false;
            this.textBox22.Location = new System.Drawing.Point(31, 78);
            this.textBox22.Name = "textBox22";
            this.textBox22.Size = new System.Drawing.Size(27, 20);
            this.textBox22.TabIndex = 4;
            this.textBox22.Text = "2";
            this.textBox22.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgType1
            // 
            this.dmgType1.Location = new System.Drawing.Point(64, 52);
            this.dmgType1.Name = "dmgType1";
            this.dmgType1.Size = new System.Drawing.Size(62, 20);
            this.dmgType1.TabIndex = 3;
            this.dmgType1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dmgMin1
            // 
            this.dmgMin1.Location = new System.Drawing.Point(132, 52);
            this.dmgMin1.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.dmgMin1.Name = "dmgMin1";
            this.dmgMin1.Size = new System.Drawing.Size(62, 20);
            this.dmgMin1.TabIndex = 2;
            this.dmgMin1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // textBox23
            // 
            this.textBox23.Enabled = false;
            this.textBox23.Location = new System.Drawing.Point(31, 52);
            this.textBox23.Name = "textBox23";
            this.textBox23.Size = new System.Drawing.Size(27, 20);
            this.textBox23.TabIndex = 1;
            this.textBox23.Text = "1";
            this.textBox23.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.StatTypeSelector10);
            this.groupBox4.Controls.Add(this.StatTypeSelector9);
            this.groupBox4.Controls.Add(this.StatTypeSelector8);
            this.groupBox4.Controls.Add(this.StatTypeSelector7);
            this.groupBox4.Controls.Add(this.StatTypeSelector6);
            this.groupBox4.Controls.Add(this.StatTypeSelector5);
            this.groupBox4.Controls.Add(this.StatTypeSelector4);
            this.groupBox4.Controls.Add(this.StatTypeSelector3);
            this.groupBox4.Controls.Add(this.StatTypeSelector2);
            this.groupBox4.Controls.Add(this.StatTypeSelector1);
            this.groupBox4.Controls.Add(this.textBox1);
            this.groupBox4.Controls.Add(this.armor);
            this.groupBox4.Controls.Add(this.label2);
            this.groupBox4.Controls.Add(this.label1);
            this.groupBox4.Controls.Add(this.statValue10);
            this.groupBox4.Controls.Add(this.textBox13);
            this.groupBox4.Controls.Add(this.statValue9);
            this.groupBox4.Controls.Add(this.textBox12);
            this.groupBox4.Controls.Add(this.statValue8);
            this.groupBox4.Controls.Add(this.textBox11);
            this.groupBox4.Controls.Add(this.statValue7);
            this.groupBox4.Controls.Add(this.textBox10);
            this.groupBox4.Controls.Add(this.statValue6);
            this.groupBox4.Controls.Add(this.textBox9);
            this.groupBox4.Controls.Add(this.statValue5);
            this.groupBox4.Controls.Add(this.textBox8);
            this.groupBox4.Controls.Add(this.statValue4);
            this.groupBox4.Controls.Add(this.textBox7);
            this.groupBox4.Controls.Add(this.statValue3);
            this.groupBox4.Controls.Add(this.textBox6);
            this.groupBox4.Controls.Add(this.statValue2);
            this.groupBox4.Controls.Add(this.textBox4);
            this.groupBox4.Controls.Add(this.statValue1);
            this.groupBox4.Controls.Add(this.textBox5);
            this.groupBox4.Location = new System.Drawing.Point(689, 22);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(279, 376);
            this.groupBox4.TabIndex = 0;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Stats";
            // 
            // StatTypeSelector10
            // 
            this.StatTypeSelector10.FormattingEnabled = true;
            this.StatTypeSelector10.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector10.Location = new System.Drawing.Point(45, 297);
            this.StatTypeSelector10.Name = "StatTypeSelector10";
            this.StatTypeSelector10.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector10.TabIndex = 44;
            this.StatTypeSelector10.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector10_SelectedIndexChanged);
            // 
            // StatTypeSelector9
            // 
            this.StatTypeSelector9.FormattingEnabled = true;
            this.StatTypeSelector9.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector9.Location = new System.Drawing.Point(45, 272);
            this.StatTypeSelector9.Name = "StatTypeSelector9";
            this.StatTypeSelector9.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector9.TabIndex = 43;
            this.StatTypeSelector9.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector9_SelectedIndexChanged);
            // 
            // StatTypeSelector8
            // 
            this.StatTypeSelector8.FormattingEnabled = true;
            this.StatTypeSelector8.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector8.Location = new System.Drawing.Point(45, 247);
            this.StatTypeSelector8.Name = "StatTypeSelector8";
            this.StatTypeSelector8.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector8.TabIndex = 42;
            this.StatTypeSelector8.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector8_SelectedIndexChanged);
            // 
            // StatTypeSelector7
            // 
            this.StatTypeSelector7.FormattingEnabled = true;
            this.StatTypeSelector7.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector7.Location = new System.Drawing.Point(45, 220);
            this.StatTypeSelector7.Name = "StatTypeSelector7";
            this.StatTypeSelector7.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector7.TabIndex = 41;
            this.StatTypeSelector7.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector7_SelectedIndexChanged);
            // 
            // StatTypeSelector6
            // 
            this.StatTypeSelector6.FormattingEnabled = true;
            this.StatTypeSelector6.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector6.Location = new System.Drawing.Point(45, 193);
            this.StatTypeSelector6.Name = "StatTypeSelector6";
            this.StatTypeSelector6.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector6.TabIndex = 40;
            this.StatTypeSelector6.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector6_SelectedIndexChanged);
            // 
            // StatTypeSelector5
            // 
            this.StatTypeSelector5.FormattingEnabled = true;
            this.StatTypeSelector5.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector5.Location = new System.Drawing.Point(45, 167);
            this.StatTypeSelector5.Name = "StatTypeSelector5";
            this.StatTypeSelector5.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector5.TabIndex = 39;
            this.StatTypeSelector5.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector5_SelectedIndexChanged);
            // 
            // StatTypeSelector4
            // 
            this.StatTypeSelector4.FormattingEnabled = true;
            this.StatTypeSelector4.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector4.Location = new System.Drawing.Point(45, 140);
            this.StatTypeSelector4.Name = "StatTypeSelector4";
            this.StatTypeSelector4.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector4.TabIndex = 38;
            this.StatTypeSelector4.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector4_SelectedIndexChanged);
            // 
            // StatTypeSelector3
            // 
            this.StatTypeSelector3.FormattingEnabled = true;
            this.StatTypeSelector3.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector3.Location = new System.Drawing.Point(45, 114);
            this.StatTypeSelector3.Name = "StatTypeSelector3";
            this.StatTypeSelector3.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector3.TabIndex = 37;
            this.StatTypeSelector3.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector3_SelectedIndexChanged);
            // 
            // StatTypeSelector2
            // 
            this.StatTypeSelector2.FormattingEnabled = true;
            this.StatTypeSelector2.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector2.Location = new System.Drawing.Point(45, 91);
            this.StatTypeSelector2.Name = "StatTypeSelector2";
            this.StatTypeSelector2.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector2.TabIndex = 36;
            this.StatTypeSelector2.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector2_SelectedIndexChanged);
            // 
            // StatTypeSelector1
            // 
            this.StatTypeSelector1.FormattingEnabled = true;
            this.StatTypeSelector1.Items.AddRange(new object[] {
            "ITEM_MOD_NONE",
            "ITEM_MOD_MANA",
            "ITEM_MOD_HEALTH",
            "ITEM_MOD_AGILITY",
            "ITEM_MOD_STRENGTH",
            "ITEM_MOD_INTELLECT",
            "ITEM_MOD_SPIRIT",
            "ITEM_MOD_STAMINA",
            "ITEM_MOD_DEFENSE_SKILL_RATING",
            "ITEM_MOD_DODGE_RATING",
            "ITEM_MOD_PARRY_RATING",
            "ITEM_MOD_BLOCK_RATING",
            "ITEM_MOD_HIT_MELEE_RATING",
            "ITEM_MOD_HIT_RANGED_RATING",
            "ITEM_MOD_HIT_SPELL_RATING",
            "ITEM_MOD_CRIT_MELEE_RATING",
            "ITEM_MOD_CRIT_RANGED_RATING",
            "ITEM_MOD_CRIT_SPELL_RATING",
            "ITEM_MOD_HIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_HIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_HIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_CRIT_TAKEN_MELEE_RATING",
            "ITEM_MOD_CRIT_TAKEN_RANGED_RATING",
            "ITEM_MOD_CRIT_TAKEN_SPELL_RATING",
            "ITEM_MOD_HASTE_MELEE_RATING",
            "ITEM_MOD_HASTE_RANGED_RATING",
            "ITEM_MOD_HASTE_SPELL_RATING",
            "ITEM_MOD_HIT_RATING",
            "ITEM_MOD_CRIT_RATING",
            "ITEM_MOD_HIT_TAKEN_RATING",
            "ITEM_MOD_CRIT_TAKEN_RATING",
            "ITEM_MOD_RESILIENCE_RATING",
            "ITEM_MOD_HASTE_RATING",
            "ITEM_MOD_EXPERTISE_RATING"});
            this.StatTypeSelector1.Location = new System.Drawing.Point(45, 64);
            this.StatTypeSelector1.Name = "StatTypeSelector1";
            this.StatTypeSelector1.Size = new System.Drawing.Size(148, 21);
            this.StatTypeSelector1.TabIndex = 35;
            this.StatTypeSelector1.SelectedIndexChanged += new System.EventHandler(this.StatTypeSelector1_SelectedIndexChanged);
            // 
            // textBox1
            // 
            this.textBox1.Enabled = false;
            this.textBox1.Location = new System.Drawing.Point(12, 336);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(76, 20);
            this.textBox1.TabIndex = 34;
            this.textBox1.Text = "armor";
            this.textBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // armor
            // 
            this.armor.Location = new System.Drawing.Point(94, 336);
            this.armor.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.armor.Name = "armor";
            this.armor.Size = new System.Drawing.Size(81, 20);
            this.armor.TabIndex = 33;
            this.armor.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.armor.ValueChanged += new System.EventHandler(this.armor_ValueChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(201, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 32;
            this.label2.Text = "stat_value";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(50, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 31;
            this.label1.Text = "stat_type";
            // 
            // statValue10
            // 
            this.statValue10.Location = new System.Drawing.Point(199, 298);
            this.statValue10.Name = "statValue10";
            this.statValue10.Size = new System.Drawing.Size(62, 20);
            this.statValue10.TabIndex = 29;
            this.statValue10.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue10.ValueChanged += new System.EventHandler(this.statValue10_ValueChanged);
            // 
            // textBox13
            // 
            this.textBox13.Enabled = false;
            this.textBox13.Location = new System.Drawing.Point(12, 298);
            this.textBox13.Name = "textBox13";
            this.textBox13.Size = new System.Drawing.Size(27, 20);
            this.textBox13.TabIndex = 28;
            this.textBox13.Text = "10";
            this.textBox13.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue9
            // 
            this.statValue9.Location = new System.Drawing.Point(199, 272);
            this.statValue9.Name = "statValue9";
            this.statValue9.Size = new System.Drawing.Size(62, 20);
            this.statValue9.TabIndex = 26;
            this.statValue9.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue9.ValueChanged += new System.EventHandler(this.statValue9_ValueChanged);
            // 
            // textBox12
            // 
            this.textBox12.Enabled = false;
            this.textBox12.Location = new System.Drawing.Point(12, 272);
            this.textBox12.Name = "textBox12";
            this.textBox12.Size = new System.Drawing.Size(27, 20);
            this.textBox12.TabIndex = 25;
            this.textBox12.Text = "9";
            this.textBox12.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue8
            // 
            this.statValue8.Location = new System.Drawing.Point(199, 246);
            this.statValue8.Name = "statValue8";
            this.statValue8.Size = new System.Drawing.Size(62, 20);
            this.statValue8.TabIndex = 23;
            this.statValue8.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue8.ValueChanged += new System.EventHandler(this.statValue8_ValueChanged);
            // 
            // textBox11
            // 
            this.textBox11.Enabled = false;
            this.textBox11.Location = new System.Drawing.Point(12, 246);
            this.textBox11.Name = "textBox11";
            this.textBox11.Size = new System.Drawing.Size(27, 20);
            this.textBox11.TabIndex = 22;
            this.textBox11.Text = "8";
            this.textBox11.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue7
            // 
            this.statValue7.Location = new System.Drawing.Point(199, 220);
            this.statValue7.Name = "statValue7";
            this.statValue7.Size = new System.Drawing.Size(62, 20);
            this.statValue7.TabIndex = 20;
            this.statValue7.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue7.ValueChanged += new System.EventHandler(this.statValue7_ValueChanged);
            // 
            // textBox10
            // 
            this.textBox10.Enabled = false;
            this.textBox10.Location = new System.Drawing.Point(12, 220);
            this.textBox10.Name = "textBox10";
            this.textBox10.Size = new System.Drawing.Size(27, 20);
            this.textBox10.TabIndex = 19;
            this.textBox10.Text = "7";
            this.textBox10.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue6
            // 
            this.statValue6.Location = new System.Drawing.Point(199, 194);
            this.statValue6.Name = "statValue6";
            this.statValue6.Size = new System.Drawing.Size(62, 20);
            this.statValue6.TabIndex = 17;
            this.statValue6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue6.ValueChanged += new System.EventHandler(this.statValue6_ValueChanged);
            // 
            // textBox9
            // 
            this.textBox9.Enabled = false;
            this.textBox9.Location = new System.Drawing.Point(12, 194);
            this.textBox9.Name = "textBox9";
            this.textBox9.Size = new System.Drawing.Size(27, 20);
            this.textBox9.TabIndex = 16;
            this.textBox9.Text = "6";
            this.textBox9.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue5
            // 
            this.statValue5.Location = new System.Drawing.Point(199, 168);
            this.statValue5.Name = "statValue5";
            this.statValue5.Size = new System.Drawing.Size(62, 20);
            this.statValue5.TabIndex = 14;
            this.statValue5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue5.ValueChanged += new System.EventHandler(this.statValue5_ValueChanged);
            // 
            // textBox8
            // 
            this.textBox8.Enabled = false;
            this.textBox8.Location = new System.Drawing.Point(12, 168);
            this.textBox8.Name = "textBox8";
            this.textBox8.Size = new System.Drawing.Size(27, 20);
            this.textBox8.TabIndex = 13;
            this.textBox8.Text = "5";
            this.textBox8.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue4
            // 
            this.statValue4.Location = new System.Drawing.Point(199, 142);
            this.statValue4.Name = "statValue4";
            this.statValue4.Size = new System.Drawing.Size(62, 20);
            this.statValue4.TabIndex = 11;
            this.statValue4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue4.ValueChanged += new System.EventHandler(this.statValue4_ValueChanged);
            // 
            // textBox7
            // 
            this.textBox7.Enabled = false;
            this.textBox7.Location = new System.Drawing.Point(12, 142);
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new System.Drawing.Size(27, 20);
            this.textBox7.TabIndex = 10;
            this.textBox7.Text = "4";
            this.textBox7.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue3
            // 
            this.statValue3.Location = new System.Drawing.Point(199, 116);
            this.statValue3.Name = "statValue3";
            this.statValue3.Size = new System.Drawing.Size(62, 20);
            this.statValue3.TabIndex = 8;
            this.statValue3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue3.ValueChanged += new System.EventHandler(this.statValue3_ValueChanged);
            // 
            // textBox6
            // 
            this.textBox6.Enabled = false;
            this.textBox6.Location = new System.Drawing.Point(12, 116);
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(27, 20);
            this.textBox6.TabIndex = 7;
            this.textBox6.Text = "3";
            this.textBox6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue2
            // 
            this.statValue2.Location = new System.Drawing.Point(199, 90);
            this.statValue2.Name = "statValue2";
            this.statValue2.Size = new System.Drawing.Size(62, 20);
            this.statValue2.TabIndex = 5;
            this.statValue2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue2.ValueChanged += new System.EventHandler(this.statValue2_ValueChanged);
            // 
            // textBox4
            // 
            this.textBox4.Enabled = false;
            this.textBox4.Location = new System.Drawing.Point(12, 90);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(27, 20);
            this.textBox4.TabIndex = 4;
            this.textBox4.Text = "2";
            this.textBox4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // statValue1
            // 
            this.statValue1.Location = new System.Drawing.Point(199, 64);
            this.statValue1.Name = "statValue1";
            this.statValue1.Size = new System.Drawing.Size(62, 20);
            this.statValue1.TabIndex = 2;
            this.statValue1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.statValue1.ValueChanged += new System.EventHandler(this.statValue1_ValueChanged);
            // 
            // textBox5
            // 
            this.textBox5.Enabled = false;
            this.textBox5.Location = new System.Drawing.Point(12, 64);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(27, 20);
            this.textBox5.TabIndex = 1;
            this.textBox5.Text = "1";
            this.textBox5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupItem
            // 
            this.groupItem.Controls.Add(this.itemEntry);
            this.groupItem.Controls.Add(this.buttonUpdate);
            this.groupItem.Controls.Add(this.tbName);
            this.groupItem.Controls.Add(this.buttonClear);
            this.groupItem.Controls.Add(this.buttonLoad);
            this.groupItem.Enabled = false;
            this.groupItem.Location = new System.Drawing.Point(12, 12);
            this.groupItem.Name = "groupItem";
            this.groupItem.Size = new System.Drawing.Size(299, 83);
            this.groupItem.TabIndex = 3;
            this.groupItem.TabStop = false;
            this.groupItem.Text = "Item";
            // 
            // itemEntry
            // 
            this.itemEntry.Location = new System.Drawing.Point(7, 19);
            this.itemEntry.Maximum = new decimal(new int[] {
            99999,
            0,
            0,
            0});
            this.itemEntry.Name = "itemEntry";
            this.itemEntry.Size = new System.Drawing.Size(103, 20);
            this.itemEntry.TabIndex = 59;
            this.itemEntry.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.itemEntry.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.itemEntry_KeyPress_1);
            // 
            // buttonUpdate
            // 
            this.buttonUpdate.Location = new System.Drawing.Point(116, 45);
            this.buttonUpdate.Name = "buttonUpdate";
            this.buttonUpdate.Size = new System.Drawing.Size(85, 31);
            this.buttonUpdate.TabIndex = 4;
            this.buttonUpdate.Text = "Update";
            this.buttonUpdate.UseVisualStyleBackColor = true;
            this.buttonUpdate.Click += new System.EventHandler(this.buttonUpdate_Click_1);
            // 
            // tbName
            // 
            this.tbName.Location = new System.Drawing.Point(116, 19);
            this.tbName.Name = "tbName";
            this.tbName.ReadOnly = true;
            this.tbName.Size = new System.Drawing.Size(174, 20);
            this.tbName.TabIndex = 3;
            // 
            // buttonClear
            // 
            this.buttonClear.Location = new System.Drawing.Point(204, 45);
            this.buttonClear.Name = "buttonClear";
            this.buttonClear.Size = new System.Drawing.Size(86, 31);
            this.buttonClear.TabIndex = 2;
            this.buttonClear.Text = "Clear";
            this.buttonClear.UseVisualStyleBackColor = true;
            this.buttonClear.Click += new System.EventHandler(this.buttonClear_Click_1);
            // 
            // buttonLoad
            // 
            this.buttonLoad.Location = new System.Drawing.Point(6, 45);
            this.buttonLoad.Name = "buttonLoad";
            this.buttonLoad.Size = new System.Drawing.Size(104, 31);
            this.buttonLoad.TabIndex = 1;
            this.buttonLoad.Text = "Load";
            this.buttonLoad.UseVisualStyleBackColor = true;
            this.buttonLoad.Click += new System.EventHandler(this.buttonLoad_Click_1);
            // 
            // ActualItemIndexTxt
            // 
            this.ActualItemIndexTxt.Location = new System.Drawing.Point(781, 24);
            this.ActualItemIndexTxt.Name = "ActualItemIndexTxt";
            this.ActualItemIndexTxt.ReadOnly = true;
            this.ActualItemIndexTxt.Size = new System.Drawing.Size(26, 20);
            this.ActualItemIndexTxt.TabIndex = 4;
            // 
            // UpperRangeTxt
            // 
            this.UpperRangeTxt.Location = new System.Drawing.Point(845, 24);
            this.UpperRangeTxt.Name = "UpperRangeTxt";
            this.UpperRangeTxt.ReadOnly = true;
            this.UpperRangeTxt.Size = new System.Drawing.Size(26, 20);
            this.UpperRangeTxt.TabIndex = 5;
            // 
            // ItemGoBackBtn
            // 
            this.ItemGoBackBtn.Enabled = false;
            this.ItemGoBackBtn.Location = new System.Drawing.Point(781, 61);
            this.ItemGoBackBtn.Name = "ItemGoBackBtn";
            this.ItemGoBackBtn.Size = new System.Drawing.Size(42, 23);
            this.ItemGoBackBtn.TabIndex = 7;
            this.ItemGoBackBtn.Text = "<<";
            this.ItemGoBackBtn.UseVisualStyleBackColor = true;
            this.ItemGoBackBtn.Click += new System.EventHandler(this.ItemGoBackBtn_Click);
            // 
            // ItemGoForwardBtn
            // 
            this.ItemGoForwardBtn.Enabled = false;
            this.ItemGoForwardBtn.Location = new System.Drawing.Point(829, 61);
            this.ItemGoForwardBtn.Name = "ItemGoForwardBtn";
            this.ItemGoForwardBtn.Size = new System.Drawing.Size(42, 23);
            this.ItemGoForwardBtn.TabIndex = 8;
            this.ItemGoForwardBtn.Text = ">>";
            this.ItemGoForwardBtn.UseVisualStyleBackColor = true;
            this.ItemGoForwardBtn.Click += new System.EventHandler(this.ItemGoForwardBtn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1026, 517);
            this.Controls.Add(this.ItemGoForwardBtn);
            this.Controls.Add(this.ItemGoBackBtn);
            this.Controls.Add(this.UpperRangeTxt);
            this.Controls.Add(this.ActualItemIndexTxt);
            this.Controls.Add(this.groupItem);
            this.Controls.Add(this.groupBoxAll);
            this.Controls.Add(this.groupBox1);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(1042, 556);
            this.MinimumSize = new System.Drawing.Size(1042, 556);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ItemTemplate Editor";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBoxAll.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.armorValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spiritValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.intellectValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.staminaValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.agilityValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.strengthValue)).EndInit();
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcatcd1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcat1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellppm1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellcd1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellCharges1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellId1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spellTrigger1)).EndInit();
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.resArcane)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.resShadow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.resFrost)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.resNature)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.resFire)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.resHoly)).EndInit();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMax1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgType1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dmgMin1)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.armor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue10)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue9)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statValue1)).EndInit();
            this.groupItem.ResumeLayout(false);
            this.groupItem.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.itemEntry)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        // Token: 0x04000004 RID: 4
        private string _loadedEntry;

        // Token: 0x04000006 RID: 6
        private TextBox tbHost;

        // Token: 0x04000007 RID: 7
        private GroupBox groupBox1;

        // Token: 0x04000008 RID: 8
        private Button buttonDisconnect;

        // Token: 0x04000009 RID: 9
        private Button buttonConnect;

        // Token: 0x0400000A RID: 10
        private GroupBox groupBoxAll;

        // Token: 0x0400000B RID: 11
        private GroupBox groupBox4;

        // Token: 0x0400000D RID: 13
        private NumericUpDown statValue8;

        // Token: 0x0400000E RID: 14
        private TextBox textBox11;

        // Token: 0x04000010 RID: 16
        private NumericUpDown statValue7;

        // Token: 0x04000011 RID: 17
        private TextBox textBox10;

        // Token: 0x04000013 RID: 19
        private NumericUpDown statValue6;

        // Token: 0x04000014 RID: 20
        private TextBox textBox9;

        // Token: 0x04000016 RID: 22
        private NumericUpDown statValue5;

        // Token: 0x04000017 RID: 23
        private TextBox textBox8;

        // Token: 0x04000019 RID: 25
        private NumericUpDown statValue4;

        // Token: 0x0400001A RID: 26
        private TextBox textBox7;

        // Token: 0x0400001C RID: 28
        private NumericUpDown statValue3;

        // Token: 0x0400001D RID: 29
        private TextBox textBox6;

        // Token: 0x0400001F RID: 31
        private NumericUpDown statValue2;

        // Token: 0x04000020 RID: 32
        private TextBox textBox4;

        // Token: 0x04000022 RID: 34
        private NumericUpDown statValue1;

        // Token: 0x04000023 RID: 35
        private TextBox textBox5;

        // Token: 0x04000024 RID: 36
        private GroupBox groupItem;

        // Token: 0x04000025 RID: 37
        private Button buttonUpdate;

        // Token: 0x04000026 RID: 38
        private TextBox tbName;

        // Token: 0x04000027 RID: 39
        private Button buttonClear;

        // Token: 0x04000028 RID: 40
        private Button buttonLoad;

        // Token: 0x0400002A RID: 42
        private NumericUpDown statValue10;

        // Token: 0x0400002B RID: 43
        private TextBox textBox13;

        // Token: 0x0400002D RID: 45
        private NumericUpDown statValue9;

        // Token: 0x0400002E RID: 46
        private TextBox textBox12;

        // Token: 0x0400002F RID: 47
        private GroupBox groupBox7;

        // Token: 0x04000030 RID: 48
        private Label label12;

        // Token: 0x04000031 RID: 49
        private Label label11;

        // Token: 0x04000032 RID: 50
        private Label label10;

        // Token: 0x04000033 RID: 51
        private Label label9;

        // Token: 0x04000034 RID: 52
        private NumericUpDown spellcatcd5;

        // Token: 0x04000035 RID: 53
        private NumericUpDown spellcatcd4;

        // Token: 0x04000036 RID: 54
        private NumericUpDown spellcatcd3;

        // Token: 0x04000037 RID: 55
        private NumericUpDown spellcatcd2;

        // Token: 0x04000038 RID: 56
        private NumericUpDown spellcatcd1;

        // Token: 0x04000039 RID: 57
        private NumericUpDown spellcat5;

        // Token: 0x0400003A RID: 58
        private NumericUpDown spellcat4;

        // Token: 0x0400003B RID: 59
        private NumericUpDown spellcat3;

        // Token: 0x0400003C RID: 60
        private NumericUpDown spellcat2;

        // Token: 0x0400003D RID: 61
        private NumericUpDown spellcat1;

        // Token: 0x0400003E RID: 62
        private NumericUpDown spellppm5;

        // Token: 0x0400003F RID: 63
        private NumericUpDown spellcd5;

        // Token: 0x04000040 RID: 64
        private NumericUpDown spellppm4;

        // Token: 0x04000041 RID: 65
        private NumericUpDown spellcd4;

        // Token: 0x04000042 RID: 66
        private NumericUpDown spellppm3;

        // Token: 0x04000043 RID: 67
        private NumericUpDown spellcd3;

        // Token: 0x04000044 RID: 68
        private NumericUpDown spellppm2;

        // Token: 0x04000045 RID: 69
        private NumericUpDown spellcd2;

        // Token: 0x04000046 RID: 70
        private NumericUpDown spellppm1;

        // Token: 0x04000047 RID: 71
        private NumericUpDown spellcd1;

        // Token: 0x04000048 RID: 72
        private Label label6;

        // Token: 0x04000049 RID: 73
        private Label label7;

        // Token: 0x0400004A RID: 74
        private Label label8;

        // Token: 0x0400004B RID: 75
        private NumericUpDown spellCharges5;

        // Token: 0x0400004C RID: 76
        private NumericUpDown spellCharges4;

        // Token: 0x0400004D RID: 77
        private NumericUpDown spellCharges3;

        // Token: 0x0400004E RID: 78
        private NumericUpDown spellCharges2;

        // Token: 0x0400004F RID: 79
        private NumericUpDown spellCharges1;

        // Token: 0x04000050 RID: 80
        private NumericUpDown spellId5;

        // Token: 0x04000051 RID: 81
        private NumericUpDown spellTrigger5;

        // Token: 0x04000052 RID: 82
        private TextBox textBox24;

        // Token: 0x04000053 RID: 83
        private NumericUpDown spellId4;

        // Token: 0x04000054 RID: 84
        private NumericUpDown spellTrigger4;

        // Token: 0x04000055 RID: 85
        private TextBox textBox25;

        // Token: 0x04000056 RID: 86
        private NumericUpDown spellId3;

        // Token: 0x04000057 RID: 87
        private NumericUpDown spellTrigger3;

        // Token: 0x04000058 RID: 88
        private TextBox textBox26;

        // Token: 0x04000059 RID: 89
        private NumericUpDown spellId2;

        // Token: 0x0400005A RID: 90
        private NumericUpDown spellTrigger2;

        // Token: 0x0400005B RID: 91
        private TextBox textBox27;

        // Token: 0x0400005C RID: 92
        private NumericUpDown spellId1;

        // Token: 0x0400005D RID: 93
        private NumericUpDown spellTrigger1;

        // Token: 0x0400005E RID: 94
        private TextBox textBox29;

        // Token: 0x0400005F RID: 95
        private GroupBox groupBox6;

        // Token: 0x04000060 RID: 96
        private TextBox textBox18;

        // Token: 0x04000061 RID: 97
        private TextBox textBox17;

        // Token: 0x04000062 RID: 98
        private TextBox textBox16;

        // Token: 0x04000063 RID: 99
        private TextBox textBox15;

        // Token: 0x04000064 RID: 100
        private TextBox textBox14;

        // Token: 0x04000065 RID: 101
        private NumericUpDown resArcane;

        // Token: 0x04000066 RID: 102
        private NumericUpDown resShadow;

        // Token: 0x04000067 RID: 103
        private NumericUpDown resFrost;

        // Token: 0x04000068 RID: 104
        private NumericUpDown resNature;

        // Token: 0x04000069 RID: 105
        private NumericUpDown resFire;

        // Token: 0x0400006A RID: 106
        private NumericUpDown resHoly;

        // Token: 0x0400006B RID: 107
        private TextBox textBox28;

        // Token: 0x0400006C RID: 108
        private GroupBox groupBox5;

        // Token: 0x0400006D RID: 109
        private Label label5;

        // Token: 0x0400006E RID: 110
        private Label label4;

        // Token: 0x0400006F RID: 111
        private Label label3;

        // Token: 0x04000070 RID: 112
        private NumericUpDown dmgMax5;

        // Token: 0x04000071 RID: 113
        private NumericUpDown dmgMax4;

        // Token: 0x04000072 RID: 114
        private NumericUpDown dmgMax3;

        // Token: 0x04000073 RID: 115
        private NumericUpDown dmgMax2;

        // Token: 0x04000074 RID: 116
        private NumericUpDown dmgMax1;

        // Token: 0x04000075 RID: 117
        private NumericUpDown dmgType5;

        // Token: 0x04000076 RID: 118
        private NumericUpDown dmgMin5;

        // Token: 0x04000077 RID: 119
        private TextBox textBox19;

        // Token: 0x04000078 RID: 120
        private NumericUpDown dmgType4;

        // Token: 0x04000079 RID: 121
        private NumericUpDown dmgMin4;

        // Token: 0x0400007A RID: 122
        private TextBox textBox20;

        // Token: 0x0400007B RID: 123
        private NumericUpDown dmgType3;

        // Token: 0x0400007C RID: 124
        private NumericUpDown dmgMin3;

        // Token: 0x0400007D RID: 125
        private TextBox textBox21;

        // Token: 0x0400007E RID: 126
        private NumericUpDown dmgType2;

        // Token: 0x0400007F RID: 127
        private NumericUpDown dmgMin2;

        // Token: 0x04000080 RID: 128
        private TextBox textBox22;

        // Token: 0x04000081 RID: 129
        private NumericUpDown dmgType1;

        // Token: 0x04000082 RID: 130
        private NumericUpDown dmgMin1;

        // Token: 0x04000083 RID: 131
        private TextBox textBox23;

        // Token: 0x04000084 RID: 132
        private Label label2;

        // Token: 0x04000085 RID: 133
        private Label label1;

        // Token: 0x04000086 RID: 134
        private Label labelStatus;

        // Token: 0x04000087 RID: 135
        private NumericUpDown itemEntry;

        // Token: 0x04000088 RID: 136
        private TextBox tbDatabase;

        // Token: 0x04000089 RID: 137
        private TextBox tbPassword;

        // Token: 0x0400008A RID: 138
        private TextBox tbLogin;

        // Token: 0x0400008B RID: 139
        private TextBox textBox1;

        // Token: 0x0400008C RID: 140
        private NumericUpDown armor;

        #endregion

        private ComboBox StatTypeSelector1;
        private ComboBox StatTypeSelector10;
        private ComboBox StatTypeSelector9;
        private ComboBox StatTypeSelector8;
        private ComboBox StatTypeSelector7;
        private ComboBox StatTypeSelector6;
        private ComboBox StatTypeSelector5;
        private ComboBox StatTypeSelector4;
        private ComboBox StatTypeSelector3;
        private ComboBox StatTypeSelector2;
        private TextBox ActualItemIndexTxt;
        private TextBox UpperRangeTxt;
        private Button ItemGoBackBtn;
        private Button ItemGoForwardBtn;
        private GroupBox groupBox2;
        private NumericUpDown armorValue;
        private NumericUpDown spiritValue;
        private NumericUpDown intellectValue;
        private NumericUpDown staminaValue;
        private NumericUpDown agilityValue;
        private NumericUpDown strengthValue;
        private Label label18;
        private Label label17;
        private Label label16;
        private Label label15;
        private Label label14;
        private Label label13;
        private Label label19;
        private ComboBox spellName5;
        private ComboBox spellName4;
        private ComboBox spellName3;
        private ComboBox spellName2;
        private ComboBox spellName1;
    }
}

