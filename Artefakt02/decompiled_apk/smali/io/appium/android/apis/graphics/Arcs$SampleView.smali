.class Lio/appium/android/apis/graphics/Arcs$SampleView;
.super Landroid/view/View;
.source "Arcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Arcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final START_INC:F = 15.0f

.field private static final SWEEP_INC:F = 2.0f


# instance fields
.field private mBigIndex:I

.field private mBigOval:Landroid/graphics/RectF;

.field private mFramePaint:Landroid/graphics/Paint;

.field private mOvals:[Landroid/graphics/RectF;

.field private mPaints:[Landroid/graphics/Paint;

.field private mStart:F

.field private mSweep:F

.field private mUseCenters:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x43a50000    # 330.0f

    const/high16 v8, 0x43870000    # 270.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, v5

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v5

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v5

    const/high16 v1, -0x77010000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v5, v0, v5

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v1, v0, v6

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v6

    const v1, -0x77ff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v6, v0, v6

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v1, v0, v7

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    const v1, -0x77ffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v5, v0, v7

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v3, v3, v7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, -0x77777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x438c0000    # 280.0f

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigOval:Landroid/graphics/RectF;

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-direct {v1, v2, v8, v3, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v5

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-direct {v1, v2, v8, v3, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v6

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x432a0000    # 170.0f

    const/high16 v3, 0x43660000    # 230.0f

    invoke-direct {v1, v2, v8, v3, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v7

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x437a0000    # 250.0f

    const/high16 v4, 0x439b0000    # 310.0f

    invoke-direct {v2, v3, v8, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "oval"    # Landroid/graphics/RectF;
    .param p3, "useCenter"    # Z
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 91
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    iget v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    iget v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 96
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    iget-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigOval:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    iget v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    aget-boolean v2, v2, v3

    iget-object v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    iget v4, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v1, v2, v3}, Lio/appium/android/apis/graphics/Arcs$SampleView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aget-boolean v2, v2, v0

    iget-object v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v3, v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/appium/android/apis/graphics/Arcs$SampleView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    .line 106
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 107
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    sub-float/2addr v1, v5

    iput v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    .line 108
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    .line 109
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_1

    .line 110
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    sub-float/2addr v1, v5

    iput v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    .line 112
    :cond_1
    iget v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    .line 114
    :cond_2
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Arcs$SampleView;->invalidate()V

    .line 115
    return-void
.end method
