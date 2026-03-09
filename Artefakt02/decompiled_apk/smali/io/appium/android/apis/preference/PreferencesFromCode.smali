.class public Lio/appium/android/apis/preference/PreferencesFromCode;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesFromCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 19

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 47
    .local v14, "root":Landroid/preference/PreferenceScreen;
    new-instance v7, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 48
    .local v7, "inlinePrefCat":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0c015d

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 49
    invoke-virtual {v14, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    new-instance v3, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 53
    .local v3, "checkboxPref":Landroid/preference/CheckBoxPreference;
    const-string v17, "checkbox_preference"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 54
    const v17, 0x7f0c0161

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 55
    const v17, 0x7f0c0162

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 56
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    new-instance v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 60
    .local v16, "switchPref":Landroid/preference/SwitchPreference;
    const-string v17, "switch_preference"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 61
    const v17, 0x7f0c0163

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 62
    const v17, 0x7f0c0164

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 63
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    new-instance v5, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 67
    .local v5, "dialogBasedPrefCat":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0c015e

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 68
    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    new-instance v6, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "editTextPref":Landroid/preference/EditTextPreference;
    const v17, 0x7f0c016b

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 73
    const-string v17, "edittext_preference"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 74
    const v17, 0x7f0c0169

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 75
    const v17, 0x7f0c016a

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 76
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    new-instance v10, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 80
    .local v10, "listPref":Landroid/preference/ListPreference;
    const v17, 0x7f080007

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 81
    const v17, 0x7f080008

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 82
    const v17, 0x7f0c016e

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 83
    const-string v17, "list_preference"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 84
    const v17, 0x7f0c016c

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 85
    const v17, 0x7f0c016d

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 86
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    new-instance v9, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 90
    .local v9, "launchPrefCat":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0c015f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 91
    invoke-virtual {v14, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 100
    .local v15, "screenPref":Landroid/preference/PreferenceScreen;
    const-string v17, "screen_preference"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 101
    const v17, 0x7f0c016f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 102
    const v17, 0x7f0c0170

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 103
    invoke-virtual {v9, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    new-instance v11, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v11, "nextScreenCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const-string v17, "next_screen_toggle_preference"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 113
    const v17, 0x7f0c0173

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 114
    const v17, 0x7f0c0174

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 115
    invoke-virtual {v15, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 119
    .local v8, "intentPref":Landroid/preference/PreferenceScreen;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "android.intent.action.VIEW"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "http://www.android.com"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 121
    const v17, 0x7f0c0175

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 122
    const v17, 0x7f0c0176

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 123
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    new-instance v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 127
    .local v13, "prefAttrsCat":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0c0160

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 128
    invoke-virtual {v14, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    new-instance v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 132
    .local v12, "parentCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const v17, 0x7f0c017c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 133
    const v17, 0x7f0c017d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 134
    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    sget-object v17, Lio/appium/android/apis/R$styleable;->TogglePrefAttrs:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/appium/android/apis/preference/PreferencesFromCode;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 140
    .local v2, "a":Landroid/content/res/TypedArray;
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 141
    .local v4, "childCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const v17, 0x7f0c017e

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 142
    const v17, 0x7f0c017f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 143
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 146
    invoke-virtual {v13, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-object v14
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/PreferencesFromCode;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 40
    return-void
.end method
