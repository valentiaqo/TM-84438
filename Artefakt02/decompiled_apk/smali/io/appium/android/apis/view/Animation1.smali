.class public Lio/appium/android/apis/view/Animation1;
.super Landroid/app/Activity;
.source "Animation1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    const v1, 0x7f040015

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 42
    .local v0, "shake":Landroid/view/animation/Animation;
    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Animation1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Animation1;->setContentView(I)V

    .line 36
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Animation1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "loginButton":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
