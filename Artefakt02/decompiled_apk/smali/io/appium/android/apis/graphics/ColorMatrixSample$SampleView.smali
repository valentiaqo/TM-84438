.class Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;
.super Landroid/view/View;
.source "ColorMatrixSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ColorMatrixSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

.method private static setContrast(Landroid/graphics/ColorMatrix;F)V
    .locals 6
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 56
    add-float v0, p1, v5

    .line 57
    .local v0, "scale":F
    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v2, v3

    .line 58
    .local v1, "translate":F
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v1, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v0, v2, v3

    const/16 v3, 0xd

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v1, v2, v3

    const/16 v3, 0xf

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v4, v2, v3

    const/16 v3, 0x12

    aput v5, v2, v3

    const/16 v3, 0x13

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 63
    return-void
.end method

.method private static setContrastScaleOnly(Landroid/graphics/ColorMatrix;F)V
    .locals 6
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 76
    add-float v0, p1, v5

    .line 77
    .local v0, "scale":F
    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v2, v3

    .line 78
    .local v1, "translate":F
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v4, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v0, v2, v3

    const/16 v3, 0xd

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v4, v2, v3

    const/16 v3, 0xf

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v4, v2, v3

    const/16 v3, 0x12

    aput v5, v2, v3

    const/16 v3, 0x13

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 83
    return-void
.end method

.method private static setContrastTranslateOnly(Landroid/graphics/ColorMatrix;F)V
    .locals 6
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 66
    add-float v0, p1, v5

    .line 67
    .local v0, "scale":F
    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v2, v3

    .line 68
    .local v1, "translate":F
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v1, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v1, v2, v3

    const/16 v3, 0xf

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v4, v2, v3

    const/16 v3, 0x12

    aput v5, v2, v3

    const/16 v3, 0x13

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 73
    return-void
.end method

.method private static setTranslate(Landroid/graphics/ColorMatrix;FFFF)V
    .locals 4
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "dr"    # F
    .param p2, "dg"    # F
    .param p3, "db"    # F
    .param p4, "da"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p3, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0x13

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v7, 0x41200000    # 10.0f

    .line 86
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 87
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v3, 0x41a00000    # 20.0f

    .line 88
    .local v3, "x":F
    const/high16 v4, 0x41a00000    # 20.0f

    .line 90
    .local v4, "y":F
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 97
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    iget v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mAngle:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    iput v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mAngle:F

    .line 98
    iget v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mAngle:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    .line 99
    const/4 v5, 0x0

    iput v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mAngle:F

    .line 103
    :cond_0
    iget v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mAngle:F

    div-float v1, v5, v8

    .line 105
    .local v1, "contrast":F
    invoke-static {v0, v1}, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->setContrast(Landroid/graphics/ColorMatrix;F)V

    .line 106
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 107
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    invoke-static {v0, v1}, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->setContrastScaleOnly(Landroid/graphics/ColorMatrix;F)V

    .line 110
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 111
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v3, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-static {v0, v1}, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->setContrastTranslateOnly(Landroid/graphics/ColorMatrix;F)V

    .line 114
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-virtual {p1, v5, v3, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorMatrixSample$SampleView;->invalidate()V

    .line 119
    return-void
.end method
