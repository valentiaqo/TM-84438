.class Lio/appium/android/apis/graphics/Vertices$SampleView;
.super Landroid/view/View;
.source "Vertices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Vertices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private final mIndices:[S

.field private final mInverse:Landroid/graphics/Matrix;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTexs:[F

.field private final mVerts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 36
    const/16 v4, 0xa

    new-array v4, v4, [F

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    .line 37
    const/16 v4, 0xa

    new-array v4, v4, [F

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    .line 38
    const/4 v4, 0x6

    new-array v4, v4, [S

    fill-array-data v4, :array_0

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mIndices:[S

    .line 40
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mInverse:Landroid/graphics/Matrix;

    .line 50
    invoke-virtual {p0, v10}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Vertices$SampleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020007

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    .local v2, "s":Landroid/graphics/Shader;
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 59
    .local v3, "w":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 61
    .local v1, "h":F
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    const/4 v5, 0x0

    div-float v6, v3, v9

    div-float v7, v1, v9

    invoke-static {v4, v5, v6, v7}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 62
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    invoke-static {v4, v10, v8, v8}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 63
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    const/4 v5, 0x2

    invoke-static {v4, v5, v3, v8}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 64
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    const/4 v5, 0x3

    invoke-static {v4, v5, v3, v1}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 65
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    const/4 v5, 0x4

    invoke-static {v4, v5, v8, v1}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 67
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    const/4 v5, 0x0

    div-float v6, v3, v9

    div-float v7, v1, v9

    invoke-static {v4, v5, v6, v7}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 68
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    invoke-static {v4, v10, v8, v8}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 69
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    const/4 v5, 0x2

    invoke-static {v4, v5, v3, v8}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 70
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    const/4 v5, 0x3

    invoke-static {v4, v5, v3, v1}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 71
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    const/4 v5, 0x4

    invoke-static {v4, v5, v8, v1}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 73
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 74
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v12, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 75
    iget-object v4, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 76
    return-void

    .line 38
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x1s
    .end array-data
.end method

.method private static setXY([FIFF)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 44
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    .line 45
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xa

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 79
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 83
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    iget-object v5, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    iget-object v12, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v4

    move v8, v4

    move-object v9, v7

    move v10, v4

    move v11, v4

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 86
    const/4 v0, 0x0

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    iget-object v5, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mTexs:[F

    iget-object v9, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mIndices:[S

    const/4 v11, 0x6

    iget-object v12, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v5

    .line 95
    .local v0, "pt":[F
    iget-object v1, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 96
    iget-object v1, p0, Lio/appium/android/apis/graphics/Vertices$SampleView;->mVerts:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v4, v2, v3}, Lio/appium/android/apis/graphics/Vertices$SampleView;->setXY([FIFF)V

    .line 97
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Vertices$SampleView;->invalidate()V

    .line 98
    return v5
.end method
