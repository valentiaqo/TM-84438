.class public Lio/appium/android/apis/app/AlarmService_Service;
.super Landroid/app/Service;
.source "AlarmService_Service.java"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mNM:Landroid/app/NotificationManager;

.field mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Lio/appium/android/apis/app/AlarmService_Service$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService_Service$1;-><init>(Lio/appium/android/apis/app/AlarmService_Service;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mTask:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lio/appium/android/apis/app/AlarmService_Service$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService_Service$2;-><init>(Lio/appium/android/apis/app/AlarmService_Service;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlarmService_Service;

    .prologue
    .line 42
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const v7, 0x7f0c00c0

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/AlarmService_Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 103
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 107
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/AlarmService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c00c2

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/AlarmService_Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 116
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 47
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmService_Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    .line 50
    invoke-direct {p0}, Lio/appium/android/apis/app/AlarmService_Service;->showNotification()V

    .line 55
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service;->mTask:Ljava/lang/Runnable;

    const-string v3, "AlarmService_Service"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 65
    const v0, 0x7f0c00c1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    return-void
.end method
