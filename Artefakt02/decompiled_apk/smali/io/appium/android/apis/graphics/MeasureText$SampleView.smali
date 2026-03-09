.class Lio/appium/android/apis/graphics/MeasureText$SampleView;
.super Landroid/view/View;
.source "MeasureText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/MeasureText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mOriginX:F

.field private mOriginY:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginX:F

    .line 53
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginY:F

    .line 57
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->setFocusable(Z)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    return-void
.end method

.method private showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 71
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-array v10, v0, [F

    .line 74
    .local v10, "widths":[F
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, v10}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v7

    .line 75
    .local v7, "count":I
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    .line 76
    .local v3, "w":F
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x770078

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v9, v0, [F

    .line 84
    .local v9, "pts":[F
    const/4 v11, 0x0

    .line 85
    .local v11, "x":F
    const/4 v12, 0x0

    .line 86
    .local v12, "y":F
    const/4 v0, 0x0

    aput v11, v9, v0

    .line 87
    const/4 v0, 0x1

    aput v12, v9, v0

    .line 88
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 89
    aget v0, v10, v8

    add-float/2addr v11, v0

    .line 90
    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x2

    aput v11, v9, v0

    .line 91
    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aput v12, v9, v0

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    const/4 v0, 0x0

    add-int/lit8 v1, v7, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x42a00000    # 80.0f

    const/4 v2, 0x0

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    iget v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginX:F

    iget v1, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    const-string v0, "Measure"

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    const-string v0, "wiggy!"

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    const-string v0, "Text"

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 110
    return-void
.end method
