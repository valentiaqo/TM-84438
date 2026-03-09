.class public Lio/appium/android/apis/app/SaveRestoreState;
.super Landroid/app/Activity;
.source "SaveRestoreState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getSavedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SaveRestoreState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SaveRestoreState;->setContentView(I)V

    .line 81
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SaveRestoreState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-void
.end method

.method setSavedText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SaveRestoreState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
