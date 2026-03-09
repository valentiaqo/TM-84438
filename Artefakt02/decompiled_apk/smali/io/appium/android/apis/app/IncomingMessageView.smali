.class public Lio/appium/android/apis/app/IncomingMessageView;
.super Landroid/app/Activity;
.source "IncomingMessageView.java"


# static fields
.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessageView;->setContentView(I)V

    .line 47
    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessageView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x7f0c0360

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    return-void
.end method
