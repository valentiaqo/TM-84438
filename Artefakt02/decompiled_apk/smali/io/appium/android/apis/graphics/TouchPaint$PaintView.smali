.class Lio/appium/android/apis/graphics/TouchPaint$PaintView;
.super Landroid/view/View;
.source "TouchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TouchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintView"
.end annotation


# static fields
.field private static final FADE_ALPHA:I = 0x6

.field private static final MAX_FADE_STEPS:I = 0x2e

.field private static final SPLAT_VECTORS:I = 0x28

.field private static final TRACKBALL_SCALE:I = 0xa


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurX:F

.field private mCurY:F

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mFadeSteps:I

.field private mOldButtonState:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRandom:Ljava/util/Random;

.field private final mReusableOvalRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lio/appium/android/apis/graphics/TouchPaint;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/TouchPaint;Landroid/content/Context;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 245
    iput-object p1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    .line 246
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    .line 243
    const/16 v0, 0x2e

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 457
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 247
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->setFocusable(Z)V

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    .line 250
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    .line 253
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    return-void
.end method

.method private advanceColor()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v1, v1, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    .line 412
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "orientation"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 461
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 462
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 463
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 464
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 465
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 466
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    return-void
.end method

.method private drawSplat(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "orientation"    # F
    .param p5, "distance"    # F
    .param p6, "tilt"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 482
    const/high16 v28, 0x40000000    # 2.0f

    mul-float v28, v28, p5

    const/high16 v29, 0x41200000    # 10.0f

    add-float v27, v28, v29

    .line 485
    .local v27, "z":F
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v13, v0

    .line 486
    .local v13, "nx":F
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v14, v0

    .line 487
    .local v14, "ny":F
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v15, v0

    .line 488
    .local v15, "nz":F
    float-to-double v0, v15

    move-wide/from16 v28, v0

    const-wide v30, 0x3fa999999999999aL    # 0.05

    cmpg-double v28, v28, v30

    if-gez v28, :cond_1

    .line 526
    :cond_0
    return-void

    .line 491
    :cond_1
    div-float v5, v27, v15

    .line 492
    .local v5, "cd":F
    mul-float v6, v13, v5

    .line 493
    .local v6, "cx":F
    mul-float v7, v14, v5

    .line 495
    .local v7, "cy":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v28, 0x28

    move/from16 v0, v28

    if-ge v12, v0, :cond_0

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Random;->nextDouble()D

    move-result-wide v28

    const-wide v30, 0x400921fb54442d18L    # Math.PI

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v8, v28, v30

    .line 500
    .local v8, "direction":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v28

    const-wide v30, 0x3fc999999999999aL    # 0.2

    mul-double v10, v28, v30

    .line 501
    .local v10, "dispersion":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v21, v28, v10

    .line 502
    .local v21, "vx":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v23, v28, v10

    .line 503
    .local v23, "vy":D
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    .line 506
    .local v25, "vz":D
    move-wide/from16 v19, v23

    .line 507
    .local v19, "temp":D
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v30, v30, v25

    sub-double v23, v28, v30

    .line 508
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v30, v30, v25

    add-double v25, v28, v30

    .line 511
    move-wide/from16 v19, v21

    .line 512
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v30, v30, v23

    sub-double v21, v28, v30

    .line 513
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v30, v30, v23

    add-double v23, v28, v30

    .line 516
    const-wide v28, 0x3fa999999999999aL    # 0.05

    cmpg-double v28, v25, v28

    if-gez v28, :cond_2

    .line 495
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 519
    :cond_2
    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v28, v28, v25

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    .line 520
    .local v16, "pd":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v21

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v17, v0

    .line 521
    .local v17, "px":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v23

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v18, v0

    .line 524
    .local v18, "py":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    add-float v29, p2, v17

    sub-float v29, v29, v6

    add-float v30, p3, v18

    sub-float v30, v30, v7

    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .locals 1
    .param p1, "toolType"    # I
    .param p2, "defaultMode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .prologue
    .line 404
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 405
    sget-object p2, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Erase:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 407
    .end local p2    # "defaultMode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :cond_0
    return-object p2
.end method

.method private moveTrackball(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 327
    iget-object v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 328
    .local v1, "curW":I
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 330
    .local v0, "curH":I
    :goto_1
    iget v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    add-float/2addr v2, p1

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    .line 331
    iget v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    add-float/2addr v2, p2

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    .line 332
    sget-object v2, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    iget v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    iget v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    invoke-direct {p0, v2, v3, v4}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FF)V

    .line 333
    return-void

    .end local v0    # "curH":I
    .end local v1    # "curW":I
    :cond_0
    move v1, v2

    .line 327
    goto :goto_0

    .restart local v1    # "curW":I
    :cond_1
    move v0, v2

    .line 328
    goto :goto_1
.end method

.method private onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouch"    # Z

    .prologue
    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    .line 347
    .local v16, "buttonState":I
    move-object/from16 v0, p0

    iget v3, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mOldButtonState:I

    xor-int/lit8 v3, v3, -0x1

    and-int v20, v16, v3

    .line 348
    .local v20, "pressedButtons":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mOldButtonState:I

    .line 350
    and-int/lit8 v3, v20, 0x2

    if-eqz v3, :cond_0

    .line 353
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->advanceColor()V

    .line 357
    :cond_0
    and-int/lit8 v3, v16, 0x4

    if-eqz v3, :cond_2

    .line 359
    sget-object v19, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Splat:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 368
    .local v19, "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    .line 369
    .local v15, "action":I
    if-eqz v15, :cond_1

    const/4 v3, 0x2

    if-eq v15, v3, :cond_1

    const/4 v3, 0x7

    if-ne v15, v3, :cond_8

    .line 371
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    .line 372
    .local v13, "N":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 373
    .local v14, "P":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_6

    .line 374
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_5

    .line 375
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalTouchMinor(II)F

    move-result v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalOrientation(II)F

    move-result v10

    const/16 v3, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v11

    const/16 v3, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v12

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 374
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 360
    .end local v13    # "N":I
    .end local v14    # "P":I
    .end local v15    # "action":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :cond_2
    if-nez p2, :cond_3

    and-int/lit8 v3, v16, 0x1

    if-eqz v3, :cond_4

    .line 362
    :cond_3
    sget-object v19, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .restart local v19    # "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    goto/16 :goto_0

    .line 365
    .end local v19    # "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :cond_4
    const/4 v3, 0x0

    .line 400
    :goto_3
    return v3

    .line 373
    .restart local v13    # "N":I
    .restart local v14    # "P":I
    .restart local v15    # "action":I
    .restart local v17    # "i":I
    .restart local v18    # "j":I
    .restart local v19    # "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 386
    .end local v18    # "j":I
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v14, :cond_7

    .line 387
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v10

    const/16 v3, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v11

    const/16 v3, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 386
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 397
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    .line 400
    .end local v13    # "N":I
    .end local v14    # "P":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    :cond_8
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FF)V
    .locals 10
    .param p1, "mode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 415
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 416
    return-void
