.class Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;
.super Ljava/lang/Thread;
.source "WindowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/WindowSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawingThread"
.end annotation


# static fields
.field static final NUM_OLD:I = 0x64


# instance fields
.field mActive:Z

.field final mBackground:Landroid/graphics/Paint;

.field mBrightLine:I

.field final mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field final mForeground:Landroid/graphics/Paint;

.field mInitialized:Z

.field mLineWidth:I

.field mMaxStep:F

.field mMinStep:F

.field mNumOld:I

.field final mOld:[F

.field final mOldColor:[I

.field final mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field final mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field mQuit:Z

.field mRunning:Z

.field mSurface:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lio/appium/android/apis/graphics/WindowSurface;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/WindowSurface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iput-object p1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->this$0:Lio/appium/android/apis/graphics/WindowSurface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 152
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 155
    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    .line 156
    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    .line 157
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    .line 158
    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 161
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method makeGreen(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 167
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 168
    .local v0, "dist":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1

    :cond_0
    mul-int/lit8 v1, v0, 0x19

    rsub-int v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/high16 v12, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 174
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->this$0:Lio/appium/android/apis/graphics/WindowSurface;

    invoke-virtual {v1}, Lio/appium/android/apis/graphics/WindowSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    .line 175
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    if-ge v1, v11, :cond_0

    iput v11, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    .line 176
    :cond_0
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    .line 177
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    mul-float/2addr v1, v12

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    .line 179
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    iget v2, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    :goto_0
    monitor-enter p0

    .line 189
    :goto_1
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mRunning:Z

    if-nez v1, :cond_4

    .line 190
    :cond_1
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    if-eqz v1, :cond_2

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 194
    :cond_2
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mQuit:Z

    if-eqz v1, :cond_3

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 198
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    goto :goto_1

    .line 203
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    if-nez v1, :cond_5

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 209
    :cond_5
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 210
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-nez v0, :cond_6

    .line 211
    const-string v1, "WindowSurface"

    const-string v2, "Failure locking canvas"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit p0

    goto :goto_0

    .line 267
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 216
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_6
    :try_start_3
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mInitialized:Z

    if-nez v1, :cond_8

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mInitialized:Z

    .line 218
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    invoke-virtual {v1, v2, v3, v4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    .line 219
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    invoke-virtual {v1, v2, v3, v4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    .line 220
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    .line 228
    :goto_2
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 229
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_7

    .line 230
    const/4 v1, -0x2

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 234
    :cond_7
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 237
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_3
    if-ltz v8, :cond_9

    .line 238
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    iget-object v2, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    aget v2, v2, v8

    invoke-virtual {p0, v8}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->makeGreen(I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    rsub-int/lit8 v2, v8, 0x64

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    mul-int/lit8 v9, v8, 0x4

    .line 241
    .local v9, "p":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    aget v1, v1, v9

    iget-object v2, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v4, v9, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v5, v9, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 222
    .end local v8    # "i":I
    .end local v9    # "p":I
    :cond_8
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    iget v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    .line 224
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    iget v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    .line 226
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    goto/16 :goto_2

    .line 245
    .restart local v8    # "i":I
    :cond_9
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v1, v1, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    float-to-int v1, v1

    add-int/lit16 v10, v1, 0x80

    .line 246
    .local v10, "red":I
    const/16 v1, 0xff

    if-le v10, v1, :cond_a

    const/16 v10, 0xff

    .line 247
    :cond_a
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v1, v1, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    float-to-int v1, v1

    add-int/lit16 v6, v1, 0x80

    .line 248
    .local v6, "blue":I
    const/16 v1, 0xff

    if-le v6, v1, :cond_b

    const/16 v6, 0xff

    .line 249
    :cond_b
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v10, 0x10

    or-int/2addr v1, v2

    or-int v7, v1, v6

    .line 250
    .local v7, "color":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->makeGreen(I)I

    move-result v2

    or-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v1, v1, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget-object v2, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v2, v2, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v3, v3, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget-object v4, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v4, v4, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget-object v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    if-le v1, v11, :cond_c

    .line 255
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v4, 0x4

    iget v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    const/4 v4, 0x1

    iget v5, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_c
    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_d

    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    .line 259
    :cond_d
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v3, v3, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    aput v3, v1, v2

    .line 260
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v3, v3, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    aput v3, v1, v2

    .line 261
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v3, v3, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    aput v3, v1, v2

    .line 262
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v3, v3, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    aput v3, v1, v2

    .line 263
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    const/4 v2, 0x0

    aput v7, v1, v2

    .line 266
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 267
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
