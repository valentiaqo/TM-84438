.class public Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;
.super Landroid/view/View;
.source "AnimationCloning.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimationCloning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field animation:Landroid/animation/AnimatorSet;

.field public final balls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/appium/android/apis/animation/ShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationCloning;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimationCloning;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x41c80000    # 25.0f

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationCloning;

    .line 68
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 64
    const/4 v4, 0x0

    iput-object v4, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 70
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->mDensity:F

    .line 72
    const/high16 v4, 0x42480000    # 50.0f

    invoke-direct {p0, v4, v5}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    .line 73
    .local v0, "ball0":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v4, 0x43160000    # 150.0f

    invoke-direct {p0, v4, v5}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v1

    .line 74
    .local v1, "ball1":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-direct {p0, v4, v5}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v2

    .line 75
    .local v2, "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v4, 0x43af0000    # 350.0f

    invoke-direct {p0, v4, v5}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v3

    .line 76
    .local v3, "ball3":Lio/appium/android/apis/animation/ShapeHolder;
    return-void
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 107
    new-instance v9, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 108
    .local v9, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iget v3, v0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->mDensity:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 109
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 110
    .local v10, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v14, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v14, v10}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 111
    .local v14, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, p1, v2

    invoke-virtual {v14, v2}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 112
    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, p2, v2

    invoke-virtual {v14, v2}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 113
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v13, v2

    .line 114
    .local v13, "red":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v11, v2

    .line 115
    .local v11, "green":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v8, v2

    .line 116
    .local v8, "blue":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v13, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x8

    or-int/2addr v2, v3

    or-int v5, v2, v8

    .line 117
    .local v5, "color":I
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    .line 118
    .local v12, "paint":Landroid/graphics/Paint;
    const/high16 v2, -0x1000000

    div-int/lit8 v3, v13, 0x4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    div-int/lit8 v3, v11, 0x4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    div-int/lit8 v3, v8, 0x4

    or-int v6, v2, v3

    .line 119
    .local v6, "darkColor":I
    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42160000    # 37.5f

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 121
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 122
    invoke-virtual {v14, v12}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v14
.end method

.method private createAnimation()V
    .locals 14

    .prologue
    .line 79
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_0

    .line 80
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v7, 0x0

    const/4 v11, 0x0

    aput v11, v10, v7

    const/4 v11, 0x1

    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v7

    int-to-float v12, v7

    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v7}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v7

    sub-float v7, v12, v7

    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 82
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 83
    .local v1, "anim2":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/animation/ShapeHolder;

    .line 87
    .local v4, "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v7, "y"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 89
    .local v2, "animDown":Landroid/animation/ObjectAnimator;
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    const-string v7, "y"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 92
    .local v3, "animUp":Landroid/animation/ObjectAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    .local v5, "s1":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 95
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 98
    .local v6, "s2":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 100
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 101
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 102
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 104
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v2    # "animDown":Landroid/animation/ObjectAnimator;
    .end local v3    # "animUp":Landroid/animation/ObjectAnimator;
    .end local v4    # "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    .end local v5    # "s1":Landroid/animation/AnimatorSet;
    .end local v6    # "s2":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 144
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->invalidate()V

    .line 145
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 131
    .local v1, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->createAnimation()V

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 141
    return-void
.end method
