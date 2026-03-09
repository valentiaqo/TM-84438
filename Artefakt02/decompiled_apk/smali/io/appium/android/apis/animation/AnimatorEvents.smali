.class public Lio/appium/android/apis/animation/AnimatorEvents;
.super Landroid/app/Activity;
.source "AnimatorEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;
    }
.end annotation


# instance fields
.field cancelText:Landroid/widget/TextView;

.field cancelTextAnimator:Landroid/widget/TextView;

.field endText:Landroid/widget/TextView;

.field endTextAnimator:Landroid/widget/TextView;

.field repeatText:Landroid/widget/TextView;

.field repeatTextAnimator:Landroid/widget/TextView;

.field startText:Landroid/widget/TextView;

.field startTextAnimator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v6, 0x7f030019

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->setContentView(I)V

    .line 57
    const v6, 0x7f090036

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 58
    .local v2, "container":Landroid/widget/LinearLayout;
    new-instance v0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Landroid/content/Context;)V

    .line 59
    .local v0, "animView":Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    const v6, 0x7f09003e

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    .line 61
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 62
    const v6, 0x7f09003f

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    .line 63
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 64
    const v6, 0x7f090040

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    .line 65
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    const v6, 0x7f090041

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    .line 67
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 68
    const v6, 0x7f090042

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    .line 69
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    const v6, 0x7f090043

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    .line 71
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 72
    const v6, 0x7f090044

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    .line 73
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    const v6, 0x7f090045

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    .line 75
    iget-object v6, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 76
    const v6, 0x7f09003d

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 79
    .local v3, "endCB":Landroid/widget/CheckBox;
    const v6, 0x7f090037

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 80
    .local v5, "starter":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/animation/AnimatorEvents$1;

    invoke-direct {v6, p0, v0, v3}, Lio/appium/android/apis/animation/AnimatorEvents$1;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v6, 0x7f09003b

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "canceler":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/animation/AnimatorEvents$2;

    invoke-direct {v6, p0, v0}, Lio/appium/android/apis/animation/AnimatorEvents$2;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v6, 0x7f09003c

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 96
    .local v4, "ender":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/animation/AnimatorEvents$3;

    invoke-direct {v6, p0, v0}, Lio/appium/android/apis/animation/AnimatorEvents$3;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method
