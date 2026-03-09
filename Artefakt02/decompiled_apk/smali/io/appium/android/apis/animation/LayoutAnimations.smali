.class public Lio/appium/android/apis/animation/LayoutAnimations;
.super Landroid/app/Activity;
.source "LayoutAnimations.java"


# instance fields
.field container:Landroid/view/ViewGroup;

.field currentAppearingAnim:Landroid/animation/Animator;

.field currentChangingAppearingAnim:Landroid/animation/Animator;

.field currentChangingDisappearingAnim:Landroid/animation/Animator;

.field currentDisappearingAnim:Landroid/animation/Animator;

.field customAppearingAnim:Landroid/animation/Animator;

.field customChangingAppearingAnim:Landroid/animation/Animator;

.field customChangingDisappearingAnim:Landroid/animation/Animator;

.field customDisappearingAnim:Landroid/animation/Animator;

.field defaultAppearingAnim:Landroid/animation/Animator;

.field defaultChangingAppearingAnim:Landroid/animation/Animator;

.field defaultChangingDisappearingAnim:Landroid/animation/Animator;

.field defaultDisappearingAnim:Landroid/animation/Animator;

.field private numButtons:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$008(Lio/appium/android/apis/animation/LayoutAnimations;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimations;

    .prologue
    .line 42
    iget v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    return v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimations;
    .param p1, "x1"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lio/appium/android/apis/animation/LayoutAnimations;->setupTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 13
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 150
    const-string v10, "left"

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 152
    .local v4, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v10, "top"

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 154
    .local v9, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string v10, "right"

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 156
    .local v5, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v10, "bottom"

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_3

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 158
    .local v3, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_4

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 160
    .local v7, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x3

    new-array v11, v11, [F

    fill-array-data v11, :array_5

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 162
    .local v8, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v7, v10, v11

    const/4 v11, 0x5

    aput-object v8, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    .line 165
    iget-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    new-instance v11, Lio/appium/android/apis/animation/LayoutAnimations$7;

    invoke-direct {v11, p0}, Lio/appium/android/apis/animation/LayoutAnimations$7;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 175
    .local v0, "kf0":Landroid/animation/Keyframe;
    const v10, 0x3f7ff972    # 0.9999f

    const/high16 v11, 0x43b40000    # 360.0f

    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 176
    .local v1, "kf1":Landroid/animation/Keyframe;
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 177
    .local v2, "kf2":Landroid/animation/Keyframe;
    const-string v10, "rotation"

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Keyframe;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 179
    .local v6, "pvhRotation":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    .line 182
    iget-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    new-instance v11, Lio/appium/android/apis/animation/LayoutAnimations$8;

    invoke-direct {v11, p0}, Lio/appium/android/apis/animation/LayoutAnimations$8;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    const/4 v10, 0x0

    const-string v11, "rotationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_6

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    .line 192
    iget-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    new-instance v11, Lio/appium/android/apis/animation/LayoutAnimations$9;

    invoke-direct {v11, p0}, Lio/appium/android/apis/animation/LayoutAnimations$9;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    const/4 v10, 0x0

    const-string v11, "rotationX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_7

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    .line 202
    iget-object v10, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    new-instance v11, Lio/appium/android/apis/animation/LayoutAnimations$10;

    invoke-direct {v11, p0}, Lio/appium/android/apis/animation/LayoutAnimations$10;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    return-void

    .line 150
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 154
    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 156
    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 158
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 160
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 190
    :array_6
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 200
    :array_7
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method private setupTransition(Landroid/animation/LayoutTransition;)V
    .locals 8
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    const/4 v6, 0x0

    .line 130
    const v5, 0x7f0900d6

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 131
    .local v3, "customAnimCB":Landroid/widget/CheckBox;
    const v5, 0x7f0900d7

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 132
    .local v0, "appearingCB":Landroid/widget/CheckBox;
    const v5, 0x7f0900d8

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 133
    .local v4, "disappearingCB":Landroid/widget/CheckBox;
    const v5, 0x7f0900d9

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 134
    .local v1, "changingAppearingCB":Landroid/widget/CheckBox;
    const v5, 0x7f0900da

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 135
    .local v2, "changingDisappearingCB":Landroid/widget/CheckBox;
    const/4 v7, 0x2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    :goto_0
    invoke-virtual {p1, v7, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 137
    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    :goto_1
    invoke-virtual {p1, v7, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 139
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    :goto_2
    invoke-virtual {p1, v7, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 142
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    :cond_0
    :goto_3
    invoke-virtual {p1, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 146
    return-void

    .line 135
    :cond_1
    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 137
    :cond_3
    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    goto :goto_1

    :cond_4
    move-object v5, v6

    goto :goto_1

    .line 139
    :cond_5
    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_2

    :cond_6
    move-object v5, v6

    goto :goto_2

    .line 142
    :cond_7
    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v8, 0x7f030073

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->setContentView(I)V

    .line 59
    new-instance v8, Lio/appium/android/apis/animation/FixedGridLayout;

    invoke-direct {v8, p0}, Lio/appium/android/apis/animation/FixedGridLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    .line 60
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 61
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    check-cast v8, Lio/appium/android/apis/animation/FixedGridLayout;

    const/16 v9, 0x5a

    invoke-virtual {v8, v9}, Lio/appium/android/apis/animation/FixedGridLayout;->setCellHeight(I)V

    .line 62
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    check-cast v8, Lio/appium/android/apis/animation/FixedGridLayout;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lio/appium/android/apis/animation/FixedGridLayout;->setCellWidth(I)V

    .line 63
    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    .line 64
    .local v7, "transitioner":Landroid/animation/LayoutTransition;
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v8

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    .line 66
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v8

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    .line 68
    invoke-virtual {v7, v10}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v8

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    .line 70
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v8

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    .line 72
    invoke-direct {p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 73
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentAppearingAnim:Landroid/animation/Animator;

    .line 74
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentDisappearingAnim:Landroid/animation/Animator;

    .line 75
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentChangingAppearingAnim:Landroid/animation/Animator;

    .line 76
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    iput-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentChangingDisappearingAnim:Landroid/animation/Animator;

    .line 78
    const v8, 0x7f0900d4

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 79
    .local v6, "parent":Landroid/view/ViewGroup;
    iget-object v8, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 81
    const v8, 0x7f0900d5

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, "addButton":Landroid/widget/Button;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$1;

    invoke-direct {v8, p0}, Lio/appium/android/apis/animation/LayoutAnimations$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v8, 0x7f0900d6

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 96
    .local v4, "customAnimCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$2;

    invoke-direct {v8, p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations$2;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    const v8, 0x7f0900d7

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 104
    .local v1, "appearingCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$3;

    invoke-direct {v8, p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations$3;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    const v8, 0x7f0900d8

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 110
    .local v5, "disappearingCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$4;

    invoke-direct {v8, p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations$4;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const v8, 0x7f0900d9

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 116
    .local v2, "changingAppearingCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$5;

    invoke-direct {v8, p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations$5;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    const v8, 0x7f0900da

    invoke-virtual {p0, v8}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 122
    .local v3, "changingDisappearingCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$6;

    invoke-direct {v8, p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations$6;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    return-void
.end method
