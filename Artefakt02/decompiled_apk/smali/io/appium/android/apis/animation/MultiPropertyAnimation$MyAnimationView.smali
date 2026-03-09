.class public Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;
.super Landroid/view/View;
.source "MultiPropertyAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/MultiPropertyAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BALL_SIZE:F = 100.0f


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

.field bounceAnim:Landroid/animation/Animator;

.field final synthetic this$0:Lio/appium/android/apis/animation/MultiPropertyAnimation;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/MultiPropertyAnimation;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->this$0:Lio/appium/android/apis/animation/MultiPropertyAnimation;

    .line 78
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 73
    iput-object v2, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 74
    iput-object v2, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    .line 75
    iput-object v2, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 79
    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 80
    const/high16 v0, 0x43160000    # 150.0f

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 81
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 82
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 83
    return-void
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 144
    new-instance v9, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 145
    .local v9, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 146
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 147
    .local v10, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v14, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v14, v10}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 148
    .local v14, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 149
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 150
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v13, v2

    .line 151
    .local v13, "red":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v11, v2

    .line 152
    .local v11, "green":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide v17, 0x4063600000000000L    # 155.0

    mul-double v15, v15, v17

    add-double/2addr v2, v15

    double-to-int v8, v2

    .line 153
    .local v8, "blue":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v13, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x8

    or-int/2addr v2, v3

    or-int v5, v2, v8

    .line 154
    .local v5, "color":I
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    .line 155
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

    .line 156
    .local v6, "darkColor":I
    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42160000    # 37.5f

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 158
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    invoke-virtual {v14, v12}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v14
.end method

.method private createAnimation()V
    .locals 23

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/animation/ShapeHolder;

    .line 89
    .local v2, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v19, 0x5dc

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 91
    .local v16, "yBouncer":Landroid/animation/ObjectAnimator;
    new-instance v18, Landroid/view/animation/BounceInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    check-cast v2, Lio/appium/android/apis/animation/ShapeHolder;

    .line 95
    .restart local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 97
    .local v13, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 98
    .local v9, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v9, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 100
    .local v15, "yAlphaBouncer":Landroid/animation/ObjectAnimator;
    new-instance v18, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 102
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    check-cast v2, Lio/appium/android/apis/animation/ShapeHolder;

    .line 106
    .restart local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 108
    .local v11, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 110
    .local v10, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v21

    const/high16 v22, 0x42480000    # 50.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 112
    .local v7, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    const/high16 v22, 0x42480000    # 50.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 114
    .local v8, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    const/16 v19, 0x2

    aput-object v7, v18, v19

    const/16 v19, 0x3

    aput-object v8, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 116
    .local v14, "whxyBouncer":Landroid/animation/ObjectAnimator;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 117
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    check-cast v2, Lio/appium/android/apis/animation/ShapeHolder;

    .line 120
    .restart local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    sub-float v21, v21, v22

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 121
    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v3

    .line 122
    .local v3, "ballX":F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 123
    .local v4, "kf0":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x42c80000    # 100.0f

    add-float v19, v19, v3

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 124
    .local v5, "kf1":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x42480000    # 50.0f

    add-float v19, v19, v3

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 125
    .local v6, "kf2":Landroid/animation/Keyframe;
    const-string v18, "x"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    const/16 v20, 0x2

    aput-object v6, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 126
    .local v12, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v12, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 128
    .local v17, "yxBouncer":Landroid/animation/ObjectAnimator;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 129
    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 132
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    move-object/from16 v18, v0

    check-cast v18, Landroid/animation/AnimatorSet;

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    aput-object v15, v19, v20

    const/16 v20, 0x2

    aput-object v14, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    .end local v2    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    .end local v3    # "ballX":F
    .end local v4    # "kf0":Landroid/animation/Keyframe;
    .end local v5    # "kf1":Landroid/animation/Keyframe;
    .end local v6    # "kf2":Landroid/animation/Keyframe;
    .end local v7    # "pvTX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "pvTY":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "pvhH":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "pvhW":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "whxyBouncer":Landroid/animation/ObjectAnimator;
    .end local v15    # "yAlphaBouncer":Landroid/animation/ObjectAnimator;
    .end local v16    # "yBouncer":Landroid/animation/ObjectAnimator;
    .end local v17    # "yxBouncer":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 97
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 174
    invoke-virtual {p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->invalidate()V

    .line 175
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    iget-object v2, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

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

    .line 167
    .local v0, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 171
    .end local v0    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->createAnimation()V

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 141
    return-void
.end method
