.class public Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;
.super Ljava/lang/Object;
.source "SpriteTextRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final SAMPLE_FACTOR:F = 0.083333336f

.field private static final SAMPLE_PERIOD_FRAMES:I = 0xc


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrames:I

.field private mHeight:I

.field private mLabelA:I

.field private mLabelB:I

.field private mLabelC:I

.field private mLabelMsPF:I

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

.field private mLastTime:J

.field private mMsPerFrame:I

.field private mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

.field private mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

.field private mScratch:[F

.field private mStartTime:J

.field private mTextureID:I

.field private mTriangle:Lio/appium/android/apis/graphics/spritetext/Triangle;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    .line 44
    iput-object p1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lio/appium/android/apis/graphics/spritetext/Triangle;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/spritetext/Triangle;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTriangle:Lio/appium/android/apis/graphics/spritetext/Triangle;

    .line 46
    new-instance v0, Lio/appium/android/apis/graphics/spritetext/Projector;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/spritetext/Projector;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 51
    return-void
.end method

.method private drawLabel(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "triangleVertex"    # I
    .param p3, "labelId"    # I

    .prologue
    .line 224
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTriangle:Lio/appium/android/apis/graphics/spritetext/Triangle;

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lio/appium/android/apis/graphics/spritetext/Triangle;->getX(I)F

    move-result v7

    .line 225
    .local v7, "x":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTriangle:Lio/appium/android/apis/graphics/spritetext/Triangle;

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lio/appium/android/apis/graphics/spritetext/Triangle;->getY(I)F

    move-result v8

    .line 226
    .local v8, "y":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x0

    aput v7, v9, v10

    .line 227
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x1

    aput v8, v9, v10

    .line 228
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 229
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    .line 230
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

    iget-object v10, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v11, 0x0

    iget-object v12, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v13, 0x4

    invoke-virtual {v9, v10, v11, v12, v13}, Lio/appium/android/apis/graphics/spritetext/Projector;->project([FI[FI)V

    .line 231
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x4

    aget v2, v9, v10

    .line 232
    .local v2, "sx":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mScratch:[F

    const/4 v10, 0x5

    aget v3, v9, v10

    .line 233
    .local v3, "sy":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->getHeight(I)F

    move-result v1

    .line 234
    .local v1, "height":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->getWidth(I)F

    move-result v6

    .line 235
    .local v6, "width":F
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, v6

    sub-float v4, v2, v9

    .line 236
    .local v4, "tx":F
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, v1

    sub-float v5, v3, v9

    .line 237
    .local v5, "ty":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    move/from16 v0, p3

    invoke-virtual {v9, p1, v4, v5, v0}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 238
    return-void
.end method

.method private drawMsPF(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "rightMargin"    # F

    .prologue
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 206
    .local v9, "time":J
    iget-wide v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 207
    iput-wide v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mStartTime:J

    .line 209
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mFrames:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mFrames:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mFrames:I

    .line 211
    iget-wide v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mStartTime:J

    sub-long v6, v9, v0

    .line 212
    .local v6, "delta":J
    iput-wide v9, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mStartTime:J

    .line 213
    long-to-float v0, v6

    const v1, 0x3daaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mMsPerFrame:I

    .line 215
    .end local v6    # "delta":J
    :cond_1
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mMsPerFrame:I

    if-lez v0, :cond_2

    .line 216
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mMsPerFrame:I

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->setValue(I)V

    .line 217
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->width()F

    move-result v8

    .line 218
    .local v8, "numWidth":F
    sub-float v2, p2, v8

    .line 219
    .local v2, "x":F
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    const/4 v3, 0x0

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mWidth:I

    int-to-float v4, v1

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 221
    .end local v2    # "x":F
    .end local v8    # "numWidth":F
    :cond_2
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 141
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 143
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 152
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 158
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 159
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3fe00000    # -2.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 165
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 166
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 168
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 169
    const/16 v0, 0xde1

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTextureID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 170
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const/16 v2, 0x2901

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 172
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const/16 v2, 0x2901

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    rem-long v12, v0, v2

    .line 185
    .local v12, "time":J
    const v0, 0x3db851ec    # 0.09f

    long-to-int v1, v12

    int-to-float v1, v1

    mul-float v10, v0, v1

    .line 187
    .local v10, "angle":F
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 188
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 190
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTriangle:Lio/appium/android/apis/graphics/spritetext/Triangle;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/Triangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 192
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 194
    const/4 v0, 0x0

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelA:I

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->drawLabel(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 195
    const/4 v0, 0x1

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelB:I

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->drawLabel(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 196
    const/4 v0, 0x2

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelC:I

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->drawLabel(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 197
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelMsPF:I

    invoke-virtual {v1, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->getWidth(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v11, v0, v1

    .line 198
    .local v11, "msPFX":F
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const/4 v1, 0x0

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelMsPF:I

    invoke-virtual {v0, p1, v11, v1, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 199
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 201
    invoke-direct {p0, p1, v11}, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->drawMsPF(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 202
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 241
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mWidth:I

    .line 242
    iput p3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mHeight:I

    .line 243
    invoke-interface {p1, v1, v1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 244
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

    invoke-virtual {v0, v1, v1, p2, p3}, Lio/appium/android/apis/graphics/spritetext/Projector;->setCurrentView(IIII)V

    .line 252
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 253
    .local v2, "ratio":F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 254
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 255
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x41200000    # 10.0f

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 256
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mProjector:Lio/appium/android/apis/graphics/spritetext/Projector;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 257
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const v9, 0x47012f00    # 33071.0f

    const/4 v8, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/16 v6, 0xde1

    .line 59
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 65
    const/16 v3, 0xc50

    const/16 v4, 0x1101

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 68
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v5, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 69
    const/16 v3, 0x1d01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 70
    const/16 v3, 0xb71

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 71
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 78
    new-array v2, v8, [I

    .line 79
    .local v2, "textures":[I
    invoke-interface {p1, v8, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 81
    aget v3, v2, v7

    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTextureID:I

    .line 82
    iget v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mTextureID:I

    invoke-interface {p1, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 84
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 86
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 90
    const/16 v3, 0x2802

    invoke-interface {p1, v6, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 92
    const/16 v3, 0x2803

    invoke-interface {p1, v6, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 95
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 98
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 102
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    :goto_1
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 120
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 121
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const-string v4, "A"

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelA:I

    .line 122
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const-string v4, "B"

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelB:I

    .line 123
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const-string v4, "C"

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelC:I

    .line 124
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const-string v4, "ms/f"

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelMsPF:I

    .line 125
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 127
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 132
    :goto_2
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->initialize(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Paint;)V

    .line 133
    return-void

    .line 104
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    :goto_3
    throw v3

    .line 117
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v3, Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const/16 v4, 0x100

    const/16 v5, 0x40

    invoke-direct {v3, v8, v4, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;-><init>(ZII)V

    iput-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mLabels:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    goto :goto_1

    .line 130
    :cond_1
    new-instance v3, Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    invoke-direct {v3}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;-><init>()V

    iput-object v3, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;->mNumericSprite:Lio/appium/android/apis/graphics/spritetext/NumericSprite;

    goto :goto_2

    .line 106
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_3
.end method
