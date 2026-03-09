.class Lio/appium/android/apis/graphics/ColorFilters$SampleView;
.super Landroid/view/View;
.source "ColorFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ColorFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColors:[I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mModeIndex:I

.field private mModes:[Landroid/graphics/PorterDuff$Mode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPaintTextOffset:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mActivity:Landroid/app/Activity;

    .line 61
    move-object v0, p1

    .line 62
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v8}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->setFocusable(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x96

    const/16 v7, 0x30

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 68
    const/4 v5, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 73
    .local v4, "resIDs":[I
    array-length v5, v4

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v3, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    .local v3, "prev":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 76
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 77
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 78
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-static {v5, v3}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->addToTheRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v5, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    .line 88
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 91
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iput v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaintTextOffset:F

    .line 93
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mColors:[I

    .line 103
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/PorterDuff$Mode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    aput-object v6, v5, v9

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    aput-object v6, v5, v8

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    .line 107
    iput v9, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    .line 109
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->updateTitle()V

    .line 110
    return-void

    .line 68
    nop

    :array_0
    .array-data 4
        0x7f02000d
        0x7f02000b
        0x7f02000c
    .end array-data

    .line 93
    :array_1
    .array-data 4
        0x0
        -0x33ffff01    # -3.3555452E7f
        -0x77ffff01
        0x440000ff
        -0x333301
        -0x777701
        -0xbbbb01
    .end array-data
.end method

.method private static addToTheRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "curr"    # Landroid/graphics/drawable/Drawable;
    .param p1, "prev"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 50
    .local v2, "r":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v5, 0xc

    .line 51
    .local v3, "x":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    shr-int/lit8 v0, v5, 0x1

    .line 52
    .local v0, "center":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 53
    .local v1, "h":I
    shr-int/lit8 v5, v1, 0x1

    sub-int v4, v0, v5

    .line 55
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    add-int v6, v4, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    return-void
.end method

.method private drawSample(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 128
    iget-object v7, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 129
    .local v4, "r":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v5, v7, v9

    .line 130
    .local v5, "x":F
    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaintTextOffset:F

    sub-float v6, v7, v8

    .line 132
    .local v6, "y":F
    iget-object v7, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 133
    iget-object v7, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    const-string v7, "Label"

    add-float v8, v5, v10

    add-float v9, v6, v10

    iget-object v10, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    const-string v7, "Label"

    iget-object v8, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 138
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private swapPaintColors()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x1000000

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    iget v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    const v5, -0x333334

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mColors:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 149
    .local v1, "color":I
    if-nez v1, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 155
    .local v2, "filter":Landroid/graphics/ColorFilter;
    :goto_1
    invoke-direct {p0, p1, v2}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->drawSample(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V

    .line 156
    const/4 v5, 0x0

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "filter":Landroid/graphics/ColorFilter;
    :cond_0
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    iget v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    aget-object v5, v5, v6

    invoke-direct {v2, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .restart local v2    # "filter":Landroid/graphics/ColorFilter;
    goto :goto_1

    .line 158
    .end local v1    # "color":I
    .end local v2    # "filter":Landroid/graphics/ColorFilter;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    .line 171
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->updateTitle()V

    .line 173
    :cond_0
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->swapPaintColors()V

    .line 174
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->invalidate()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
