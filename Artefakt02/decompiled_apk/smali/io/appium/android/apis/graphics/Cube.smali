.class Lio/appium/android/apis/graphics/Cube;
.super Ljava/lang/Object;
.source "Cube.java"


# instance fields
.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v3, 0x10000

    .line 33
    .local v3, "one":I
    const/16 v6, 0x18

    new-array v5, v6, [I

    neg-int v6, v3

    aput v6, v5, v8

    neg-int v6, v3

    aput v6, v5, v9

    neg-int v6, v3

    aput v6, v5, v10

    aput v3, v5, v11

    neg-int v6, v3

    aput v6, v5, v12

    const/4 v6, 0x5

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v3, v5, v6

    const/4 v6, 0x7

    aput v3, v5, v6

    const/16 v6, 0x8

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x9

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v3, v5, v6

    const/16 v6, 0xb

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xc

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xd

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v3, v5, v6

    const/16 v6, 0xf

    aput v3, v5, v6

    const/16 v6, 0x10

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v3, v5, v6

    const/16 v6, 0x12

    aput v3, v5, v6

    const/16 v6, 0x13

    aput v3, v5, v6

    const/16 v6, 0x14

    aput v3, v5, v6

    const/16 v6, 0x15

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x16

    aput v3, v5, v6

    const/16 v6, 0x17

    aput v3, v5, v6

    .line 44
    .local v5, "vertices":[I
    const/16 v6, 0x20

    new-array v1, v6, [I

    aput v8, v1, v8

    aput v8, v1, v9

    aput v8, v1, v10

    aput v3, v1, v11

    aput v3, v1, v12

    const/4 v6, 0x5

    aput v8, v1, v6

    const/4 v6, 0x6

    aput v8, v1, v6

    const/4 v6, 0x7

    aput v3, v1, v6

    const/16 v6, 0x8

    aput v3, v1, v6

    const/16 v6, 0x9

    aput v3, v1, v6

    const/16 v6, 0xa

    aput v8, v1, v6

    const/16 v6, 0xb

    aput v3, v1, v6

    const/16 v6, 0xc

    aput v8, v1, v6

    const/16 v6, 0xd

    aput v3, v1, v6

    const/16 v6, 0xe

    aput v8, v1, v6

    const/16 v6, 0xf

    aput v3, v1, v6

    const/16 v6, 0x10

    aput v8, v1, v6

    const/16 v6, 0x11

    aput v8, v1, v6

    const/16 v6, 0x12

    aput v3, v1, v6

    const/16 v6, 0x13

    aput v3, v1, v6

    const/16 v6, 0x14

    aput v3, v1, v6

    const/16 v6, 0x15

    aput v8, v1, v6

    const/16 v6, 0x16

    aput v3, v1, v6

    const/16 v6, 0x17

    aput v3, v1, v6

    const/16 v6, 0x18

    aput v3, v1, v6

    const/16 v6, 0x19

    aput v3, v1, v6

    const/16 v6, 0x1a

    aput v3, v1, v6

    const/16 v6, 0x1b

    aput v3, v1, v6

    const/16 v6, 0x1c

    aput v8, v1, v6

    const/16 v6, 0x1d

    aput v3, v1, v6

    const/16 v6, 0x1e

    aput v3, v1, v6

    const/16 v6, 0x1f

    aput v3, v1, v6

    .line 55
    .local v1, "colors":[I
    const/16 v6, 0x24

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    .line 72
    .local v2, "indices":[B
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 73
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 75
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 76
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 81
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 82
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    array-length v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 85
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v6, p0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void

    .line 55
    nop

    :array_0
    .array-data 1
        0x0t
        0x4t
        0x5t
        0x0t
        0x5t
        0x1t
        0x1t
        0x5t
        0x6t
        0x1t
        0x6t
        0x2t
        0x2t
        0x6t
        0x7t
        0x2t
        0x7t
        0x3t
        0x3t
        0x7t
        0x4t
        0x3t
        0x4t
        0x0t
        0x4t
        0x7t
        0x6t
        0x4t
        0x6t
        0x5t
        0x3t
        0x0t
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v4, 0x140c

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 91
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 92
    const/4 v0, 0x3

    iget-object v1, p0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 93
    iget-object v0, p0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 94
    const/16 v0, 0x24

    const/16 v1, 0x1401

    iget-object v2, p0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 95
    return-void
.end method
