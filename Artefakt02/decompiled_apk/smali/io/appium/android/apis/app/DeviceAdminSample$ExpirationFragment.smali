.class public Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;
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
    name = "ExpirationFragment"
.end annotation


# instance fields
.field private mExpirationCategory:Landroid/preference/PreferenceCategory;

.field private mExpirationStatus:Landroid/preference/PreferenceScreen;

.field private mExpirationTimeout:Landroid/preference/EditTextPreference;

.field private mHistory:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private getExpirationStatus()Ljava/lang/String;
    .locals 13

    .prologue
    .line 609
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v10, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 610
    .local v5, "localExpiration":J
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 611
    .local v2, "globalExpiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 615
    .local v7, "now":J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_0

    .line 616
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e3

    invoke-virtual {v9, v10}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "local":Ljava/lang/String;
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_2

    .line 630
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e3

    invoke-virtual {v9, v10}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "global":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01d1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 618
    .end local v1    # "global":Ljava/lang/String;
    .end local v4    # "local":Ljava/lang/String;
    :cond_0
    sub-long/2addr v5, v7

    .line 619
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->access$200(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "dms":Ljava/lang/String;
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    .line 621
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "local":Ljava/lang/String;
    goto :goto_0

    .line 623
    .end local v4    # "local":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "local":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "dms":Ljava/lang/String;
    :cond_2
    sub-long/2addr v2, v7

    .line 633
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->access$200(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 634
    .restart local v0    # "dms":Ljava/lang/String;
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_3

    .line 635
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "global":Ljava/lang/String;
    goto :goto_1

    .line 637
    .end local v1    # "global":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0c01e4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "global":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 524
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 525
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->addPreferencesFromResource(I)V

    .line 527
    const-string v0, "key_category_expiration"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationCategory:Landroid/preference/PreferenceCategory;

    .line 528
    const-string v0, "key_history"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    .line 529
    const-string v0, "key_expiration_timeout"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    .line 530
    const-string v0, "key_expiration_status"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    .line 532
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 533
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 567
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 587
    :goto_0
    return v4

    :cond_0
    move-object v2, p2

    .line 570
    check-cast v2, Ljava/lang/String;

    .line 571
    .local v2, "valueString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 572
    goto :goto_0

    .line 574
    :cond_1
    const/4 v1, 0x0

    .line 576
    .local v1, "value":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 581
    :goto_1
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_3

    .line 582
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v1}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 586
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->reloadSummaries()V

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v7, 0x7f0c01d4

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-virtual {v6, v7, v8}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "warning":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v6, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 583
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "warning":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_2

    .line 584
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    int-to-long v7, v1

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    :goto_0
    return v1

    .line 595
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_1

    .line 596
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->getExpirationStatus()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "expirationStatus":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    .end local v0    # "expirationStatus":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 540
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 541
    return-void
.end method

.method protected reloadSummaries()V
    .locals 13

    .prologue
    const-wide/32 v11, 0xea60

    const/4 v10, 0x0

    .line 548
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 551
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 552
    .local v4, "local":I
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 553
    .local v1, "global":I
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 557
    .local v5, "localLong":J
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 558
    .local v2, "globalLong":J
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    div-long v8, v5, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    div-long v9, v2, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->getExpirationStatus()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "expirationStatus":Ljava/lang/String;
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    return-void
.end method
