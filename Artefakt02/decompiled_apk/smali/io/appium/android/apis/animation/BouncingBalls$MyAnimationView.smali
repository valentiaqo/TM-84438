.class public Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;
.super Landroid/view/View;
.source "BouncingBalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/BouncingBalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BLUE:I = -0x7f7f01

.field private static final CYAN:I = -0x7f0001

.field private static final GREEN:I = -0x7f0080

.field private static final RED:I = -0x7f80


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

.field final synthetic this$0:Lio/appium/android/apis/animation/BouncingBalls;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/BouncingBalls;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 63
    iput-object p1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->this$0:Lio/appium/android/apis/animation/BouncingBalls;

    .line 64
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 70
    const-string v1, "backgroundColor"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, "colorAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 73
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        -0x7f80
        -0x7f7f01
    .end array-data
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 153
    new-instance v9, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 154
    .local v9, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 155
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 156
    .local v10, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v14, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v14, v10}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 157
    .local v14, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, p1, v2

    invoke-virtual {v14, v2}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 158
    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, p2, v2

    invoke-virtual {v14, v2}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 159
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v15

    double-to-int v13, v2

    .line 160
    .local v13, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v15

    double-to-int v11, v2

    .line 161
    .local v11, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v15

    double-to-int v8, v2

    .line 162
    .local v8, "blue":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v13, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x8

    or-int/2addr v2, v3

    or-int v5, v2, v8

    .line 163
    .local v5, "color":I
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    .line 164
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

    .line 165
    .local v6, "darkColor":I
    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42160000    # 37.5f

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 167
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 168
    invoke-virtual {v14, v12}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-object v14
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 176
    iget-object v2, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 177
    .local v1, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 82
    const/16 v18, 0x0

    .line 149
    :goto_0
    return v18

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v12

    .line 87
    .local v12, "newBall":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v15

    .line 88
    .local v15, "startY":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42480000    # 50.0f

    sub-float v8, v18, v19

    .line 89
    .local v8, "endY":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v11, v0

    .line 90
    .local v11, "h":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 91
    .local v9, "eventY":F
    const/high16 v18, 0x43fa0000    # 500.0f

    sub-float v19, v11, v9

    div-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 92
    .local v7, "duration":I
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v8, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 93
    .local v4, "bounceAnim":Landroid/animation/ValueAnimator;
    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-instance v18, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v21

    const/high16 v22, 0x41c80000    # 25.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 97
    .local v13, "squashAnim1":Landroid/animation/ValueAnimator;
    div-int/lit8 v18, v7, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 99
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 100
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const-string v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v21

    const/high16 v22, 0x42480000    # 50.0f

    add-float v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 103
    .local v14, "squashAnim2":Landroid/animation/ValueAnimator;
    div-int/lit8 v18, v7, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 105
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 106
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x41c80000    # 25.0f

    add-float v21, v21, v8

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 109
    .local v16, "stretchAnim1":Landroid/animation/ValueAnimator;
    div-int/lit8 v18, v7, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 111
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    const/16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    const-string v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v12}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v21

    const/high16 v22, 0x41c80000    # 25.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 115
    .local v17, "stretchAnim2":Landroid/animation/ValueAnimator;
    div-int/lit8 v18, v7, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 117
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 119
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    aput v15, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 121
    .local v5, "bounceBackAnim":Landroid/animation/ValueAnimator;
    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    .local v6, "bouncer":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 128
    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 129
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 133
    .local v10, "fadeAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v18, 0xfa

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    new-instance v18, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;-><init>(Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 144
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 147
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 132
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
