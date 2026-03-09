.class public Lio/appium/android/apis/animation/CustomEvaluator;
.super Landroid/app/Activity;
.source "CustomEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;,
        Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;,
        Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;,
        Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/CustomEvaluator;->setContentView(I)V

    .line 47
    const v3, 0x7f090036

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/CustomEvaluator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 48
    .local v1, "container":Landroid/widget/LinearLayout;
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;Landroid/content/Context;)V

    .line 49
    .local v0, "animView":Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/CustomEvaluator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/CustomEvaluator$1;

    invoke-direct {v3, p0, v0}, Lio/appium/android/apis/animation/CustomEvaluator$1;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
