.class public Lio/appium/android/apis/graphics/TriangleRenderer;
.super Ljava/lang/Object;
.source "TriangleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextureID:I

.field private mTriangle:Lio/appium/android/apis/graphics/Triangle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lio/appium/android/apis/graphics/Triangle;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/Triangle;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mTriangle:Lio/appium/android/apis/graphics/Triangle;

    .line 44
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 114
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 116
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 125
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 131
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 132
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3f600000    # -5.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 136
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 137
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 139
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 140
    const/16 v0, 0xde1

    iget v1, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mTextureID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 141
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const/16 v2, 0x2901

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 143
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const/16 v2, 0x2901

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    rem-long v11, v0, v2

    .line 147
    .local v11, "time":J
    const v0, 0x3db851ec    # 0.09f

    long-to-int v1, v11

    int-to-float v1, v1

    mul-float v10, v0, v1

    .line 149
    .local v10, "angle":F
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mTriangle:Lio/appium/android/apis/graphics/Triangle;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/Triangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 152
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 163
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 164
    .local v2, "ratio":F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 165
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 166
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40e00000    # 7.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 168
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

    .line 52
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 58
    const/16 v3, 0xc50

    const/16 v4, 0x1101

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v5, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 62
    const/16 v3, 0x1d01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 63
    const/16 v3, 0xb71

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 64
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 71
    new-array v2, v9, [I

    .line 72
    .local v2, "textures":[I
    invoke-interface {p1, v9, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 74
    aget v3, v2, v7

    iput v3, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mTextureID:I

    .line 75
    iget v3, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mTextureID:I

    invoke-interface {p1, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 77
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 79
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 83
    const/16 v3, 0x2802

    invoke-interface {p1, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 85
    const/16 v3, 0x2803

    invoke-interface {p1, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 88
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 91
    iget-object v3, p0, Lio/appium/android/apis/graphics/TriangleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 95
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_0
    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    return-void

    .line 97
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :goto_1
    throw v3

    .line 99
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
