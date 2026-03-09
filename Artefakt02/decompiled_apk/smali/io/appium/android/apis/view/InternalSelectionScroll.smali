.class public Lio/appium/android/apis/view/InternalSelectionScroll;
.super Landroid/app/Activity;
.source "InternalSelectionScroll.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v4, "sv":Landroid/widget/ScrollView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v5, "svLp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 54
    new-instance v0, Lio/appium/android/apis/view/InternalSelectionView;

    const/16 v6, 0xa

    invoke-direct {v0, p0, v6}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;I)V

    .line 55
    .local v0, "isv":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionScroll;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 56
    .local v3, "screenHeight":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v6, v3, 0x2

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v2, "llLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/InternalSelectionScroll;->setContentView(Landroid/view/View;)V

    .line 63
    return-void
.end method