.end method

.method private paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V
    .locals 8
    .param p1, "mode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "major"    # F
    .param p6, "minor"    # F
    .param p7, "orientation"    # F
    .param p8, "distance"    # F
    .param p9, "tilt"    # F

    .prologue
    .line 421
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_1

    .line 424
    :cond_0
    const/high16 p6, 0x41800000    # 16.0f

    move p5, p6

    .line 427
    :cond_1
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$2;->$SwitchMap$io$appium$android$apis$graphics$TouchPaint$PaintMode:[I

    invoke-virtual {p1}, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 447
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 448
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 449
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    iget-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v2, v2, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, p4

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 431
    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, p4

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    iget-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v2, v2, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 443
    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawSplat(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 261
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 263
    const/16 v0, 0x2e

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 265
    :cond_0
    return-void
.end method

.method public fade()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    const/16 v1, 0x2e

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 270
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 272
    iget v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 274
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 278
    iget-object v5, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 279
    .local v1, "curW":I
    :goto_0
    iget-object v5, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 280
    .local v0, "curH":I
    :goto_1
    if-lt v1, p1, :cond_2

    if-lt v0, p2, :cond_2

    .line 296
    :goto_2
    return-void

    .end local v0    # "curH":I
    .end local v1    # "curW":I
    :cond_0
    move v1, v4

    .line 278
    goto :goto_0

    .restart local v1    # "curW":I
    :cond_1
    move v0, v4

    .line 279
    goto :goto_1

    .line 284
    .restart local v0    # "curH":I
    :cond_2
    if-ge v1, p1, :cond_3

    move v1, p1

    .line 285
    :cond_3
    if-ge v0, p2, :cond_4

    move v0, p2

    .line 287
    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 289
    .local v3, "newCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 291
    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    :cond_5
    iput-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    .line 294
    iput-object v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    .line 295
    const/16 v4, 0x2e

    iput v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 308
    .local v1, "action":I
    if-nez v1, :cond_0

    .line 310
    invoke-direct {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->advanceColor()V

    .line 313
    :cond_0
    if-eqz v1, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 315
    .local v0, "N":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v5

    mul-float v3, v5, v6

    .line 316
    .local v3, "scaleX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v5

    mul-float v4, v5, v6

    .line 317
    .local v4, "scaleY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 318
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->moveTrackball(FF)V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->moveTrackball(FF)V

    .line 323
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "scaleX":F
    .end local v4    # "scaleY":F
    :cond_3
    const/4 v5, 0x1

    return v5
.end method
