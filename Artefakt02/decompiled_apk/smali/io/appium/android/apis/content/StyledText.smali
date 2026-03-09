.class public Lio/appium/android/apis/content/StyledText;
.super Landroid/app/Activity;
.source "StyledText.java"


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
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f0300da

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/StyledText;->setContentView(I)V

    .line 46
    const v2, 0x7f0c00f4

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/StyledText;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 47
    .local v0, "str":Ljava/lang/CharSequence;
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/StyledText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
