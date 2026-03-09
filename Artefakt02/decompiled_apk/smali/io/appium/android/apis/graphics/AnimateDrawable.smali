.class public Lio/appium/android/apis/graphics/AnimateDrawable;
.super Lio/appium/android/apis/graphics/ProxyDrawable;
.source "AnimateDrawable.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "target"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/ProxyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "target"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/ProxyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 36
    iput-object p2, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/AnimateDrawable;->getProxy()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 60
    .local v2, "sc":I
    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 61
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 65
    iget-object v3, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 67
    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 70
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v2    # "sc":I
    :cond_1
    return-void
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 44
    iput-object p1, p0, Lio/appium/android/apis/graphics/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 45
    return-void
.end method
