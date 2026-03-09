.class public Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;
.super Landroid/view/View;
.source "AnimatorEvents.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimatorEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field animation:Landroid/animation/Animator;

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

.field endImmediately:Z

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimatorEvents;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimatorEvents;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x41c80000    # 25.0f

    .line 113
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    .line 114
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->endImmediately:Z

    .line 115
    invoke-direct {p0, v1, v1}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 116
    return-void
.end method

.method private createAnimation()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 119
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    if-nez v4, :cond_0

    .line 120
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v5, "y"

    new-array v6, v9, [F

    iget-object v7, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v7}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    sub-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 122
    .local v3, "yAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 123
    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 124
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v5, "x"

    new-array v6, v9, [F

    iget-object v7, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v7}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    iget-object v7, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v7}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v7

    const/high16 v8, 0x43960000    # 300.0f

    add-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 130
    .local v2, "xAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 131
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 132
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 133
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 137
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 138
    .local v1, "alphaSeq":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 140
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    .line 141
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v3, v5, v10

    aput-object v2, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 142
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v4, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaSeq":Landroid/animation/AnimatorSet;
    .end local v2    # "xAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "yAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 135
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 171
    new-instance v8, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v8}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 172
    .local v8, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 173
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 174
    .local v9, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v13, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v13, v9}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 175
    .local v13, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p1, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 176
    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, p2, v1

    invoke-virtual {v13, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 177
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v12, v1

    .line 178
    .local v12, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v10, v1

    .line 179
    .local v10, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v14

    double-to-int v7, v1

    .line 180
    .local v7, "blue":I
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v12, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x8

    or-int/2addr v1, v2

    or-int v4, v1, v7

    .line 181
    .local v4, "color":I
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 182
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

    .line 183
    .local v5, "darkColor":I
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x42160000    # 37.5f

    const/high16 v2, 0x41480000    # 12.5f

    const/high16 v3, 0x42480000    # 50.0f

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 185
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    invoke-virtual {v13, v11}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 187
    return-object v13
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->createAnimation()V

    .line 162
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 163
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->createAnimation()V

    .line 167
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 168
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 222
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 214
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 230
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 208
    :goto_0
    iget-boolean v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->endImmediately:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 211
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 199
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->invalidate()V

    .line 200
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    return-void
.end method

.method public startAnimation(Z)V
    .locals 2
    .param p1, "endImmediately"    # Z

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 147
    iput-boolean p1, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->endImmediately:Z

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 153
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 156
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->createAnimation()V

    .line 157
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 158
    return-void
.end method
