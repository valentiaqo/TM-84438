.class Lio/appium/android/apis/graphics/BitmapMesh$SampleView;
.super Landroid/view/View;
.source "BitmapMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/BitmapMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final COUNT:I = 0x1b9

.field private static final HEIGHT:I = 0x14

.field private static final WIDTH:I = 0x14


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mInverse:Landroid/graphics/Matrix;

.field private mLastWarpX:I

.field private mLastWarpY:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mOrig:[F

.field private final mVerts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x372

    const/16 v11, 0x14

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v9, 0x41200000    # 10.0f

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-array v7, v8, [F

    iput-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    .line 42
    new-array v7, v8, [F

    iput-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    .line 44
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    .line 111
    const/16 v7, -0x270f

    iput v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    .line 54
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020007

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 60
    .local v4, "w":F
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 62
    .local v2, "h":F
    const/4 v3, 0x0

    .line 63
    .local v3, "index":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-gt v6, v11, :cond_1

    .line 64
    int-to-float v7, v6

    mul-float/2addr v7, v2

    div-float v1, v7, v10

    .line 65
    .local v1, "fy":F
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-gt v5, v11, :cond_0

    .line 66
    int-to-float v7, v5

    mul-float/2addr v7, v4

    div-float v0, v7, v10

    .line 67
    .local v0, "fx":F
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    invoke-static {v7, v3, v0, v1}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setXY([FIFF)V

    .line 68
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    invoke-static {v7, v3, v0, v1}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setXY([FIFF)V

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "fx":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "fy":F
    .end local v5    # "x":I
    :cond_1
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v9, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 74
    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 75
    return-void
.end method

.method private static setXY([FIFF)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 48
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    .line 49
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 50
    return-void
.end method

.method private warp(FF)V
    .locals 13
    .param p1, "cx"    # F
    .param p2, "cy"    # F

    .prologue
    .line 86
    const v0, 0x461c4000    # 10000.0f

    .line 87
    .local v0, "K":F
    iget-object v8, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    .line 88
    .local v8, "src":[F
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    .line 89
    .local v3, "dst":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v11, 0x372

    if-ge v6, v11, :cond_1

    .line 90
    add-int/lit8 v11, v6, 0x0

    aget v9, v8, v11

    .line 91
    .local v9, "x":F
    add-int/lit8 v11, v6, 0x1

    aget v10, v8, v11

    .line 92
    .local v10, "y":F
    sub-float v4, p1, v9

    .line 93
    .local v4, "dx":F
    sub-float v5, p2, v10

    .line 94
    .local v5, "dy":F
    mul-float v11, v4, v4

    mul-float v12, v5, v5

    add-float v2, v11, v12

    .line 95
    .local v2, "dd":F
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 96
    .local v1, "d":F
    const v11, 0x461c4000    # 10000.0f

    const v12, 0x358637bd    # 1.0E-6f

    add-float/2addr v12, v2

    div-float v7, v11, v12

    .line 98
    .local v7, "pull":F
    const v11, 0x358637bd    # 1.0E-6f

    add-float/2addr v11, v1

    div-float/2addr v7, v11

    .line 101
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_0

    .line 102
    add-int/lit8 v11, v6, 0x0

    aput p1, v3, v11

    .line 103
    add-int/lit8 v11, v6, 0x1

    aput p2, v3, v11

    .line 89
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 105
    :cond_0
    add-int/lit8 v11, v6, 0x0

    mul-float v12, v4, v7

    add-float/2addr v12, v9

    aput v12, v3, v11

    .line 106
    add-int/lit8 v11, v6, 0x1

    mul-float v12, v5, v7

    add-float/2addr v12, v10

    aput v12, v3, v11

    goto :goto_1

    .line 109
    .end local v1    # "d":F
    .end local v2    # "dd":F
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v7    # "pull":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x14

    const/4 v5, 0x0

    .line 78
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    move-object v0, p1

    move v3, v2

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 115
    const/4 v3, 0x2

    new-array v0, v3, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v0, v5

    .line 116
    .local v0, "pt":[F
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 118
    aget v3, v0, v4

    float-to-int v1, v3

    .line 119
    .local v1, "x":I
    aget v3, v0, v5

    float-to-int v2, v3

    .line 120
    .local v2, "y":I
    iget v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpY:I

    if-eq v3, v2, :cond_1

    .line 121
    :cond_0
    iput v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    .line 122
    iput v2, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpY:I

    .line 123
    aget v3, v0, v4

    aget v4, v0, v5

    invoke-direct {p0, v3, v4}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->warp(FF)V

    .line 124
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->invalidate()V

    .line 126
    :cond_1
    return v5
.end method
