.class public Lio/appium/android/apis/app/MessengerService;
.super Landroid/app/Service;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/MessengerService$IncomingHandler;
    }
.end annotation


# static fields
.field static final MSG_REGISTER_CLIENT:I = 0x1

.field static final MSG_SET_VALUE:I = 0x3

.field static final MSG_UNREGISTER_CLIENT:I = 0x2


# instance fields
.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field final mMessenger:Landroid/os/Messenger;

.field mNM:Landroid/app/NotificationManager;

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/MessengerService;->mValue:I

    .line 117
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lio/appium/android/apis/app/MessengerService$IncomingHandler;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/MessengerService$IncomingHandler;-><init>(Lio/appium/android/apis/app/MessengerService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const v7, 0x7f0c008f

    const/4 v6, 0x0

    .line 150
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/MessengerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 153
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 157
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/RemoteService$Controller;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 161
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c0091

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/MessengerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 166
    iget-object v3, p0, Lio/appium/android/apis/app/MessengerService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/MessengerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerService;->mNM:Landroid/app/NotificationManager;

    .line 124
    invoke-direct {p0}, Lio/appium/android/apis/app/MessengerService;->showNotification()V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    const v0, 0x7f0c0090

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method
