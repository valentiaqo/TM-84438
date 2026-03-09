.class public Lio/appium/android/apis/view/GameView;
.super Landroid/view/View;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/GameView$Obstacle;,
        Lio/appium/android/apis/view/GameView$Bullet;,
        Lio/appium/android/apis/view/GameView$Ship;,
        Lio/appium/android/apis/view/GameView$Sprite;
    }
.end annotation


# static fields
.field private static final DPAD_STATE_DOWN:I = 0x8

.field private static final DPAD_STATE_LEFT:I = 0x1

.field private static final DPAD_STATE_RIGHT:I = 0x2

.field private static final DPAD_STATE_UP:I = 0x4


# instance fields
.field private final ANIMATION_TIME_STEP:J

.field private final MAX_OBSTACLES:I

.field private final mAnimationRunnable:Ljava/lang/Runnable;

.field private mBulletSize:F

.field private mBulletSpeed:F

.field private final mBullets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/appium/android/apis/view/GameView$Bullet;",
            ">;"
        }
    .end annotation
.end field

.field private mDPadState:I

.field private mLastInputDevice:Landroid/view/InputDevice;

.field private mLastStepTime:J

.field private mMaxObstacleSize:F

.field private mMaxObstacleSpeed:F

.field private mMaxShipSpeed:F

.field private mMaxShipThrust:F

.field private mMinObstacleSize:F

.field private mMinObstacleSpeed:F

.field private final mObstacles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/appium/android/apis/view/GameView$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private mShip:Lio/appium/android/apis/view/GameView$Ship;

.field private mShipSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v4, 0x40400000    # 3.0f

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v2, 0x10

    iput-wide v2, p0, Lio/appium/android/apis/view/GameView;->ANIMATION_TIME_STEP:J

    .line 48
    const/16 v2, 0xc

    iput v2, p0, Lio/appium/android/apis/view/GameView;->MAX_OBSTACLES:I

    .line 77
    new-instance v2, Lio/appium/android/apis/view/GameView$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/GameView$1;-><init>(Lio/appium/android/apis/view/GameView;)V

    iput-object v2, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    .line 90
    invoke-virtual {p0, v6}, Lio/appium/android/apis/view/GameView;->setFocusable(Z)V

    .line 91
    invoke-virtual {p0, v6}, Lio/appium/android/apis/view/GameView;->setFocusableInTouchMode(Z)V

    .line 93
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v0, v2, v3

    .line 94
    .local v0, "baseSize":F
    mul-float v1, v0, v4

    .line 96
    .local v1, "baseSpeed":F
    mul-float v2, v0, v4

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    .line 97
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v1

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMaxShipThrust:F

    .line 98
    mul-float v2, v1, v5

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMaxShipSpeed:F

    .line 100
    iput v0, p0, Lio/appium/android/apis/view/GameView;->mBulletSize:F

    .line 101
    mul-float v2, v1, v5

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    .line 103
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMinObstacleSize:F

    .line 104
    mul-float v2, v0, v5

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSize:F

    .line 105
    iput v1, p0, Lio/appium/android/apis/view/GameView;->mMinObstacleSpeed:F

    .line 106
    mul-float v2, v1, v4

    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSpeed:F

    .line 107
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/GameView;)F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .prologue
    .line 46
    iget v0, p0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    return v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/view/GameView;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .prologue
    .line 46
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->crash()V

    return-void
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/GameView;)F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .prologue
    .line 46
    iget v0, p0, Lio/appium/android/apis/view/GameView;->mBulletSize:F

    return v0
.end method

.method static blend(FII)I
    .locals 1
    .param p0, "alpha"    # F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 490
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method private crash()V
    .locals 3

    .prologue
    .line 327
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 328
    return-void

    .line 327
    :array_0
    .array-data 8
        0x0
        0x14
        0x14
        0x28
        0x28
        0x50
        0x28
        0x12c
    .end array-data
.end method

.method private ensureInitialized()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 324
    :cond_0
    return-void
.end method

