.class Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final CENTER_RADIUS:I = 0x20

.field private static final CENTER_X:I = 0x64

.field private static final CENTER_Y:I = 0x64

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "l"    # Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;
    .param p3, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

    .line 44
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mColors:[I

    .line 48
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 50
    .local v0, "s":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 113
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private floatToByte(F)I
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    .local v0, "n":I
    return v0
.end method

.method private interpColor([IF)I
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "unit"    # F

    .prologue
    .line 117
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 118
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 136
    :goto_0
    return v8

    .line 120
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 121
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 124
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 125
    .local v6, "p":F
    float-to-int v5, v6

    .line 126
    .local v5, "i":I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 129
    aget v2, p1, v5

    .line 130
    .local v2, "c0":I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 131
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 132
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 133
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 134
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 136
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private pinToByte(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 104
    if-gez p1, :cond_1

    .line 105
    const/4 p1, 0x0

    .line 109
    :cond_0
    :goto_0
    return p1

    .line 106
    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 107
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private rotateColor(IF)I
    .locals 14
    .param p1, "color"    # I
    .param p2, "rad"    # F

    .prologue
    .line 140
    const/high16 v10, 0x43340000    # 180.0f

    mul-float v10, v10, p2

    const v11, 0x40490fdb    # (float)Math.PI

    div-float v3, v10, v11

    .line 141
    .local v3, "deg":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 142
    .local v8, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 143
    .local v4, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 145
    .local v1, "b":I
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 146
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 148
    .local v9, "tmp":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 149
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 150
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 151
    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 152
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 154
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 156
    .local v0, "a":[F
    const/4 v10, 0x0

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v7

    .line 157
    .local v7, "ir":I
    const/4 v10, 0x5

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x6

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x7

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v6

    .line 158
    .local v6, "ig":I
    const/16 v10, 0xa

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/16 v11, 0xc

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v5

    .line 160
    .local v5, "ib":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v7}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v11

    invoke-direct {p0, v6}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v12

    invoke-direct {p0, v5}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x42000000    # 32.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    .line 65
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v1, v4, v2

    .line 67
    .local v1, "r":F
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v1

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 70
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    iget-boolean v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 74
    .local v0, "c":I
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-boolean v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .end local v0    # "c":I
    :cond_0
    return-void

    .line 79
    .restart local v0    # "c":I
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v0, 0xc8

    .line 92
    invoke-virtual {p0, v0, v0}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v3, v7, v8

    .line 169
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v4, v7, v8

    .line 170
    .local v4, "y":F
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4040000000000000L    # 32.0

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    move v1, v5

    .line 172
    .local v1, "inCenter":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 207
    :cond_0
    :goto_1
    return v5

    .end local v1    # "inCenter":Z
    :cond_1
    move v1, v6

    .line 170
    goto :goto_0

    .line 174
    .restart local v1    # "inCenter":Z
    :pswitch_0
    iput-boolean v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iput-boolean v5, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 177
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 181
    :cond_2
    :pswitch_1
    iget-boolean v6, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v6, :cond_3

    .line 182
    iget-boolean v6, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq v6, v1, :cond_0

    .line 183
    iput-boolean v1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 184
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 187
    :cond_3
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 189
    .local v0, "angle":F
    const v6, 0x40c90fda

    div-float v2, v0, v6

    .line 190
    .local v2, "unit":F
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 191
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v2, v6

    .line 193
    :cond_4
    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-direct {p0, v7, v2}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 198
    .end local v0    # "angle":F
    .end local v2    # "unit":F
    :pswitch_2
    iget-boolean v7, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v7, :cond_0

    .line 199
    if-eqz v1, :cond_5

    .line 200
    iget-object v7, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

    iget-object v8, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-interface {v7, v8}, Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 202
    :cond_5
    iput-boolean v6, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 203
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
