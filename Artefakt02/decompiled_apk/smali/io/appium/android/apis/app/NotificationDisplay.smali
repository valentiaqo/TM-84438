.class public Lio/appium/android/apis/app/NotificationDisplay;
.super Landroid/app/Activity;
.source "NotificationDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/NotificationDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f0300d9

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/NotificationDisplay;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lio/appium/android/apis/app/NotificationDisplay;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x4

    const/4 v6, -0x2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/app/NotificationDisplay;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 50
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, "container":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lio/appium/android/apis/app/NotificationDisplay;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "moodimg"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/NotificationDisplay;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method
