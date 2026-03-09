.class public Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;
.super Landroid/app/Fragment;
.source "FragmentCustomAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentCustomAnimations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingFragment"
.end annotation


# instance fields
.field mNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static newInstance(I)Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 97
    new-instance v1, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;

    invoke-direct {v1}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;-><init>()V

    .line 100
    .local v1, "f":Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->mNum:I

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const v2, 0x7f03005c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "tv":Landroid/view/View;
    move-object v2, v0

    .line 125
    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->mNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentCustomAnimations$CountingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-object v1
.end method
