.class Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;
.super Ljava/lang/Object;
.source "StaticTriangleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/StaticTriangleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Triangle"
.end annotation


# static fields
.field private static final VERTS:I = 0x3


# instance fields
.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/16 v6, 0x24

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 219
    .local v5, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 222
    const/16 v6, 0x18

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 223
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 226
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 227
    .local v2, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 231
    const/16 v6, 0x9

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 238
    .local v0, "coords":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 239
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v9, :cond_0

    .line 240
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "j":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    .line 245
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 246
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 244
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    .end local v3    # "j":I
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    .line 251
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v7, v1

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 254
    :cond_4
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    iget-object v6, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    return-void

    .line 231
    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41800000    # -0.25f
        0x0
        0x3f000000    # 0.5f
        -0x41800000    # -0.25f
        0x0
        0x0
        0x3f0f1bbd
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 260
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES10;->glFrontFace(I)V

    .line 261
    iget-object v0, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 262
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 263
    const/4 v0, 0x2

    iget-object v1, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v2, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 264
    const/4 v0, 0x5

    const/16 v1, 0x1403

    iget-object v2, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 266
    return-void
.end method
