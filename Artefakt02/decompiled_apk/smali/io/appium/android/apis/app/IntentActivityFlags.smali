.class public Lio/appium/android/apis/app/IntentActivityFlags;
.super Landroid/app/Activity;
.source "IntentActivityFlags.java"


# instance fields
.field private mFlagActivityClearTaskListener:Landroid/view/View$OnClickListener;

.field private mFlagActivityClearTaskPIListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lio/appium/android/apis/app/IntentActivityFlags$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IntentActivityFlags$1;-><init>(Lio/appium/android/apis/app/IntentActivityFlags;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IntentActivityFlags;->mFlagActivityClearTaskListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lio/appium/android/apis/app/IntentActivityFlags$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IntentActivityFlags$2;-><init>(Lio/appium/android/apis/app/IntentActivityFlags;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IntentActivityFlags;->mFlagActivityClearTaskPIListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/IntentActivityFlags;)[Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/IntentActivityFlags;

    .prologue
    .line 20
    invoke-direct {p0}, Lio/appium/android/apis/app/IntentActivityFlags;->buildIntentsToViewsLists()[Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private buildIntentsToViewsLists()[Landroid/content/Intent;
    .locals 5

    .prologue
    .line 44
    const/4 v2, 0x3

    new-array v1, v2, [Landroid/content/Intent;

    .line 49
    .local v1, "intents":[Landroid/content/Intent;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "Views"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 57
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "Views/Lists"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 62
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030068

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IntentActivityFlags;->setContentView(I)V

    .line 28
    const v1, 0x7f0900c5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IntentActivityFlags;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/IntentActivityFlags;->mFlagActivityClearTaskListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f0900c6

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IntentActivityFlags;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 31
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/IntentActivityFlags;->mFlagActivityClearTaskPIListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
