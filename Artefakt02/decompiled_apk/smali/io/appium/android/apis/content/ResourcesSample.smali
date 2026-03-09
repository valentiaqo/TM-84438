.class public Lio/appium/android/apis/content/ResourcesSample;
.super Landroid/app/Activity;
.source "ResourcesSample.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0c00f4

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v5, 0x7f0300b2

    invoke-virtual {p0, v5}, Lio/appium/android/apis/content/ResourcesSample;->setContentView(I)V

    .line 58
    invoke-virtual {p0, v6}, Lio/appium/android/apis/content/ResourcesSample;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "cs":Ljava/lang/CharSequence;
    const v5, 0x7f090056

    invoke-virtual {p0, v5}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 60
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, v6}, Lio/appium/android/apis/content/ResourcesSample;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "str":Ljava/lang/String;
    const v5, 0x7f090058

    invoke-virtual {p0, v5}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .restart local v4    # "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object v0, p0

    .line 76
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 80
    const v5, 0x7f090133

    invoke-virtual {p0, v5}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 81
    .restart local v4    # "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
