.class public Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;
.super Landroid/view/View;
.source "ReversingAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/ReversingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
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

.field final synthetic this$0:Lio/appium/android/apis/animation/ReversingAnimation;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/ReversingAnimation;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41c80000    # 25.0f

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->this$0:Lio/appium/android/apis/animation/ReversingAnimation;

    .line 74
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 70
    iput-object v2, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 71
    iput-object v2, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 75
    invoke-direct {p0, v1, v1}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 76
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v1, "y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 103
    new-instance v8, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v8}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 104
    .local v8, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 105
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 106
    .local v9, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v13, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v13, v9}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 107
    .local v13, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p1, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 108
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p2, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v12, v1

    .line 110
    .local v12, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v10, v1

    .line 111
    .local v10, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v7, v1

    .line 112
    .local v7, "blue":I
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v12, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x8

    or-int/2addr v1, v2

    or-int v4, v1, v7

    .line 113
    .local v4, "color":I
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 114
    .local v11, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    div-int/lit8 v2, v12, 0x4

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    div-int/lit8 v2, v10, 0x4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    div-int/lit8 v2, v7, 0x4

    or-int v5, v1, v2

    .line 115
    .local v5, "darkColor":I
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x42160000    # 37.5f

    const/high16 v2, 0x41480000    # 12.5f

    const/high16 v3, 0x42480000    # 50.0f

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 117
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    invoke-virtual {v13, v11}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 119
    return-object v13
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 131
    invoke-virtual {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->invalidate()V

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-void
.end method

.method public reverseAnimation()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 95
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "seekTime"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 100
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    return-void
.end method
