.class public Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
.super Landroid/app/Fragment;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 185
    new-instance v1, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    invoke-direct {v1}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;-><init>()V

    .line 188
    .local v1, "f":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 192
    return-object v1
.end method


# virtual methods
.method public getShownIndex()I
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 220
    :goto_0
    return-object v1

    .line 213
    :cond_0
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v1, "scroller":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v2, "text":Landroid/widget/TextView;
    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 217
    .local v0, "padding":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 219
    sget-object v3, Lio/appium/android/apis/Shakespeare;->DIALOGUE:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getShownIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
