.class public Lio/appium/android/apis/app/FragmentStackFragment;
.super Landroid/app/Fragment;
.source "FragmentStackFragment.java"


# instance fields
.field mStackLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    return-void
.end method


# virtual methods
.method addFragmentToStack()V
    .locals 3

    .prologue
    .line 76
    iget v2, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    .line 79
    iget v2, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentStack$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentStack$CountingFragment;

    move-result-object v1

    .line 83
    .local v1, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentStackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 84
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 87
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    if-nez p1, :cond_0

    .line 39
    iget v2, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentStack$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentStack$CountingFragment;

    move-result-object v1

    .line 40
    .local v1, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentStackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 41
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 45
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v2, "level"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/app/FragmentStackFragment$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentStackFragment$1;-><init>(Lio/appium/android/apis/app/FragmentStackFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 60
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/app/FragmentStackFragment$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentStackFragment$2;-><init>(Lio/appium/android/apis/app/FragmentStackFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "level"

    iget v1, p0, Lio/appium/android/apis/app/FragmentStackFragment;->mStackLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-void
.end method
