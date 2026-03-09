.class public Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;
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
    name = "LockWipeFragment"
.end annotation


# instance fields
.field private mLockScreen:Landroid/preference/PreferenceScreen;

.field private mLockWipeCategory:Landroid/preference/PreferenceCategory;

.field private mMaxFailures:Landroid/preference/EditTextPreference;

.field private mMaxTimeScreenLock:Landroid/preference/EditTextPreference;

.field private mWipeAppData:Landroid/preference/PreferenceScreen;

.field private mWipeData:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private promptForRealDeviceWipe(Z)V
    .locals 4
    .param p1, "wipeAllData"    # Z

    .prologue
    .line 753
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    .line 755
    .local v0, "activity":Lio/appium/android/apis/app/DeviceAdminSample;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 756
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c01d5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 757
    const v2, 0x7f0c01d6

    new-instance v3, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    invoke-direct {v3, p0, v0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;-><init>(Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;Lio/appium/android/apis/app/DeviceAdminSample;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    const v2, 0x7f0c01d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 784
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 658
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 659
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->addPreferencesFromResource(I)V

    .line 661
    const-string v0, "key_category_lock_wipe"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mLockWipeCategory:Landroid/preference/PreferenceCategory;

    .line 662
    const-string v0, "key_max_time_screen_lock"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxTimeScreenLock:Landroid/preference/EditTextPreference;

    .line 663
    const-string v0, "key_max_fails_before_wipe"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxFailures:Landroid/preference/EditTextPreference;

    .line 664
    const-string v0, "key_lock_screen"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mLockScreen:Landroid/preference/PreferenceScreen;

    .line 665
    const-string v0, "key_wipe_data"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeData:Landroid/preference/PreferenceScreen;

    .line 666
    const-string v0, "key_wipe_data_all"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeAppData:Landroid/preference/PreferenceScreen;

    .line 668
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxTimeScreenLock:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 669
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxFailures:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 670
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mLockScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 671
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 672
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeAppData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 673
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 702
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p2

    .line 705
    check-cast v2, Ljava/lang/String;

    .line 706
    .local v2, "valueString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 707
    goto :goto_0

    .line 709
    :cond_2
    const/4 v1, 0x0

    .line 711
    .local v1, "value":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 716
    :goto_1
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxTimeScreenLock:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_4

    .line 717
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    int-to-long v7, v1

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 724
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->reloadSummaries()V

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v7, 0x7f0c01d4

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-virtual {v6, v7, v8}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, "warning":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v6, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 718
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "warning":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxFailures:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_3

    .line 719
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v6, 0x7f0c01cc

    invoke-static {v5, v6}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 722
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v1}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 730
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v1

    .line 733
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mLockScreen:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_2

    .line 734
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v2, 0x7f0c01ca

    invoke-static {v0, v2}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeData:Landroid/preference/PreferenceScreen;

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeAppData:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_5

    .line 740
    :cond_3
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v3, 0x7f0c01cc

    invoke-static {v2, v3}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mWipeAppData:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->promptForRealDeviceWipe(Z)V

    goto :goto_0

    :cond_5
    move v1, v0

    .line 746
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 678
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mLockWipeCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 679
    return-void
.end method

.method protected reloadSummaries()V
    .locals 13

    .prologue
    const-wide/32 v11, 0xea60

    const/4 v10, 0x0

    .line 686
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 689
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 690
    .local v4, "localLong":J
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 691
    .local v1, "globalLong":J
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxTimeScreenLock:Landroid/preference/EditTextPreference;

    div-long v7, v4, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    div-long v8, v1, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    .line 696
    .local v3, "local":I
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    .line 697
    .local v0, "global":I
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mMaxFailures:Landroid/preference/EditTextPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 698
    return-void
.end method
