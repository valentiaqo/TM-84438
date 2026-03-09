.class Lio/appium/android/apis/graphics/Sweep$SampleView;
.super Landroid/view/View;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Sweep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDoTiming:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotate:F

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/Sweep$SampleView;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/Sweep$SampleView;->setFocusableInTouchMode(Z)V

    .line 45
    const/high16 v0, 0x43200000    # 160.0f

    .line 46
    .local v0, "x":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 47
    .local v1, "y":F
    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    .line 51
    iget-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    return-void

    .line 47
    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0xffff01
        -0xff0100
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x42a00000    # 80.0f

    .line 55
    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 56
    .local v3, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x43200000    # 160.0f

    .line 57
    .local v4, "x":F
    const/high16 v5, 0x42c80000    # 100.0f

    .line 59
    .local v5, "y":F
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 61
    iget-object v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    invoke-virtual {v6, v7, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 62
    iget-object v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    iget-object v7, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 63
    iget v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    iput v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    .line 64
    iget v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 65
    const/4 v6, 0x0

    iput v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    .line 67
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    .line 69
    iget-boolean v6, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    if-eqz v6, :cond_2

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    .local v1, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x14

    if-ge v0, v6, :cond_1

    .line 72
    invoke-virtual {p1, v4, v5, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    .line 75
    const-string v6, "skia"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sweep ms = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-double v8, v1

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "i":I
    .end local v1    # "now":J
    :goto_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {p1, v4, v5, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 85
    :sswitch_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->isDither()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-boolean v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    .line 90
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method
