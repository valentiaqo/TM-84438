.class Lio/appium/android/apis/graphics/UnicodeChart$SampleView;
.super Landroid/view/View;
.source "UnicodeChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/UnicodeChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final XMUL:I = 0x14

.field private static final YBASE:I = 0x12

.field private static final YMUL:I = 0x1c


# instance fields
.field private mBase:I

.field private mBigCharPaint:Landroid/graphics/Paint;

.field private final mChars:[C

.field private mLabelPaint:Landroid/graphics/Paint;

.field private final mPos:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v6, 0x100

    new-array v6, v6, [C

    iput-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mChars:[C

    .line 41
    const/16 v6, 0x200

    new-array v6, v6, [F

    iput-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mPos:[F

    .line 51
    invoke-virtual {p0, v8}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v8}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->setFocusableInTouchMode(Z)V

    .line 54
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBigCharPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBigCharPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBigCharPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 58
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v6, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 63
    iget-object v3, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mPos:[F

    .line 64
    .local v3, "pos":[F
    const/4 v1, 0x0

    .line 65
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 66
    mul-int/lit8 v6, v0, 0x14

    add-int/lit8 v6, v6, 0xa

    int-to-float v5, v6

    .line 67
    .local v5, "x":F
    const/4 v4, 0x0

    .local v4, "row":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v4, v9, :cond_0

    .line 68
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v5, v3, v2

    .line 69
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    mul-int/lit8 v6, v4, 0x1c

    add-int/lit8 v6, v6, 0x12

    int-to-float v6, v6

    aput v6, v3, v1

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 72
    .end local v4    # "row":I
    .end local v5    # "x":F
    :cond_1
    return-void
.end method

.method private computeX(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    shr-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    return v0
.end method

.method private computeY(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    and-int/lit8 v0, p1, 0xf

    mul-int/lit8 v0, v0, 0x1c

    add-int/lit8 v0, v0, 0x1c

    int-to-float v0, v0

    return v0
.end method

.method private drawChart(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "base"    # I

    .prologue
    const/16 v3, 0x100

    .line 83
    iget-object v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mChars:[C

    .line 84
    .local v1, "chars":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 85
    add-int v7, p2, v6

    .line 86
    .local v7, "unichar":I
    int-to-char v0, v7

    aput-char v0, v1, v6

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->computeX(I)F

    move-result v2

    invoke-direct {p0, v6}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->computeY(I)F

    move-result v4

    iget-object v5, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v7    # "unichar":I
    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mPos:[F

    iget-object v5, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBigCharPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 97
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget v0, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    mul-int/lit16 v0, v0, 0x100

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->drawChart(Landroid/graphics/Canvas;I)V

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 116
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 104
    :pswitch_0
    iget v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    if-lez v1, :cond_0

    .line 105
    iget v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    .line 106
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->invalidate()V

    goto :goto_0

    .line 110
    :pswitch_1
    iget v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->mBase:I

    .line 111
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;->invalidate()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
