.class Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
.super Ljava/lang/Object;
.source "MatrixPaletteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/MatrixPaletteRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# static fields
.field static final CHAR_SIZE:I = 0x2

.field static final FLOAT_SIZE:I = 0x4

.field static final VERTEX_PALETTE_INDEX_OFFSET:I = 0x1c

.field static final VERTEX_SIZE:I = 0x20

.field static final VERTEX_TEXTURE_BUFFER_INDEX_OFFSET:I = 0x3

.field static final VERTEX_WEIGHT_BUFFER_INDEX_OFFSET:I = 0x5


# instance fields
.field private mElementBufferObjectId:I

.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexCount:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferObjectId:I

.field private mVertexByteBuffer:Ljava/nio/ByteBuffer;

.field private mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-ltz p1, :cond_0

    const/high16 v15, 0x10000

    move/from16 v0, p1

    if-lt v0, v15, :cond_1

    .line 91
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "w"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 93
    :cond_1
    if-ltz p2, :cond_2

    const/high16 v15, 0x10000

    move/from16 v0, p2

    if-lt v0, v15, :cond_3

    .line 94
    :cond_2
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "h"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 96
    :cond_3
    mul-int v15, p1, p2

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 97
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "w * h >= 65536"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 100
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    .line 101
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    .line 102
    mul-int v12, p1, p2

    .line 104
    .local v12, "size":I
    mul-int/lit8 v15, v12, 0x20

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 108
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    add-int/lit8 v11, v15, -0x1

    .line 109
    .local v11, "quadW":I
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    add-int/lit8 v10, v15, -0x1

    .line 110
    .local v10, "quadH":I
    mul-int v9, v11, v10

    .line 111
    .local v9, "quadCount":I
    mul-int/lit8 v8, v9, 0x6

    .line 112
    .local v8, "indexCount":I
    move-object/from16 v0, p0

    iput v8, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexCount:I

    .line 113
    mul-int/lit8 v15, v8, 0x2

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 129
    const/4 v6, 0x0

    .line 130
    .local v6, "i":I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    if-ge v14, v10, :cond_6

    .line 131
    const/4 v13, 0x0

    .local v13, "x":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    if-ge v13, v11, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    mul-int/2addr v15, v14

    add-int/2addr v15, v13

    int-to-char v2, v15

    .line 133
    .local v2, "a":C
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    mul-int/2addr v15, v14

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    int-to-char v3, v15

    .line 134
    .local v3, "b":C
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    int-to-char v4, v15

    .line 135
    .local v4, "c":C
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    int-to-char v5, v15

    .line 137
    .local v5, "d":C
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v3}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v3}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v5}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 131
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "a":C
    .end local v3    # "b":C
    .end local v4    # "c":C
    .end local v5    # "d":C
    :cond_5
    add-int/lit8 v14, v14, 0x1

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 148
    .end local v13    # "x":I
    :cond_6
    return-void
.end method


# virtual methods
.method public createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    const v8, 0x8893

    const v7, 0x8892

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 183
    new-array v1, v2, [I

    .local v1, "vboIds":[I
    move-object v0, p1

    .line 184
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 185
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 186
    aget v2, v1, v5

    iput v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    .line 187
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    .line 190
    iget v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 191
    iget-object v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-object v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    const v4, 0x88e4

    invoke-interface {v0, v7, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 194
    iget v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 195
    iget-object v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v2, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    const v4, 0x88e4

    invoke-interface {v0, v8, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 199
    iput-object v6, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 200
    iput-object v6, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 201
    iput-object v6, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 202
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v8, 0x8074

    const/16 v7, 0x1406

    const/4 v6, 0x2

    const/16 v4, 0x20

    const/4 v5, 0x0

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    move-object v1, p1

    .line 206
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 208
    .local v1, "gl11Ext":Ljavax/microedition/khronos/opengles/GL11Ext;
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 210
    const v2, 0x8892

    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 211
    const/4 v2, 0x3

    invoke-interface {v0, v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 212
    const/16 v2, 0xc

    invoke-interface {v0, v6, v7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 214
    const v2, 0x8844

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 215
    const v2, 0x86ad

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    const/16 v2, 0x14

    invoke-interface {v1, v6, v7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    .line 218
    const/16 v2, 0x1401

    const/16 v3, 0x1c

    invoke-interface {v1, v6, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    .line 220
    const v2, 0x8893

    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 221
    const/4 v2, 0x4

    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexCount:I

    const/16 v4, 0x1403

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 222
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 223
    const v2, 0x8844

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 224
    const v2, 0x86ad

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 225
    const v2, 0x8892

    invoke-interface {v0, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 226
    const v2, 0x8893

    invoke-interface {v0, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 227
    return-void
.end method

.method public set(IIFFFFFFFII)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "w0"    # F
    .param p9, "w1"    # F
    .param p10, "p0"    # I
    .param p11, "p1"    # I

    .prologue
    .line 154
    if-ltz p1, :cond_0

    iget v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    if-lt p1, v1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "i"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    if-ltz p2, :cond_2

    iget v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    if-lt p2, v1, :cond_3

    .line 158
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "j"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_3
    add-float v1, p8, p9

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Weights must add up to 1.0f"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_4
    iget v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 167
    .local v0, "index":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, v0, 0x20

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 171
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 176
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v0, 0x20

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, p10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, p11

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 179
    return-void
.end method
