.class public Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;
.super Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionFragment"
.end annotation


# instance fields
.field private mActivateEncryption:Landroid/preference/PreferenceScreen;

.field private mEncryptionCategory:Landroid/preference/PreferenceCategory;

.field private mRequireEncryption:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private statusCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "newStatusCode"    # I

    .prologue
    .line 875
    const v0, 0x7f0c01de

    .line 876
    .local v0, "newStatus":I
    packed-switch p1, :pswitch_data_0

    .line 890
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 878
    :pswitch_0
    const v0, 0x7f0c01df

    .line 879
    goto :goto_0

    .line 881
    :pswitch_1
    const v0, 0x7f0c01e0

    .line 882
    goto :goto_0

    .line 884
    :pswitch_2
    const v0, 0x7f0c01e1

    .line 885
    goto :goto_0

    .line 887
    :pswitch_3
    const v0, 0x7f0c01e2

    goto :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 798
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 799
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->addPreferencesFromResource(I)V

    .line 801
    const-string v0, "key_category_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mEncryptionCategory:Landroid/preference/PreferenceCategory;

    .line 802
    const-string v0, "key_require_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    .line 803
    const-string v0, "key_activate_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    .line 805
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 806
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 807
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 836
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 839
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 840
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 841
    .local v0, "newActive":Z
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 842
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->reloadSummaries()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 850
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v2

    .line 853
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    if-ne p1, v3, :cond_3

    .line 854
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v4, 0x7f0c01cb

    invoke-static {v3, v4}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    if-nez v3, :cond_2

    .line 860
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 861
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c01dc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 862
    const v3, 0x7f0c01dd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 867
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.action.START_ENCRYPTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 871
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 811
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 812
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mEncryptionCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 813
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 814
    return-void
.end method

.method protected reloadSummaries()V
    .locals 9

    .prologue
    .line 821
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 824
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    .line 825
    .local v3, "local":Z
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    .line 826
    .local v2, "global":Z
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 829
    .local v1, "deviceStatusCode":I
    invoke-direct {p0, v1}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->statusCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "deviceStatus":Ljava/lang/String;
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v6, 0x7f0c01d2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "status":Ljava/lang/String;
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 832
    return-void
.end method
