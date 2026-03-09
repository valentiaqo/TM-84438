.class public Lio/appium/android/apis/view/InternalSelectionView;
.super Landroid/view/View;
.source "InternalSelectionView.java"


# instance fields
.field private mDesiredHeight:Ljava/lang/Integer;

.field private final mEstimatedPixelHeight:I

.field private mLabel:Ljava/lang/String;

.field private mNumRows:I

.field private mPainter:Landroid/graphics/Paint;

.field private mSelectedRow:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numRows"    # I

    .prologue
    .line 59
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numRows"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mEstimatedPixelHeight:I

    .line 54
    iput-object v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 55
    iput-object v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 64
    iput p2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 65
    iput-object p3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mEstimatedPixelHeight:I

    .line 54
    iput-object v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 55
    iput-object v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->init()V

    .line 72
    return-void
.end method

.method private getRowHeight()I
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    div-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setFocusable(Z)V

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 121
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 123
    .local v2, "specSize":I
    iget-object v3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "desiredHeight":I
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_2

    move v0, v2

    .line 132
    .end local v0    # "desiredHeight":I
    :cond_0
    :goto_1
    return v0

    .line 123
    :cond_1
    iget v3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    goto :goto_0

    .line 129
    .restart local v0    # "desiredHeight":I
    :cond_2
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 130
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_1
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 106
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 108
    .local v2, "specSize":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v3

    add-int/lit16 v3, v3, 0x12c

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 109
    .local v0, "desiredWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    move v0, v2

    .line 115
    .end local v0    # "desiredWidth":I
    :cond_0
    :goto_0
    return v0

    .line 112
    .restart local v0    # "desiredWidth":I
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 113
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method ensureRectVisible()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/InternalSelectionView;->getRectForRow(Landroid/graphics/Rect;I)V

    .line 195
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 196
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 228
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/InternalSelectionView;->getRectForRow(Landroid/graphics/Rect;I)V

    .line 229
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    return v0
.end method

.method public getRectForRow(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "row"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getRowHeight()I

    move-result v0

    .line 185
    .local v0, "rowHeight":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v2

    mul-int v3, p2, v0

    add-int v1, v2, v3

    .line 186
    .local v1, "top":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, v1, v0

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    return-void
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0xf0

    const/high16 v10, -0x1000000

    .line 140
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getRowHeight()I

    move-result v4

    .line 142
    .local v4, "rowHeight":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v3

    .line 143
    .local v3, "rectTop":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v1

    .line 144
    .local v1, "rectLeft":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 145
    .local v2, "rectRight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    if-ge v0, v5, :cond_1

    .line 147
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    add-int v6, v3, v4

    invoke-virtual {v5, v1, v3, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 155
    iget v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    :goto_1
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v6, v1, 0x2

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v2, -0x2

    add-int v9, v3, v4

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0x2

    iget-object v8, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    add-int/2addr v3, v4

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 177
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    sparse-switch p2, :sswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 239
    :sswitch_0
    iput v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 261
    :goto_1
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    goto :goto_0

    .line 242
    :sswitch_1
    iget v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    goto :goto_1

    .line 247
    :sswitch_2
    if-eqz p3, :cond_1

    .line 248
    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 250
    .local v0, "y":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getHeight()I

    move-result v2

    iget v3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    div-int v1, v2, v3

    .line 251
    .local v1, "yPerRow":I
    div-int v2, v0, v1

    iput v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    goto :goto_1

    .line 253
    .end local v0    # "y":I
    .end local v1    # "yPerRow":I
    :cond_1
    iput v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    goto :goto_1

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    if-lez v1, :cond_0

    .line 207
    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 208
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    .line 209
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->ensureRectVisible()V

    goto :goto_0

    .line 214
    :pswitch_1
    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    iget v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 215
    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 216
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    .line 217
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->ensureRectVisible()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/InternalSelectionView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lio/appium/android/apis/view/InternalSelectionView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setDesiredHeight(I)V
    .locals 1
    .param p1, "desiredHeight"    # I

    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
