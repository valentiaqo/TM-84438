.class public Lio/appium/android/apis/app/FragmentReceiveResult;
.super Landroid/app/Activity;
.source "FragmentReceiveResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0900aa

    const/4 v4, -0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 45
    invoke-virtual {p0, v0, v2}, Lio/appium/android/apis/app/FragmentReceiveResult;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    if-nez p1, :cond_0

    .line 49
    new-instance v3, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    invoke-direct {v3}, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;-><init>()V

    .line 50
    .local v3, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentReceiveResult;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 51
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 53
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v3    # "newFragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method
