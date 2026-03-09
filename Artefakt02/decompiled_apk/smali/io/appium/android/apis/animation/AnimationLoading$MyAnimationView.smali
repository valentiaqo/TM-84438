.class public Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;
.super Landroid/view/View;
.source "AnimationLoading.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimationLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BALL_SIZE:F = 100.0f


# instance fields
.field animation:Landroid/animation/Animator;

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

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationLoading;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimationLoading;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 75
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationLoading;

    .line 76
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    .line 77
    invoke-direct {p0, v2, v2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 78
    const/high16 v0, 0x43480000    # 200.0f

    invoke-direct {p0, v0, v2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 79
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-direct {p0, v0, v2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 80
    const/high16 v0, 0x43fa0000    # 500.0f

    const v1, -0xff0100

    invoke-direct {p0, v0, v2, v1}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FFI)V

    .line 81
    return-void
.end method

.method private addBall(FF)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 136
    invoke-direct/range {p0 .. p2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v12

    .line 137
    .local v12, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x4063600000000000L    # 155.0

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    double-to-int v11, v2

    .line 138
    .local v11, "red":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x4063600000000000L    # 155.0

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    double-to-int v9, v2

    .line 139
    .local v9, "green":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x4063600000000000L    # 155.0

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    double-to-int v8, v2

    .line 140
    .local v8, "blue":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v11, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v9, 0x8

    or-int/2addr v2, v3

    or-int v5, v2, v8

    .line 141
    .local v5, "color":I
    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    .line 142
    .local v10, "paint":Landroid/graphics/Paint;
    const/high16 v2, -0x1000000

    div-int/lit8 v3, v11, 0x4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    div-int/lit8 v3, v9, 0x4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    div-int/lit8 v3, v8, 0x4

    or-int v6, v2, v3

    .line 143
    .local v6, "darkColor":I
    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42160000    # 37.5f

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 145
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private addBall(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    .line 131
    .local v0, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v0, p3}, Lio/appium/android/apis/animation/ShapeHolder;->setColor(I)V

    .line 132
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private createAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 84
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationLoading;

    .line 86
    .local v1, "appContext":Landroid/content/Context;
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    if-nez v5, :cond_0

    .line 87
    const v5, 0x7f040010

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 89
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 92
    const/high16 v5, 0x7f040000

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 94
    .local v3, "fader":Landroid/animation/ValueAnimator;
    new-instance v5, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;

    invoke-direct {v5, p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;-><init>(Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    const v5, 0x7f040001

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    .line 103
    .local v4, "seq":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 105
    const v5, 0x7f040002

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 107
    .local v2, "colorizer":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 109
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    .line 110
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 112
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "colorizer":Landroid/animation/ObjectAnimator;
    .end local v3    # "fader":Landroid/animation/ValueAnimator;
    .end local v4    # "seq":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 120
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 121
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 122
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 123
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 124
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v2, p1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 125
    invoke-virtual {v2, p2}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 126
    return-object v2
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 160
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->invalidate()V

    .line 161
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/animation/ShapeHolder;

    .line 162
    .local v0, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 163
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/animation/ShapeHolder;

    .line 152
    .local v0, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 156
    .end local v0    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createAnimation()V

    .line 116
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 117
    return-void
.end method
