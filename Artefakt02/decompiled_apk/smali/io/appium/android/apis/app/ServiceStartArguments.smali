.class public Lio/appium/android/apis/app/ServiceStartArguments;
.super Landroid/app/Service;
.source "ServiceStartArguments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ServiceStartArguments$Controller;,
        Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;
    }
.end annotation


# instance fields
.field private mInvokeIntent:Landroid/content/Intent;

.field private mNM:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/ServiceStartArguments;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/ServiceStartArguments;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/ServiceStartArguments;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/ServiceStartArguments;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/ServiceStartArguments;

    .prologue
    .line 54
    invoke-direct {p0}, Lio/appium/android/apis/app/ServiceStartArguments;->hideNotification()V

    return-void
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 199
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 178
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 182
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 186
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0c009c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ServiceStartArguments;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p0, v2, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 190
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 194
    iget-object v2, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mNM:Landroid/app/NotificationManager;

    const v3, 0x7f0c00a3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 104
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mNM:Landroid/app/NotificationManager;

    .line 106
    const v1, 0x7f0c00a3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mInvokeIntent:Landroid/content/Intent;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceLooper:Landroid/os/Looper;

    .line 122
    new-instance v1, Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;

    iget-object v2, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;-><init>(Lio/appium/android/apis/app/ServiceStartArguments;Landroid/os/Looper;)V

    iput-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceHandler:Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 161
    invoke-direct {p0}, Lio/appium/android/apis/app/ServiceStartArguments;->hideNotification()V

    .line 164
    const v0, 0x7f0c00a4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 127
    const-string v1, "ServiceStartArguments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceHandler:Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;

    invoke-virtual {v1}, Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 131
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments;->mServiceHandler:Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/ServiceStartArguments$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    const-string v1, "ServiceStartArguments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "fail"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 153
    :cond_0
    const-string v1, "redeliver"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
