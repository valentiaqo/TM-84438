.class public Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceAdminSampleReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 940
    const v0, 0x7f0c01ec

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 945
    const v0, 0x7f0c01e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 935
    const v0, 0x7f0c01e7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 950
    const v0, 0x7f0c01e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 965
    const-string v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 967
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 969
    .local v4, "expr":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v4, v7

    .line 970
    .local v0, "delta":J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_0

    const/4 v3, 0x1

    .line 971
    .local v3, "expired":Z
    :goto_0
    if-eqz v3, :cond_1

    const v7, 0x7f0c01e4

    :goto_1
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 974
    const-string v7, "DeviceAdminSample"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 970
    .end local v3    # "expired":Z
    .end local v6    # "message":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 971
    .restart local v3    # "expired":Z
    :cond_1
    const v7, 0x7f0c01e5

    goto :goto_1
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 955
    const v0, 0x7f0c01ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 960
    const v0, 0x7f0c01eb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 929
    const v1, 0x7f0c01e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "status":Ljava/lang/String;
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 931
    return-void
.end method
