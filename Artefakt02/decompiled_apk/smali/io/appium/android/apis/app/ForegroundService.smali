.class public Lio/appium/android/apis/app/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ForegroundService$Controller;
    }
.end annotation


# static fields
.field static final ACTION_BACKGROUND:Ljava/lang/String; = "io.appium.android.apis.BACKGROUND"

.field static final ACTION_FOREGROUND:Ljava/lang/String; = "io.appium.android.apis.FOREGROUND"

.field private static final mSetForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mNM:Landroid/app/NotificationManager;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 56
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 201
    return-void
.end method


# virtual methods
.method handleCommand(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c00a5

    .line 165
    const-string v3, "io.appium.android.apis.FOREGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/ForegroundService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 170
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 174
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/ForegroundService$Controller;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 178
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c0082

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/ForegroundService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    invoke-virtual {p0, v6, v1}, Lio/appium/android/apis/app/ForegroundService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 186
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v3, "io.appium.android.apis.BACKGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/ForegroundService;->stopForegroundCompat(I)V

    goto :goto_0
.end method

.method invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 119
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    sget-object v3, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    sget-object v3, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForeground"

    sget-object v3, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ForegroundService;->stopForegroundCompat(I)V

    .line 143
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/ForegroundService;->handleCommand(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/ForegroundService;->handleCommand(Landroid/content/Intent;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method stopForegroundCompat(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 106
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 114
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method
