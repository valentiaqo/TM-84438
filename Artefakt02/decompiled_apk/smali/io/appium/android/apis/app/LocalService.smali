.class public Lio/appium/android/apis/app/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LocalService$LocalBinder;
    }
.end annotation


# instance fields
.field private NOTIFICATION:I

.field private final mBinder:Landroid/os/IBinder;

.field private mNM:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const v0, 0x7f0c0080

    iput v0, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    .line 95
    new-instance v0, Lio/appium/android/apis/app/LocalService$LocalBinder;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalService$LocalBinder;-><init>(Lio/appium/android/apis/app/LocalService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private showNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 102
    const v3, 0x7f0c0080

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/LocalService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 109
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/LocalServiceActivities$Controller;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c0082

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/LocalService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 117
    iget-object v3, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    iget v4, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/LocalService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    .line 68
    invoke-direct {p0}, Lio/appium/android/apis/app/LocalService;->showNotification()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 85
    const v0, 0x7f0c0081

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 73
    const-string v0, "LocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    return v0
.end method
