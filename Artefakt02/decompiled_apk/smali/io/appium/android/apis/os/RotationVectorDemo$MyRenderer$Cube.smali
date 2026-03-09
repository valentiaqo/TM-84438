.class Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;
.super Ljava/lang/Object;
.source "RotationVectorDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cube"
.end annotation


# instance fields
.field private mColorBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$1:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    iput-object p1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->this$1:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v5, 0x18

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    .line 170
    .local v4, "vertices":[F
    const/16 v5, 0x20

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    .line 177
    .local v1, "colors":[F
    const/16 v5, 0x24

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    .line 186
    .local v2, "indices":[B
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 187
    .local v3, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 189
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 190
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 193
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 195
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 196
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    array-length v5, v2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 199
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    iget-object v5, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    return-void

    .line 163
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 170
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 177
    :array_2
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
    const/16 v4, 0x1406

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 204
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 205
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 206
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 207
    const/4 v0, 0x3

    iget-object v1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 208
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 209
    const/16 v0, 0x24

    const/16 v1, 0x1401

    iget-object v2, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 210
    return-void
.end method
