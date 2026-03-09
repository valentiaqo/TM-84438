.class public Lio/appium/android/apis/animation/LayoutAnimationsHideShow;
.super Landroid/app/Activity;
.source "LayoutAnimationsHideShow.java"


# instance fields
.field container:Landroid/view/ViewGroup;

.field private mTransitioner:Landroid/animation/LayoutTransition;

.field private numButtons:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->numButtons:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)Landroid/animation/LayoutTransition;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .prologue
    .line 43
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .prologue
    .line 43
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->setupCustomAnimations()V

    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .prologue
    .line 43
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->resetTransition()V

    return-void
.end method

.method private resetTransition()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 110
    return-void
.end method

.method private setupCustomAnimations()V
    .locals 18

    .prologue
    .line 114
    const-string v15, "left"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 116
    .local v9, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v15, "top"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 118
    .local v14, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string v15, "right"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 120
    .local v10, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v15, "bottom"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 122
    .local v8, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string v15, "scaleX"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_4

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 124
    .local v12, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v15, "scaleY"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 126
    .local v13, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x6

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    const/16 v16, 0x2

    aput-object v10, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v12, v15, v16

    const/16 v16, 0x5

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 129
    .local v3, "changeIn":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 130
    new-instance v15, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$4;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 140
    .local v5, "kf0":Landroid/animation/Keyframe;
    const v15, 0x3f7ff972    # 0.9999f

    const/high16 v16, 0x43b40000    # 360.0f

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 141
    .local v6, "kf1":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 142
    .local v7, "kf2":Landroid/animation/Keyframe;
    const-string v15, "rotation"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    const/16 v17, 0x2

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 144
    .local v11, "pvhRotation":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    const/16 v16, 0x2

    aput-object v10, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v11, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 147
    .local v4, "changeOut":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 148
    new-instance v15, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    const/4 v15, 0x0

    const-string v16, "rotationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_6

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 158
    .local v1, "animIn":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 159
    new-instance v15, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$6;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v1, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    const/4 v15, 0x0

    const-string v16, "rotationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_7

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 169
    .local v2, "animOut":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 170
    new-instance v15, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$7;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 120
    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 122
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 124
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 156
    :array_6
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 167
    :array_7
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v6, 0x7f030075

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->setContentView(I)V

    .line 55
    const v6, 0x7f0900dc

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 57
    .local v2, "hideGoneCB":Landroid/widget/CheckBox;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    .line 58
    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_0

    .line 64
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, "newButton":Landroid/widget/Button;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    new-instance v6, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;

    invoke-direct {v6, p0, v2}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "newButton":Landroid/widget/Button;
    :cond_0
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->resetTransition()V

    .line 76
    const v6, 0x7f0900d4

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 77
    .local v5, "parent":Landroid/view/ViewGroup;
    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    const v6, 0x7f0900d5

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "addButton":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;

    invoke-direct {v6, p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v6, 0x7f0900d6

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 90
    .local v1, "customAnimCB":Landroid/widget/CheckBox;
    new-instance v6, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;

    invoke-direct {v6, p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void
.end method
