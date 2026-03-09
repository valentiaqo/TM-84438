.class public Lio/appium/android/apis/app/StatusBarNotifications;
.super Landroid/app/Activity;
.source "StatusBarNotifications.java"


# static fields
.field private static MOOD_NOTIFICATIONS:I


# instance fields
.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0300d9

    sput v0, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/StatusBarNotifications;IIZ)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lio/appium/android/apis/app/StatusBarNotifications;->setMood(IIZ)V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/StatusBarNotifications;II)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->setMoodView(II)V

    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/StatusBarNotifications;I)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->setDefault(I)V

    return-void
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/StatusBarNotifications;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;

    .prologue
    .line 35
    iget-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private makeDefaultIntent()Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    const/4 v2, 0x4

    new-array v1, v2, [Landroid/content/Intent;

    .line 170
    .local v1, "intents":[Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v5

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v1, v4

    .line 175
    aget-object v2, v1, v4

    const-string v3, "io.appium.android.apis.Path"

    const-string v4, "App"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v1, v6

    .line 178
    aget-object v2, v1, v6

    const-string v3, "io.appium.android.apis.Path"

    const-string v4, "App/Notification"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v2, 0x3

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 187
    const/high16 v2, 0x8000000

    invoke-static {p0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 189
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private makeMoodIntent(I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "moodId"    # I

    .prologue
    .line 153
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/NotificationDisplay;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "moodimg"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 156
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private setDefault(I)V
    .locals 6
    .param p1, "defaults"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Lio/appium/android/apis/app/StatusBarNotifications;->makeDefaultIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 249
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0c011f

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 251
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02005a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 256
    .local v1, "notification":Landroid/app/Notification;
    const v3, 0x7f0c0123

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 263
    iput p1, v1, Landroid/app/Notification;->defaults:I

    .line 265
    iget-object v3, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 269
    return-void
.end method

.method private setMood(IIZ)V
    .locals 5
    .param p1, "moodId"    # I
    .param p2, "textId"    # I
    .param p3, "showTicker"    # Z

    .prologue
    .line 195
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 198
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "tickerText":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, p1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 205
    .local v0, "notification":Landroid/app/Notification;
    const v3, 0x7f0c0123

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->makeMoodIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, p0, v3, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 210
    iget-object v3, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    return-void

    .line 198
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v2    # "tickerText":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMoodView(II)V
    .locals 5
    .param p1, "moodId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 218
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 221
    .local v1, "notif":Landroid/app/Notification;
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->makeMoodIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 224
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 225
    .local v2, "text":Ljava/lang/CharSequence;
    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 228
    iput p1, v1, Landroid/app/Notification;->icon:I

    .line 231
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lio/appium/android/apis/app/StatusBarNotifications;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300d8

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 232
    .local v0, "contentView":Landroid/widget/RemoteViews;
    const v3, 0x7f09000c

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    const v3, 0x7f0900e6

    invoke-virtual {v0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 234
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 238
    iget-object v3, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f0300d9

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->setContentView(I)V

    .line 51
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    .line 53
    const v1, 0x7f090164

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$1;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f090165

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 62
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$2;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f090166

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 70
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$3;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$3;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 77
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$4;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$4;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 85
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$5;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$5;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f090169

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 92
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$6;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$6;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f09016a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 99
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$7;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$7;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f09016b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 106
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$8;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$8;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f09016c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 113
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$9;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$9;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f09016d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 120
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$10;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$10;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f09016e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 127
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$11;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$11;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f09016f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 134
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$12;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$12;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f0900b4

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 141
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$13;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$13;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
