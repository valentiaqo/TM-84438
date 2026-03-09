.class public Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;
.super Landroid/view/View;
.source "AnimationSeeking.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimationSeeking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BALL_SIZE:F = 100.0f

.field private static final BLUE:I = -0x7f7f01

.field private static final CYAN:I = -0x7f0001

.field private static final GREEN:I = -0x7f0080

.field private static final RED:I = -0x7f80


# instance fields
.field animation:Landroid/animation/AnimatorSet;

.field ball:Lio/appium/android/apis/animation/ShapeHolder;

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

.field bounceAnim:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationSeeking;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimationSeeking;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 102
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationSeeking;

    .line 103
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 98
    iput-object v1, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 99
    iput-object v1, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 100
    iput-object v1, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 104
    const/high16 v0, 0x43480000    # 200.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 105
    return-void
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 127
    new-instance v9, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 128
    .local v9, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 129
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 130
    .local v10, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v14, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v14, v10}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 131
    .local v14, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 132
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 133
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v13, v2

    .line 134
    .local v13, "red":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v11, v2

    .line 135
    .local v11, "green":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v8, v2

    .line 136
    .local v8, "blue":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v13, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x8

    or-int/2addr v2, v3

    or-int v5, v2, v8

    .line 137
    .local v5, "color":I
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    .line 138
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

    .line 139
    .local v6, "darkColor":I
    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42160000    # 37.5f

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 141
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    invoke-virtual {v14, v12}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v14
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    .line 108
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v1, "y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->balls:Ljava/util/ArrayList;

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 154
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->invalidate()V

    .line 155
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 157
    .local v0, "playtime":J
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "seekTime"    # J

    .prologue
    .line 122
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->createAnimation()V

    .line 123
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 124
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->createAnimation()V

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 119
    return-void
.end method
