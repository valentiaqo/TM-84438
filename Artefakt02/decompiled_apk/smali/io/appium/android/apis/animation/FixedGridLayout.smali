.class public Lio/appium/android/apis/animation/FixedGridLayout;
.super Landroid/view/ViewGroup;
.source "FixedGridLayout.java"


# instance fields
.field mCellHeight:I

.field mCellWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 76
    iget v1, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    .line 77
    .local v1, "cellWidth":I
    iget v0, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    .line 78
    .local v0, "cellHeight":I
    sub-int v13, p4, p2

    div-int v3, v13, v1

    .line 79
    .local v3, "columns":I
    if-gez v3, :cond_0

    .line 80
    const/4 v3, 0x1

    .line 82
    :cond_0
    const/4 v11, 0x0

    .line 83
    .local v11, "x":I
    const/4 v12, 0x0

    .line 84
    .local v12, "y":I
    const/4 v6, 0x0

    .line 85
    .local v6, "i":I
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildCount()I

    move-result v4

    .line 86
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 87
    invoke-virtual {p0, v7}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 90
    .local v10, "w":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 92
    .local v5, "h":I
    sub-int v13, v1, v10

    div-int/lit8 v13, v13, 0x2

    add-int v8, v11, v13

    .line 93
    .local v8, "left":I
    sub-int v13, v0, v5

    div-int/lit8 v13, v13, 0x2

    add-int v9, v12, v13

    .line 95
    .local v9, "top":I
    add-int v13, v8, v10

    add-int v14, v9, v5

    invoke-virtual {v2, v8, v9, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 96
    add-int/lit8 v13, v3, -0x1

    if-lt v6, v13, :cond_1

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v11, 0x0

    .line 100
    add-int/2addr v12, v0

    .line 86
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 103
    add-int/2addr v11, v1

    goto :goto_1

    .line 106
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "h":I
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "w":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x3

    const/high16 v7, -0x80000000

    .line 57
    iget v6, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 59
    .local v1, "cellWidthSpec":I
    iget v6, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 62
    .local v0, "cellHeightSpec":I
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildCount()I

    move-result v3

    .line 63
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 64
    invoke-virtual {p0, v4}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    if-le v3, v5, :cond_1

    move v5, v3

    .line 70
    .local v5, "minCount":I
    :cond_1
    iget v6, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    mul-int/2addr v6, v5

    invoke-static {v6, p1}, Lio/appium/android/apis/animation/FixedGridLayout;->resolveSize(II)I

    move-result v6

    iget v7, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    mul-int/2addr v7, v5

    invoke-static {v7, p2}, Lio/appium/android/apis/animation/FixedGridLayout;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lio/appium/android/apis/animation/FixedGridLayout;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public setCellHeight(I)V
    .locals 0
    .param p1, "px"    # I

    .prologue
    .line 51
    iput p1, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->requestLayout()V

    .line 53
    return-void
.end method

.method public setCellWidth(I)V
    .locals 0
    .param p1, "px"    # I

    .prologue
    .line 46
    iput p1, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->requestLayout()V

    .line 48
    return-void
.end method
