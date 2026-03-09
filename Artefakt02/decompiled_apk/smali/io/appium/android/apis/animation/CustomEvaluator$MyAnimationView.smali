.class public Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;
.super Landroid/view/View;
.source "CustomEvaluator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/CustomEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field ball:Lio/appium/android/apis/animation/ShapeHolder;

.field ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

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

.field final synthetic this$0:Lio/appium/android/apis/animation/CustomEvaluator;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/CustomEvaluator;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    .line 120
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 115
    iput-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 116
    iput-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 117
    iput-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    .line 121
    invoke-direct {p0, v2, v2}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 122
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v0, p1, v1}, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;Lio/appium/android/apis/animation/ShapeHolder;)V

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    .line 123
    return-void
.end method

.method private createAnimation()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 127
    new-instance v1, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {v1, v2, v3, v3}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    .line 128
    .local v1, "startXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-direct {v0, v2, v3, v4}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    .line 129
    .local v0, "endXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    const-string v3, "xY"

    new-instance v4, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;

    iget-object v5, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {v4, v5}, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 131
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    .end local v0    # "endXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    .end local v1    # "startXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 142
    new-instance v8, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v8}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 143
    .local v8, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 144
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    .local v9, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v13, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v13, v9}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 146
    .local v13, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p1, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 147
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p2, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v12, v1

    .line 149
    .local v12, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v10, v1

    .line 150
    .local v10, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v7, v1

    .line 151
    .local v7, "blue":I
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v12, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x8

    or-int/2addr v1, v2

    or-int v4, v1, v7

    .line 152
    .local v4, "color":I
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 153
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

    .line 154
    .local v5, "darkColor":I
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x42160000    # 37.5f

    const/high16 v2, 0x41480000    # 12.5f

    const/high16 v3, 0x42480000    # 50.0f

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 156
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    invoke-virtual {v13, v11}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 158
    return-object v13
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 170
    invoke-virtual {p0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->invalidate()V

    .line 171
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->createAnimation()V

    .line 138
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    return-void
.end method
