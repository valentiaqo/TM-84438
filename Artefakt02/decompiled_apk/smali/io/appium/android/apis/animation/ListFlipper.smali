.class public Lio/appium/android/apis/animation/ListFlipper;
.super Landroid/app/Activity;
.source "ListFlipper.java"


# static fields
.field private static final DURATION:I = 0x5dc

.field private static final LIST_STRINGS_EN:[Ljava/lang/String;

.field private static final LIST_STRINGS_FR:[Ljava/lang/String;


# instance fields
.field private accelerator:Landroid/view/animation/Interpolator;

.field private decelerator:Landroid/view/animation/Interpolator;

.field mEnglishList:Landroid/widget/ListView;

.field mFrenchList:Landroid/widget/ListView;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "One"

    aput-object v1, v0, v3

    const-string v1, "Two"

    aput-object v1, v0, v4

    const-string v1, "Three"

    aput-object v1, v0, v5

    const-string v1, "Four"

    aput-object v1, v0, v6

    const-string v1, "Five"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Six"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/animation/ListFlipper;->LIST_STRINGS_EN:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Un"

    aput-object v1, v0, v3

    const-string v1, "Deux"

    aput-object v1, v0, v4

    const-string v1, "Trois"

    aput-object v1, v0, v5

    const-string v1, "Quatre"

    aput-object v1, v0, v6

    const-string v1, "Le Five"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Six"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/animation/ListFlipper;->LIST_STRINGS_FR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/ListFlipper;->accelerator:Landroid/view/animation/Interpolator;

    .line 96
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/ListFlipper;->decelerator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/animation/ListFlipper;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/ListFlipper;

    .prologue
    .line 42
    invoke-direct {p0}, Lio/appium/android/apis/animation/ListFlipper;->flipit()V

    return-void
.end method

.method private flipit()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x2

    .line 100
    iget-object v4, p0, Lio/appium/android/apis/animation/ListFlipper;->mEnglishList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 101
    iget-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mFrenchList:Landroid/widget/ListView;

    .line 102
    .local v3, "visibleList":Landroid/widget/ListView;
    iget-object v1, p0, Lio/appium/android/apis/animation/ListFlipper;->mEnglishList:Landroid/widget/ListView;

    .line 107
    .local v1, "invisibleList":Landroid/widget/ListView;
    :goto_0
    const-string v4, "rotationY"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    .local v2, "visToInvis":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v4, p0, Lio/appium/android/apis/animation/ListFlipper;->accelerator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    const-string v4, "rotationY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    .local v0, "invisToVis":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    iget-object v4, p0, Lio/appium/android/apis/animation/ListFlipper;->decelerator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    new-instance v4, Lio/appium/android/apis/animation/ListFlipper$2;

    invoke-direct {v4, p0, v3, v0, v1}, Lio/appium/android/apis/animation/ListFlipper$2;-><init>(Lio/appium/android/apis/animation/ListFlipper;Landroid/widget/ListView;Landroid/animation/ObjectAnimator;Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 123
    return-void

    .line 104
    .end local v0    # "invisToVis":Landroid/animation/ObjectAnimator;
    .end local v1    # "invisibleList":Landroid/widget/ListView;
    .end local v2    # "visToInvis":Landroid/animation/ObjectAnimator;
    .end local v3    # "visibleList":Landroid/widget/ListView;
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/animation/ListFlipper;->mFrenchList:Landroid/widget/ListView;

    .line 105
    .restart local v1    # "invisibleList":Landroid/widget/ListView;
    iget-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mEnglishList:Landroid/widget/ListView;

    .restart local v3    # "visibleList":Landroid/widget/ListView;
    goto :goto_0

    .line 107
    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 110
    :array_1
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x1090003

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f0300bb

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/ListFlipper;->setContentView(I)V

    .line 73
    const v3, 0x7f090134

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/ListFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mEnglishList:Landroid/widget/ListView;

    .line 74
    const v3, 0x7f090135

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/ListFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mFrenchList:Landroid/widget/ListView;

    .line 77
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v3, Lio/appium/android/apis/animation/ListFlipper;->LIST_STRINGS_EN:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 80
    .local v0, "adapterEn":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v3, Lio/appium/android/apis/animation/ListFlipper;->LIST_STRINGS_FR:[Ljava/lang/String;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 83
    .local v1, "adapterFr":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mEnglishList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mFrenchList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v3, p0, Lio/appium/android/apis/animation/ListFlipper;->mFrenchList:Landroid/widget/ListView;

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setRotationY(F)V

    .line 87
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/ListFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 88
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/ListFlipper$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/animation/ListFlipper$1;-><init>(Lio/appium/android/apis/animation/ListFlipper;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
