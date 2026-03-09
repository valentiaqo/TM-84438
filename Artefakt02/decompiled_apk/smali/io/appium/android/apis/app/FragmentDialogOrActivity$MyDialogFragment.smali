.class public Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;
.super Landroid/app/DialogFragment;
.source "FragmentDialogOrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentDialogOrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v2, 0x7f03005c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "tv":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "tv":Landroid/view/View;
    const-string v2, "This is an instance of MyDialogFragment"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v1
.end method
