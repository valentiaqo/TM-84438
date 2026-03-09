.class Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;
.super Landroid/view/View;
.source "CustomViewAccessibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseToggleButton"
.end annotation


# instance fields
.field private mChecked:Z

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 212
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextPaint:Landroid/text/TextPaint;

    .line 216
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 217
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010095

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 220
    .local v1, "textSize":I
    iget-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010036

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 224
    .local v0, "textColor":I
    iget-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 226
    const v3, 0x7f0c03a8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 227
    const v3, 0x7f0c03a9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 228
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOn:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 274
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget-boolean v1, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mChecked:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOnLayout:Landroid/text/Layout;

    .line 276
    .local v0, "switchText":Landroid/text/Layout;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 278
    return-void

    .line 275
    .end local v0    # "switchText":Landroid/text/Layout;
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOnLayout:Landroid/text/Layout;

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOnLayout:Landroid/text/Layout;

    .line 253
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOffLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOffLayout:Landroid/text/Layout;

    .line 256
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 258
    .local v1, "minWidth":I
    iget-object v2, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getPaddingRight()I

    move-result v3

    add-int v0, v2, v3

    .line 260
    .local v0, "minHeight":I
    invoke-static {v1, p1, v4}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v4}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->setMeasuredDimension(II)V

    .line 262
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 241
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 242
    iget-boolean v1, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mChecked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->mChecked:Z

    .line 243
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->invalidate()V

    .line 245
    :cond_0
    return v0
.end method
