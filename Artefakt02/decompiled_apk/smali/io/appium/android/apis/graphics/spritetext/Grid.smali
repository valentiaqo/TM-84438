.class Lio/appium/android/apis/graphics/spritetext/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexCount:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 19
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-ltz p1, :cond_0

    const/high16 v17, 0x10000

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 34
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "w"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 36
    :cond_1
    if-ltz p2, :cond_2

    const/high16 v17, 0x10000

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 37
    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "h"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 39
    :cond_3
    mul-int v17, p1, p2

    const/high16 v18, 0x10000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 40
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "w * h >= 65536"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 43
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    .line 44
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    .line 45
    mul-int v14, p1, p2

    .line 46
    .local v14, "size":I
    const/4 v3, 0x4

    .line 47
    .local v3, "FLOAT_SIZE":I
    const/4 v2, 0x2

    .line 48
    .local v2, "CHAR_SIZE":I
    mul-int/lit8 v17, v14, 0x4

    mul-int/lit8 v17, v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 50
    mul-int/lit8 v17, v14, 0x4

    mul-int/lit8 v17, v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 53
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    move/from16 v17, v0

    add-int/lit8 v13, v17, -0x1

    .line 54
    .local v13, "quadW":I
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    move/from16 v17, v0

    add-int/lit8 v12, v17, -0x1

    .line 55
    .local v12, "quadH":I
    mul-int v11, v13, v12

    .line 56
    .local v11, "quadCount":I
    mul-int/lit8 v10, v11, 0x6

    .line 57
    .local v10, "indexCount":I
    move-object/from16 v0, p0

    iput v10, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexCount:I

    .line 58
    mul-int/lit8 v17, v10, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, "i":I
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v12, :cond_6

    .line 76
    const/4 v15, 0x0

    .local v15, "x":I
    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_1
    if-ge v15, v13, :cond_5

    .line 77
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    move/from16 v17, v0

    mul-int v17, v17, v16

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-char v4, v0

    .line 78
    .local v4, "a":C
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    move/from16 v17, v0

    mul-int v17, v17, v16

    add-int v17, v17, v15

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-char v5, v0

    .line 79
    .local v5, "b":C
    add-int/lit8 v17, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-char v6, v0

    .line 80
    .local v6, "c":C
    add-int/lit8 v17, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int v17, v17, v15

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-char v7, v0

    .line 82
    .local v7, "d":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v5}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v6}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v5}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v6}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 76
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 75
    .end local v4    # "a":C
    .end local v5    # "b":C
    .end local v6    # "c":C
    .end local v7    # "d":C
    :cond_5
    add-int/lit8 v16, v16, 0x1

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 93
    .end local v15    # "x":I
    :cond_6
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "useTexture"    # Z

    .prologue
    const v6, 0x8078

    const v5, 0x8074

    const/16 v4, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 116
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 117
    const/4 v0, 0x3

    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 121
    const/4 v0, 0x2

    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 122
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 128
    :goto_0
    const/4 v0, 0x4

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexCount:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 130
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 131
    return-void

    .line 124
    :cond_0
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 125
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method set(IIFFFFF)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F

    .prologue
    .line 96
    if-ltz p1, :cond_0

    iget v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    if-lt p1, v3, :cond_1

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "i"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_1
    if-ltz p2, :cond_2

    iget v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    if-lt p2, v3, :cond_3

    .line 100
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "j"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_3
    iget v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    mul-int/2addr v3, p2

    add-int v0, v3, p1

    .line 105
    .local v0, "index":I
    mul-int/lit8 v1, v0, 0x3

    .line 106
    .local v1, "posIndex":I
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 110
    mul-int/lit8 v2, v0, 0x2

    .line 111
    .local v2, "texIndex":I
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    return-void
.end method
