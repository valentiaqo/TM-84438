.class public Lio/appium/android/apis/view/InternalSelectionFocus;
.super Landroid/app/Activity;
.source "InternalSelectionFocus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, -0x1

    const/16 v6, 0xa

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 55
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v5, "left column"

    invoke-direct {v1, p0, v8, v5}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .local v1, "leftColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v1, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {v1, v6, v6, v6, v6}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v2, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v5, "middle column"

    invoke-direct {v2, p0, v8, v5}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 61
    .local v2, "middleColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v2, v6, v6, v6, v6}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v4, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v5, "right column"

    invoke-direct {v4, p0, v8, v5}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    .local v4, "rightColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v4, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v4, v6, v6, v6, v6}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionFocus;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method
