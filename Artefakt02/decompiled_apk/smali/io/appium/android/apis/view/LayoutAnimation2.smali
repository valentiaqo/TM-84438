.class public Lio/appium/android/apis/view/LayoutAnimation2;
.super Landroid/app/ListActivity;
.source "LayoutAnimation2.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bordeaux"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Lyon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Marseille"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Nancy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Paris"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Toulouse"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Strasbourg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation2;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    iget-object v5, p0, Lio/appium/android/apis/view/LayoutAnimation2;->mStrings:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/LayoutAnimation2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 39
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 40
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 47
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 50
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v9, v11, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 51
    .local v9, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0}, Lio/appium/android/apis/view/LayoutAnimation2;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 52
    .local v10, "listView":Landroid/widget/ListView;
    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 53
    return-void
.end method
