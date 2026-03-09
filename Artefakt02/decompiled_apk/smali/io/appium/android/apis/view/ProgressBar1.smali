.class public Lio/appium/android/apis/view/ProgressBar1;
.super Landroid/app/Activity;
.source "ProgressBar1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
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

    .line 39
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->requestWindowFeature(I)Z

    .line 40
    const v2, 0x7f03009d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->setContentView(I)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->setProgressBarVisibility(Z)V

    .line 43
    const v2, 0x7f0900a8

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 44
    .local v1, "progressHorizontal":Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->setProgress(I)V

    .line 45
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->setSecondaryProgress(I)V

    .line 47
    const v2, 0x7f09010b

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/ProgressBar1$1;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/ProgressBar1$1;-><init>(Lio/appium/android/apis/view/ProgressBar1;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v2, 0x7f09010a

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 57
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/ProgressBar1$2;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/ProgressBar1$2;-><init>(Lio/appium/android/apis/view/ProgressBar1;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x7f09010d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 66
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/ProgressBar1$3;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/ProgressBar1$3;-><init>(Lio/appium/android/apis/view/ProgressBar1;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v2, 0x7f09010c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ProgressBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 75
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/ProgressBar1$4;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/ProgressBar1$4;-><init>(Lio/appium/android/apis/view/ProgressBar1;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
