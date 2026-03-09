.class Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
.super Ljava/lang/Object;
.source "CubeMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CubeMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# static fields
.field static final CHAR_SIZE:I = 0x2

.field static final FLOAT_SIZE:I = 0x4

.field static final VERTEX_NORMAL_BUFFER_INDEX_OFFSET:I = 0x3

.field static final VERTEX_SIZE:I = 0x18


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
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-ltz p1, :cond_0

    const/high16 v15, 0x10000

    move/from16 v0, p1

    if-lt v0, v15, :cond_1

    .line 259
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "w"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 261
    :cond_1
    if-ltz p2, :cond_2

    const/high16 v15, 0x10000

    move/from16 v0, p2

    if-lt v0, v15, :cond_3

    .line 262
    :cond_2
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "h"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 264
    :cond_3
    mul-int v15, p1, p2

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 265
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "w * h >= 65536"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 268
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    .line 269
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    .line 270
    mul-int v12, p1, p2

    .line 272
    .local v12, "size":I
    mul-int/lit8 v15, v12, 0x18

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 276
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    add-int/lit8 v11, v15, -0x1

    .line 277
    .local v11, "quadW":I
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    add-int/lit8 v10, v15, -0x1

    .line 278
    .local v10, "quadH":I
    mul-int v9, v11, v10

    .line 279
    .local v9, "quadCount":I
    mul-int/lit8 v8, v9, 0x6

    .line 280
    .local v8, "indexCount":I
    move-object/from16 v0, p0

    iput v8, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexCount:I

    .line 281
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

    iput-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, "i":I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    if-ge v14, v10, :cond_6

    .line 299
    const/4 v13, 0x0

    .local v13, "x":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    if-ge v13, v11, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    mul-int/2addr v15, v14

    add-int/2addr v15, v13

    int-to-char v2, v15

    .line 301
    .local v2, "a":C
    move-object/from16 v0, p0

    iget v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    mul-int/2addr v15, v14

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    int-to-char v3, v15

    .line 302
    .local v3, "b":C
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    int-to-char v4, v15

    .line 303
    .local v4, "c":C
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    int-to-char v5, v15

    .line 305
    .local v5, "d":C
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v3}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v3}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v15, v7, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v15, v6, v5}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 299
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 298
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

    .line 315
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

    .line 337
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 339
    new-array v1, v2, [I

    .local v1, "vboIds":[I
    move-object v0, p1

    .line 340
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 341
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 342
    aget v2, v1, v5

    iput v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    .line 343
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    .line 346
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 347
    iget-object v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget-object v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    const v4, 0x88e4

    invoke-interface {v0, v7, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 350
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 351
    iget-object v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    iget-object v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    const v4, 0x88e4

    invoke-interface {v0, v8, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 355
    iput-object v6, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 356
    iput-object v6, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 357
    iput-object v6, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 358
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 359
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v7, 0x8075

    const v6, 0x8074

    const/16 v5, 0x1406

    const/16 v3, 0x18

    const/4 v4, 0x0

    .line 362
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    move-object v0, p1

    .line 363
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 365
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 367
    const v1, 0x8892

    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 368
    const/4 v1, 0x3

    invoke-interface {v0, v1, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 370
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 371
    const/16 v1, 0xc

    invoke-interface {v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 373
    const v1, 0x8893

    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 374
    const/4 v1, 0x4

    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexCount:I

    const/16 v3, 0x1403

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 375
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 376
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 377
    const v1, 0x8892

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 378
    const v1, 0x8893

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 379
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 380
    return-void
.end method

.method public set(IIFFFFFF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "nx"    # F
    .param p7, "ny"    # F
    .param p8, "nz"    # F

    .prologue
    .line 318
    if-ltz p1, :cond_0

    iget v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    if-lt p1, v1, :cond_1

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "i"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_1
    if-ltz p2, :cond_2

    iget v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    if-lt p2, v1, :cond_3

    .line 322
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "j"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_3
    iget v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 327
    .local v0, "index":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, v0, 0x18

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 329
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 330
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 331
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 332
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 333
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 334
    return-void
.end method
