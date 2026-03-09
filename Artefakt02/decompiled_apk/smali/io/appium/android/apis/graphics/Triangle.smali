.class Lio/appium/android/apis/graphics/Triangle;
.super Ljava/lang/Object;
.source "TriangleRenderer.java"


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

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/16 v6, 0x24

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 187
    .local v5, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 190
    const/16 v6, 0x18

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 191
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 194
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 195
    .local v2, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 199
    const/16 v6, 0x9

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 206
    .local v0, "coords":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 207
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v9, :cond_0

    .line 208
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "j":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    .line 213
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 214
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v3

    aget v7, v0, v7

    mul-float/2addr v7, v11

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    .end local v3    # "j":I
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    .line 219
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v7, v1

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 222
    :cond_4
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget-object v6, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    return-void

    .line 199
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

    .line 228
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 229
    iget-object v0, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 230
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 231
    const/4 v0, 0x2

    iget-object v1, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 232
    const/4 v0, 0x5

    const/16 v1, 0x1403

    iget-object v2, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 234
    return-void
.end method
