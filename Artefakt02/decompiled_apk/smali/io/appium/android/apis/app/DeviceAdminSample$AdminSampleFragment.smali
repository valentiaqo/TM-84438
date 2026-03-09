.class public Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.super Landroid/preference/PreferenceFragment;
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
    name = "AdminSampleFragment"
.end annotation


# instance fields
.field protected mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

.field protected mAdminActive:Z

.field protected mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected mDeviceAdminSample:Landroid/content/ComponentName;

.field private mResetPassword:Landroid/preference/EditTextPreference;

.field private mSetPassword:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private doResetPassword(Ljava/lang/String;)V
    .locals 6
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 224
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v3, 0x7f0c01c9

    invoke-static {v2, v3}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, p1, v4}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v3, 0x7f0c01ce

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v2, 0x7f0c01cf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "local"    # Ljava/lang/Object;
    .param p2, "global"    # Ljava/lang/Object;

    .prologue
    .line 239
    const v0, 0x7f0c01d1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/DeviceAdminSample;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    .line 156
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 157
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample;->mDeviceAdminSample:Landroid/content/ComponentName;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    .line 158
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v0}, Lio/appium/android/apis/app/DeviceAdminSample;->access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    .line 161
    const-string v0, "key_reset_password"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    .line 162
    const-string v0, "key_set_password"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 212
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 213
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->doResetPassword(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 202
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    const/4 v1, 0x1

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 175
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v0}, Lio/appium/android/apis/app/DeviceAdminSample;->access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    .line 176
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method protected reloadSummaries()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 189
    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    .line 192
    .local v0, "sufficient":Z
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    const v1, 0x7f0c01c7

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 198
    .end local v0    # "sufficient":Z
    :cond_0
    :goto_1
    return-void

    .line 192
    .restart local v0    # "sufficient":Z
    :cond_1
    const v1, 0x7f0c01c8

    goto :goto_0

    .line 195
    .end local v0    # "sufficient":Z
    :cond_2
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
