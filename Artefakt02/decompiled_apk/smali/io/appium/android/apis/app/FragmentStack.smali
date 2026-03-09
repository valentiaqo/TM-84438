.class public Lio/appium/android/apis/app/FragmentStack;
.super Landroid/app/Activity;
.source "FragmentStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentStack$CountingFragment;
    }
.end annotation


# instance fields
.field mStackLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    .line 88
    return-void
.end method


# virtual methods
.method addFragmentToStack()V
    .locals 3

    .prologue
    .line 72
    iget v2, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    .line 75
    iget v2, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentStack$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentStack$CountingFragment;

    move-result-object v1

    .line 79
    .local v1, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentStack;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 80
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 83
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f030050

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/FragmentStack;->setContentView(I)V

    .line 41
    const v3, 0x7f0900ab

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/FragmentStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/app/FragmentStack$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/FragmentStack$1;-><init>(Lio/appium/android/apis/app/FragmentStack;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v3, 0x7f0900ac

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/FragmentStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 48
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/app/FragmentStack$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/FragmentStack$2;-><init>(Lio/appium/android/apis/app/FragmentStack;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    if-nez p1, :cond_0

    .line 56
    iget v3, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    invoke-static {v3}, Lio/appium/android/apis/app/FragmentStack$CountingFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentStack$CountingFragment;

    move-result-object v2

    .line 57
    .local v2, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentStack;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v3, 0x7f0900aa

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "newFragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v3, "level"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "level"

    iget v1, p0, Lio/appium/android/apis/app/FragmentStack;->mStackLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    return-void
.end method
