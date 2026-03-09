.class public Lio/appium/android/apis/app/IncomingMessage;
.super Landroid/app/Activity;
.source "IncomingMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static makeMessageIntentStack(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 72
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/content/Intent;

    .line 77
    .local v0, "intents":[Landroid/content/Intent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    .line 82
    aget-object v1, v0, v5

    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "App"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    .line 85
    aget-object v1, v0, v6

    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "App/Notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/IncomingMessageView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    .line 90
    aget-object v1, v0, v4

    const-string v2, "from"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 91
    aget-object v1, v0, v4

    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f030062

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessage;->setContentView(I)V

    .line 44
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/IncomingMessage$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/IncomingMessage$1;-><init>(Lio/appium/android/apis/app/IncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0900be

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 52
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/IncomingMessage$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/IncomingMessage$2;-><init>(Lio/appium/android/apis/app/IncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method showAppNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0c0360

    const/4 v8, 0x0

    .line 103
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/IncomingMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 106
    .local v3, "nm":Landroid/app/NotificationManager;
    const-string v1, "Joe"

    .line 108
    .local v1, "from":Ljava/lang/CharSequence;
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    rem-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    .line 111
    const-string v2, "kthx. meet u for dinner. cul8r"

    .line 118
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {p0, v1, v2}, Lio/appium/android/apis/app/IncomingMessage;->makeMessageIntentStack(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x10000000

    invoke-static {p0, v8, v6, v7}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 122
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p0, v9, v6}, Lio/appium/android/apis/app/IncomingMessage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "tickerText":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification;

    const v6, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 129
    .local v4, "notif":Landroid/app/Notification;
    invoke-virtual {v4, p0, v1, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 134
    const/4 v6, -0x1

    iput v6, v4, Landroid/app/Notification;->defaults:I

    .line 141
    invoke-virtual {v3, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 142
    return-void

    .line 109
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v4    # "notif":Landroid/app/Notification;
    .end local v5    # "tickerText":Ljava/lang/String;
    :pswitch_0
    const-string v2, "r u hungry?  i am starved"

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 110
    .end local v2    # "message":Ljava/lang/CharSequence;
    :pswitch_1
    const-string v2, "im nearby u"

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showInterstitialNotification()V
    .locals 11

    .prologue
    const v10, 0x7f0c0360

    const/4 v8, 0x0

    .line 152
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/IncomingMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 155
    .local v4, "nm":Landroid/app/NotificationManager;
    const-string v1, "Dianne"

    .line 157
    .local v1, "from":Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    .line 160
    const-string v3, "meet u soon. dont b late!"

    .line 167
    .local v3, "message":Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lio/appium/android/apis/app/IncomingMessageInterstitial;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "from"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 169
    const-string v7, "message"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 170
    const v7, 0x10008000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    const/high16 v7, 0x10000000

    invoke-static {p0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 175
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {p0, v10, v7}, Lio/appium/android/apis/app/IncomingMessage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "tickerText":Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    const v7, 0x7f02005d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 182
    .local v5, "notif":Landroid/app/Notification;
    invoke-virtual {v5, p0, v1, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    const/4 v7, -0x1

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 194
    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 195
    return-void

    .line 158
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v5    # "notif":Landroid/app/Notification;
    .end local v6    # "tickerText":Ljava/lang/String;
    :pswitch_0
    const-string v3, "i am ready for some dinner"

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 159
    .end local v3    # "message":Ljava/lang/CharSequence;
    :pswitch_1
    const-string v3, "how about thai down the block?"

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
