.class public Lio/appium/android/apis/app/NotifyingService;
.super Landroid/app/Service;
.source "NotifyingService.java"


# static fields
.field private static MOOD_NOTIFICATIONS:I


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCondition:Landroid/os/ConditionVariable;

.field private mNM:Landroid/app/NotificationManager;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0300d9

    sput v0, Lio/appium/android/apis/app/NotifyingService;->MOOD_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Lio/appium/android/apis/app/NotifyingService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/NotifyingService$1;-><init>(Lio/appium/android/apis/app/NotifyingService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mTask:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lio/appium/android/apis/app/NotifyingService$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/NotifyingService$2;-><init>(Lio/appium/android/apis/app/NotifyingService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/NotifyingService;II)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/NotifyingService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/app/NotifyingService;->showNotification(II)V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/NotifyingService;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/NotifyingService;

    .prologue
    .line 39
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private showNotification(II)V
    .locals 7
    .param p1, "moodId"    # I
    .param p2, "textId"    # I

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/NotifyingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 102
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 105
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/NotifyingController;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 109
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c0123

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/NotifyingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 114
    iget-object v3, p0, Lio/appium/android/apis/app/NotifyingService;->mNM:Landroid/app/NotificationManager;

    sget v4, Lio/appium/android/apis/app/NotifyingService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 49
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/NotifyingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lio/appium/android/apis/app/NotifyingService;->mNM:Landroid/app/NotificationManager;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/appium/android/apis/app/NotifyingService;->mTask:Ljava/lang/Runnable;

    const-string v3, "NotifyingService"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    .local v0, "notifyingThread":Ljava/lang/Thread;
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lio/appium/android/apis/app/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lio/appium/android/apis/app/NotifyingService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 65
    return-void
.end method
