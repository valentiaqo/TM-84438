.class public Lio/appium/android/apis/graphics/MatrixPaletteRenderer;
.super Ljava/lang/Object;
.source "MatrixPaletteRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

.field private mTextureID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private generateWeightedGrid(Ljavax/microedition/khronos/opengles/GL;)Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    .locals 22
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 384
    const/16 v18, 0x14

    .line 385
    .local v18, "uSteps":I
    const/16 v19, 0x14

    .line 387
    .local v19, "vSteps":I
    const/high16 v17, 0x3e800000    # 0.25f

    .line 388
    .local v17, "radius":F
    const/high16 v16, 0x40000000    # 2.0f

    .line 389
    .local v16, "height":F
    new-instance v2, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    const/16 v12, 0x15

    const/16 v13, 0x15

    invoke-direct {v2, v12, v13}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;-><init>(II)V

    .line 391
    .local v2, "grid":Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    const/16 v12, 0x14

    if-gt v4, v12, :cond_1

    .line 392
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v12, 0x14

    if-gt v3, v12, :cond_0

    .line 393
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v12, v12, v20

    const-wide/high16 v20, 0x4034000000000000L    # 20.0

    div-double v14, v12, v20

    .line 394
    .local v14, "angle":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v5, v17, v12

    .line 395
    .local v5, "x":F
    int-to-float v12, v4

    const/high16 v13, 0x41a00000    # 20.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    mul-float v6, v16, v12

    .line 396
    .local v6, "y":F
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v7, v17, v12

    .line 397
    .local v7, "z":F
    const/high16 v12, -0x3f800000    # -4.0f

    int-to-float v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    div-float v8, v12, v13

    .line 398
    .local v8, "u":F
    const/high16 v12, -0x3f800000    # -4.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    div-float v9, v12, v13

    .line 399
    .local v9, "v":F
    int-to-float v12, v4

    const/high16 v13, 0x41a00000    # 20.0f

    div-float v10, v12, v13

    .line 400
    .local v10, "w0":F
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v10

    .line 401
    .local v11, "w1":F
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v2 .. v13}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->set(IIFFFFFFFII)V

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 391
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    .end local v8    # "u":F
    .end local v9    # "v":F
    .end local v10    # "w0":F
    .end local v11    # "w1":F
    .end local v14    # "angle":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 405
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V

    .line 406
    return-object v2
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 304
    const/16 v1, 0xbd0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 306
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 315
    const/16 v1, 0x4100

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 317
    const/16 v1, 0xb71

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 319
    const/16 v1, 0xb44

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 325
    const/16 v1, 0x1700

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 326
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 328
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3f600000    # -5.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 330
    const v1, 0x8074

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 331
    const v1, 0x8078

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 333
    const v1, 0x84c0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 334
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 335
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const/16 v3, 0x2901

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 337
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const/16 v3, 0x2901

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xfa0

    rem-long v15, v1, v3

    .line 343
    .local v15, "time":J
    long-to-double v1, v15

    const-wide v3, 0x40af400000000000L    # 4000.0

    div-double v12, v1, v3

    .line 344
    .local v12, "animationUnit":D
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v12

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v0, v1

    move/from16 v17, v0

    .line 345
    .local v17, "unitAngle":F
    const/high16 v1, 0x43070000    # 135.0f

    mul-float v11, v17, v1

    .line 347
    .local v11, "angle":F
    const v1, 0x8840

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 348
    const v1, 0x8840

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    move-object/from16 v14, p1

    .line 350
    check-cast v14, Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 353
    .local v14, "gl11Ext":Ljavax/microedition/khronos/opengles/GL11Ext;
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 354
    invoke-interface {v14}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 358
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 360
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 361
    invoke-interface {v14}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 365
    const v1, 0x8840

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 366
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 377
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 378
    .local v2, "ratio":F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 379
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 380
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40e00000    # 7.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 381
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v9, 0x1

    const v8, 0x47012f00    # 33071.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/16 v6, 0xde1

    .line 240
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 246
    const/16 v3, 0xc50

    const/16 v4, 0x1101

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 249
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v5, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 250
    const/16 v3, 0x1d01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 251
    const/16 v3, 0xb71

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 252
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 259
    new-array v2, v9, [I

    .line 260
    .local v2, "textures":[I
    invoke-interface {p1, v9, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 262
    aget v3, v2, v7

    iput v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    .line 263
    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    invoke-interface {p1, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 265
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 267
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 271
    const/16 v3, 0x2802

    invoke-interface {p1, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 273
    const/16 v3, 0x2803

    invoke-interface {p1, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 276
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 279
    iget-object v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 283
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 286
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :goto_0
    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->generateWeightedGrid(Ljavax/microedition/khronos/opengles/GL;)Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    .line 296
    return-void

    .line 285
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 286
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_1
    throw v3

    .line 287
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
