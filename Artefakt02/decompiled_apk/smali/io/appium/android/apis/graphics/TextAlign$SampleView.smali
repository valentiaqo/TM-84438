.class Lio/appium/android/apis/graphics/TextAlign$SampleView;
.super Landroid/view/View;
.source "TextAlign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TextAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final DY:I = 0x1e

.field private static final POSTEXT:Ljava/lang/String; = "Positioned"

.field private static final TEXTONPATH:Ljava/lang/String; = "Along a path"

.field private static final TEXT_C:Ljava/lang/String; = "Center"

.field private static final TEXT_L:Ljava/lang/String; = "Left"

.field private static final TEXT_R:Ljava/lang/String; = "Right"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPos:[F

.field private mX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->setFocusable(Z)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    const-string v0, "Positioned"

    const/4 v1, 0x0

    iget-object v2, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, v2}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->buildTextPositions(Ljava/lang/String;FLandroid/graphics/Paint;)[F

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPos:[F

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    invoke-static {v0}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->makePath(Landroid/graphics/Path;)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    const v1, -0x7fffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    return-void
.end method

.method private buildTextPositions(Ljava/lang/String;FLandroid/graphics/Paint;)[F
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    new-array v4, v5, [F

    .line 55
    .local v4, "widths":[F
    invoke-virtual {p3, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v2

    .line 57
    .local v2, "n":I
    mul-int/lit8 v5, v2, 0x2

    new-array v3, v5, [F

    .line 58
    .local v3, "pos":[F
    const/4 v0, 0x0

    .line 59
    .local v0, "accumulatedX":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x0

    aput v0, v3, v5

    .line 61
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aput p2, v3, v5

    .line 62
    aget v5, v4, v1

    add-float/2addr v0, v5

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v3
.end method

.method private static makePath(Landroid/graphics/Path;)V
    .locals 7
    .param p0, "p"    # Landroid/graphics/Path;

    .prologue
    const/4 v6, 0x0

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3db80000    # -50.0f

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x43960000    # 300.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 88
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    iget-object v5, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 91
    .local v5, "p":Landroid/graphics/Paint;
    iget v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mX:F

    .line 92
    .local v1, "x":F
    const/4 v2, 0x0

    .line 93
    .local v2, "y":F
    iget-object v13, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPos:[F

    .line 97
    .local v13, "pos":[F
    const/high16 v0, -0x7f010000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/high16 v0, 0x42b40000    # 90.0f

    add-float v4, v2, v0

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/4 v0, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    const-string v0, "Left"

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    const/4 v0, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    const-string v0, "Center"

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    const/4 v0, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 111
    const-string v0, "Right"

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    const v0, -0x44ff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v13

    div-int/lit8 v0, v0, 0x2

    if-ge v12, v0, :cond_0

    .line 119
    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v7, v13, v0

    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v13, v0

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float v8, v0, v3

    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v9, v13, v0

    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v13, v0

    const/high16 v3, 0x42700000    # 60.0f

    add-float v10, v0, v3

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    const-string v0, "Positioned"

    invoke-virtual {p1, v0, v13, v5}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 127
    const/4 v0, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    const-string v0, "Positioned"

    invoke-virtual {p1, v0, v13, v5}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 131
    const/4 v0, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    const-string v0, "Positioned"

    invoke-virtual {p1, v0, v13, v5}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 137
    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    const-string v7, "Along a path"

    iget-object v8, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 143
    const/4 v0, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 146
    const-string v7, "Along a path"

    iget-object v8, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 148
    const/4 v0, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    const-string v7, "Along a path"

    iget-object v8, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 157
    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mX:F

    .line 158
    return-void
.end method
