.class public Lio/appium/android/apis/app/FragmentCustomAnimations;
.super Landroid/app/Activity;
.source "FragmentCustomAnimations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;
    }
.end annotation


# instance fields
.field mStackLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    .line 89
    return-void
.end method


# virtual methods
.method addFragmentToStack()V
    .locals 6

    .prologue
    .line 70
    iget v2, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    .line 73
    iget v2, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;

    move-result-object v1

    .line 77
    .local v1, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentCustomAnimations;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 78
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const/high16 v2, 0x7f050000

    const v3, 0x7f050001

    const v4, 0x7f050002

    const v5, 0x7f050003

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 82
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 84
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f030050

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/FragmentCustomAnimations;->setContentView(I)V

    .line 45
    const v3, 0x7f0900ab

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/FragmentCustomAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/app/FragmentCustomAnimations$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/FragmentCustomAnimations$1;-><init>(Lio/appium/android/apis/app/FragmentCustomAnimations;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    if-nez p1, :cond_0

    .line 54
    iget v3, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    invoke-static {v3}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;

    move-result-object v2

    .line 55
    .local v2, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentCustomAnimations;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 56
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v3, 0x7f0900aa

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "newFragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v3, "level"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "level"

    iget v1, p0, Lio/appium/android/apis/app/FragmentCustomAnimations;->mStackLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    return-void
.end method