.method private fire()V
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1}, Lio/appium/android/apis/view/GameView$Ship;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    new-instance v0, Lio/appium/android/apis/view/GameView$Bullet;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/GameView$Bullet;-><init>(Lio/appium/android/apis/view/GameView;)V

    .line 311
    .local v0, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1}, Lio/appium/android/apis/view/GameView$Ship;->getBulletInitialX()F

    move-result v1

    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2}, Lio/appium/android/apis/view/GameView$Ship;->getBulletInitialY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/view/GameView$Bullet;->setPosition(FF)V

    .line 312
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    iget v2, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->getBulletVelocityX(F)F

    move-result v1

    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    iget v3, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/GameView$Ship;->getBulletVelocityY(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/view/GameView$Bullet;->setVelocity(FF)V

    .line 314
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 318
    .end local v0    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    :cond_0
    return-void
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 273
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 275
    .local v0, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 280
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 284
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_1
    return v2

    .line 275
    .restart local v0    # "flat":F
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    goto :goto_0

    .line 284
    .end local v0    # "flat":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVibrator()Landroid/os/Vibrator;
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    .line 339
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object v0, v1

    goto :goto_0
.end method

.method private static isFireKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 201
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 250
    .local v0, "x":F
    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xf

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 253
    :cond_0
    cmpl-float v2, v0, v4

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xb

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 257
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 258
    .local v1, "y":F
    cmpl-float v2, v1, v4

    if-nez v2, :cond_2

    .line 259
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0x10

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 261
    :cond_2
    cmpl-float v2, v1, v4

    if-nez v2, :cond_3

    .line 262
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xe

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 266
    :cond_3
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2, v0, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeading(FF)V

    .line 267
    if-gez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    :goto_0
    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 268
    return-void

    .line 267
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method static pythag(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 486
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lio/appium/android/apis/view/GameView$Ship;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/GameView$Ship;-><init>(Lio/appium/android/apis/view/GameView;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    .line 332
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    return-void
.end method

.method static setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "alpha"    # F
    .param p2, "a1"    # I
    .param p3, "r1"    # I
    .param p4, "g1"    # I
    .param p5, "b1"    # I
    .param p6, "a2"    # I
    .param p7, "r2"    # I
    .param p8, "g2"    # I
    .param p9, "b2"    # I

    .prologue
    .line 496
    invoke-static {p1, p2, p6}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v0

    invoke-static {p1, p3, p7}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v1

    invoke-static {p1, p4, p8}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v2

    invoke-static {p1, p5, p9}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 498
    return-void
.end method

.method private step(J)V
    .locals 24
    .param p1, "currentStepTime"    # J

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    move-wide/from16 v21, v0

    sub-long v21, p1, v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3a83126f    # 0.001f

    mul-float v17, v21, v22

    .line 359
    .local v17, "tau":F
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    .line 361
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMaxShipThrust:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMaxShipSpeed:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lio/appium/android/apis/view/GameView$Ship;->accelerate(FFF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/GameView$Ship;->step(F)Z

    move-result v21

    if-nez v21, :cond_0

    .line 366
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 370
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v10

    .line 371
    .local v10, "numBullets":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_2

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/view/GameView$Bullet;

    .line 373
    .local v4, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lio/appium/android/apis/view/GameView$Bullet;->step(F)Z

    move-result v21

    if-nez v21, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    add-int/lit8 v7, v7, -0x1

    .line 376
    add-int/lit8 v10, v10, -0x1

    .line 371
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 381
    .end local v4    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v11

    .line 382
    .local v11, "numObstacles":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 384
    .local v12, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lio/appium/android/apis/view/GameView$Obstacle;->step(F)Z

    move-result v21

    if-nez v21, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    add-int/lit8 v7, v7, -0x1

    .line 387
    add-int/lit8 v11, v11, -0x1

    .line 382
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 392
    .end local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/view/GameView$Bullet;

    .line 394
    .restart local v4    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v11, :cond_5

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 396
    .restart local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v4, v12}, Lio/appium/android/apis/view/GameView$Bullet;->collidesWith(Lio/appium/android/apis/view/GameView$Sprite;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 397
    invoke-virtual {v4}, Lio/appium/android/apis/view/GameView$Bullet;->destroy()V

    .line 398
    invoke-virtual {v12}, Lio/appium/android/apis/view/GameView$Obstacle;->destroy()V

    .line 392
    .end local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 394
    .restart local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 405
    .end local v4    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    .end local v8    # "j":I
    .end local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v11, :cond_8

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 407
    .restart local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lio/appium/android/apis/view/GameView$Ship;->collidesWith(Lio/appium/android/apis/view/GameView$Sprite;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lio/appium/android/apis/view/GameView$Ship;->destroy()V

    .line 409
    invoke-virtual {v12}, Lio/appium/android/apis/view/GameView$Obstacle;->destroy()V

    .line 416
    .end local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    move/from16 v21, v0

    const/high16 v22, 0x40800000    # 4.0f

    mul-float v9, v21, v22

    .line 418
    .local v9, "minDistance":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSize:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSize:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSize:F

    move/from16 v22, v0

    add-float v15, v21, v22

    .line 421
    .local v15, "size":F
    const/16 v18, 0x0

    .line 423
    .local v18, "tries":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 424
    .local v6, "edge":I
    packed-switch v6, :pswitch_data_0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v13, v0

    .line 439
    .local v13, "positionX":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v14, v21, v15

    .line 442
    .local v14, "positionY":F
    :goto_6
    add-int/lit8 v18, v18, 0x1

    const/16 v21, 0xa

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 459
    .end local v6    # "edge":I
    .end local v9    # "minDistance":F
    .end local v13    # "positionX":F
    .end local v14    # "positionY":F
    .end local v15    # "size":F
    .end local v18    # "tries":I
    :cond_a
    return-void

    .line 405
    .restart local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 426
    .end local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    .restart local v6    # "edge":I
    .restart local v9    # "minDistance":F
    .restart local v15    # "size":F
    .restart local v18    # "tries":I
    :pswitch_0
    neg-float v13, v15

    .line 427
    .restart local v13    # "positionX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v14, v0

    .line 428
    .restart local v14    # "positionY":F
    goto :goto_6

    .line 430
    .end local v13    # "positionX":F
    .end local v14    # "positionY":F
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v13, v21, v15

    .line 431
    .restart local v13    # "positionX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v14, v0

    .line 432
    .restart local v14    # "positionY":F
    goto :goto_6

    .line 434
    .end local v13    # "positionX":F
    .end local v14    # "positionY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v13, v0

    .line 435
    .restart local v13    # "positionX":F
    neg-float v14, v15

    .line 436
    .restart local v14    # "positionY":F
    goto :goto_6

    .line 445
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Lio/appium/android/apis/view/GameView$Ship;->distanceTo(FF)F

    move-result v21

    cmpg-float v21, v21, v9

    if-ltz v21, :cond_9

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    const v22, 0x40490fdb    # (float)Math.PI

    mul-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v5, v21, v22

    .line 448
    .local v5, "direction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSpeed:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSpeed:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSpeed:F

    move/from16 v22, v0

    add-float v16, v21, v22

    .line 450
    .local v16, "speed":F
    float-to-double v0, v5

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v19, v21, v16

    .line 451
    .local v19, "velocityX":F
    float-to-double v0, v5

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v21, v16

    .line 453
    .local v20, "velocityY":F
    new-instance v12, Lio/appium/android/apis/view/GameView$Obstacle;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lio/appium/android/apis/view/GameView$Obstacle;-><init>(Lio/appium/android/apis/view/GameView;)V

    .line 454
    .restart local v12    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v12, v13, v14}, Lio/appium/android/apis/view/GameView$Obstacle;->setPosition(FF)V

    .line 455
    invoke-virtual {v12, v15}, Lio/appium/android/apis/view/GameView$Obstacle;->setSize(F)V

    .line 456
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lio/appium/android/apis/view/GameView$Obstacle;->setVelocity(FF)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method animateFrame()V
    .locals 6

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "currentStepTime":J
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 350
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 351
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 352
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 353
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->invalidate()V

    .line 355
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 466
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v5, :cond_0

    .line 467
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v5, p1}, Lio/appium/android/apis/view/GameView$Ship;->draw(Landroid/graphics/Canvas;)V

    .line 471
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 472
    .local v2, "numBullets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 473
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/GameView$Bullet;

    .line 474
    .local v0, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    invoke-virtual {v0, p1}, Lio/appium/android/apis/view/GameView$Bullet;->draw(Landroid/graphics/Canvas;)V

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    :cond_1
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 479
    .local v3, "numObstacles":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 480
    iget-object v5, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 481
    .local v4, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v4, p1}, Lio/appium/android/apis/view/GameView$Obstacle;->draw(Landroid/graphics/Canvas;)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    .end local v4    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 217
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    .line 221
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-nez v3, :cond_2

    .line 222
    const/4 v2, 0x0

    .line 241
    :cond_1
    :goto_0
    return v2

    .line 227
    :cond_2
    iget v3, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 233
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 234
    invoke-direct {p0, p1, v1}, Lio/appium/android/apis/view/GameView;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_3
    const/4 v3, -0x1

    invoke-direct {p0, p1, v3}, Lio/appium/android/apis/view/GameView;->processJoystickInput(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 241
    .end local v0    # "historySize":I
    .end local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 119
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->isFireKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->fire()V

    .line 148
    const/4 v0, 0x1

    .line 153
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 155
    const/4 v1, 0x1

    .line 157
    :goto_1
    return v1

    .line 126
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 127
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 128
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v3}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 132
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 137
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v3}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 142
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 143
    const/4 v0, 0x1

    .line 144
    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->isFireKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 193
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_1
    return v1

    .line 168
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 169
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 174
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 175
    const/4 v0, 0x1

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 179
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 180
    const/4 v0, 0x1

    .line 181
    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 184
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 185
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 197
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 114
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 115
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 292
    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    .line 305
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 306
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 299
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v0, v2, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeading(FF)V

    .line 301
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v0, v2, v2}, Lio/appium/android/apis/view/GameView$Ship;->setVelocity(FF)V

    goto :goto_0
.end method
