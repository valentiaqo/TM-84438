.class public Lio/appium/android/apis/graphics/spritetext/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;
    }
.end annotation


# static fields
.field private static final STATE_ADDING:I = 0x2

.field private static final STATE_DRAWING:I = 0x3

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_NEW:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mFullColor:Z

.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;",
            ">;"
        }
    .end annotation
.end field

.field private mLineHeight:I

.field private mState:I

.field private mStrikeHeight:I

.field private mStrikeWidth:I

.field private mTexelHeight:F

.field private mTexelWidth:F

.field private mTextureID:I

.field private mU:I

.field private mV:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "fullColor"    # Z
    .param p2, "strikeWidth"    # I
    .param p3, "strikeHeight"    # I

    .prologue
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    .line 63
    iput-boolean p1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mFullColor:Z

    .line 64
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    .line 65
    iput p3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    .line 66
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    int-to-double v0, v0

    div-double v0, v3, v0

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTexelWidth:F

    .line 67
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    int-to-double v0, v0

    div-double v0, v3, v0

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTexelHeight:F

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iput v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 72
    return-void
.end method

.method private checkState(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 364
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    if-eq v0, p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call this method now."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 368
    return-void
.end method


# virtual methods
.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)I
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I
    .locals 31
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textPaint"    # Landroid/graphics/Paint;
    .param p5, "minWidth"    # I
    .param p6, "minHeight"    # I

    .prologue
    .line 176
    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 177
    if-eqz p2, :cond_4

    const/4 v14, 0x1

    .line 178
    .local v14, "drawBackground":Z
    :goto_0
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    const/4 v15, 0x1

    .line 180
    .local v15, "drawText":Z
    :goto_1
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v23, "padding":Landroid/graphics/Rect;
    if-eqz v14, :cond_0

    .line 182
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, p5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 187
    :cond_0
    const/4 v10, 0x0

    .line 188
    .local v10, "ascent":I
    const/4 v13, 0x0

    .line 189
    .local v13, "descent":I
    const/16 v20, 0x0

    .line 190
    .local v20, "measuredTextWidth":I
    if-eqz v15, :cond_1

    .line 192
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v10, v2

    .line 193
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 194
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    .line 196
    :cond_1
    add-int v24, v10, v13

    .line 197
    .local v24, "textHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 199
    .local v25, "textWidth":I
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int v21, v2, v3

    .line 200
    .local v21, "padHeight":I
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int v22, v2, v3

    .line 201
    .local v22, "padWidth":I
    add-int v2, v24, v21

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 202
    .local v18, "height":I
    add-int v2, v25, v22

    move/from16 v0, p5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 203
    .local v8, "width":I
    sub-int v16, v18, v21

    .line 204
    .local v16, "effectiveTextHeight":I
    sub-int v17, v8, v22

    .line 206
    .local v17, "effectiveTextWidth":I
    sub-int v2, v16, v24

    div-int/lit8 v11, v2, 0x2

    .line 207
    .local v11, "centerOffsetHeight":I
    sub-int v2, v17, v25

    div-int/lit8 v12, v2, 0x2

    .line 213
    .local v12, "centerOffsetWidth":I
    move-object/from16 v0, p0

    iget v6, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 214
    .local v6, "u":I
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    move/from16 v27, v0

    .line 215
    .local v27, "v":I
    move-object/from16 v0, p0

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    move/from16 v19, v0

    .line 217
    .local v19, "lineHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    if-le v8, v2, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget v8, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    .line 222
    :cond_2
    add-int v2, v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    if-le v2, v3, :cond_3

    .line 224
    const/4 v6, 0x0

    .line 225
    add-int v27, v27, v19

    .line 226
    const/16 v19, 0x0

    .line 228
    :cond_3
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 229
    add-int v2, v27, v19

    move-object/from16 v0, p0

    iget v3, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    if-le v2, v3, :cond_6

    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Out of texture space."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v6    # "u":I
    .end local v8    # "width":I
    .end local v10    # "ascent":I
    .end local v11    # "centerOffsetHeight":I
    .end local v12    # "centerOffsetWidth":I
    .end local v13    # "descent":I
    .end local v14    # "drawBackground":Z
    .end local v15    # "drawText":Z
    .end local v16    # "effectiveTextHeight":I
    .end local v17    # "effectiveTextWidth":I
    .end local v18    # "height":I
    .end local v19    # "lineHeight":I
    .end local v20    # "measuredTextWidth":I
    .end local v21    # "padHeight":I
    .end local v22    # "padWidth":I
    .end local v23    # "padding":Landroid/graphics/Rect;
    .end local v24    # "textHeight":I
    .end local v25    # "textWidth":I
    .end local v27    # "v":I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 178
    .restart local v14    # "drawBackground":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 233
    .restart local v6    # "u":I
    .restart local v8    # "width":I
    .restart local v10    # "ascent":I
    .restart local v11    # "centerOffsetHeight":I
    .restart local v12    # "centerOffsetWidth":I
    .restart local v13    # "descent":I
    .restart local v15    # "drawText":Z
    .restart local v16    # "effectiveTextHeight":I
    .restart local v17    # "effectiveTextWidth":I
    .restart local v18    # "height":I
    .restart local v19    # "lineHeight":I
    .restart local v20    # "measuredTextWidth":I
    .restart local v21    # "padHeight":I
    .restart local v22    # "padWidth":I
    .restart local v23    # "padding":Landroid/graphics/Rect;
    .restart local v24    # "textHeight":I
    .restart local v25    # "textWidth":I
    .restart local v27    # "v":I
    :cond_6
    add-int v26, v6, v8

    .line 234
    .local v26, "u2":I
    add-int v29, v27, v10

    .line 235
    .local v29, "vBase":I
    add-int v28, v27, v18

    .line 237
    .local v28, "v2":I
    if-eqz v14, :cond_7

    .line 238
    add-int v2, v6, v8

    add-int v3, v27, v18

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    :cond_7
    if-eqz v15, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    add-int/2addr v3, v12

    int-to-float v3, v3

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v29

    add-int/2addr v4, v11

    int-to-float v4, v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    :cond_8
    add-int v2, v6, v8

    move-object/from16 v0, p0

    iput v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 251
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    .line 252
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v2, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    int-to-float v3, v8

    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v10

    add-int v7, v27, v18

    move/from16 v0, v18

    neg-int v9, v0

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;-><init>(FFFIIII)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 122
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 123
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 125
    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    .line 126
    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    .line 127
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mFullColor:Z

    if-eqz v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 129
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 131
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 132
    return-void

    .line 127
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "viewWidth"    # F
    .param p3, "viewHeight"    # F

    .prologue
    const/high16 v7, 0x3ec00000    # 0.375f

    const/high16 v3, 0x10000

    const/4 v1, 0x0

    .line 313
    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 314
    const/16 v0, 0xde1

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 315
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 316
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 317
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 318
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 319
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 320
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 321
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 322
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, p2

    move v3, v1

    move v4, p3

    move v5, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 323
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 324
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 325
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 327
    invoke-interface {p1, v7, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 328
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "labelID"    # I

    .prologue
    const/16 v4, 0xde1

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 340
    invoke-direct {p0, v0, v0}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 341
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    .line 342
    .local v6, "label":Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    move-object v0, p1

    .line 343
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8b9d

    iget-object v2, v6, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->mCrop:[I

    invoke-interface {v0, v4, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    move-object v0, p1

    .line 345
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    float-to-int v1, p2

    float-to-int v2, p3

    iget v4, v6, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->width:F

    float-to-int v4, v4

    iget v5, v6, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->height:F

    float-to-int v5, v5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 347
    return-void
.end method

.method public endAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 264
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 265
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 266
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 268
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    iput-object v4, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 270
    iput-object v4, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 271
    return-void
.end method

.method public endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 355
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 356
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 357
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 358
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 359
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 360
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 361
    return-void
.end method

.method public getBaseline(I)F
    .locals 1
    .param p1, "labelID"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->baseline:F

    return v0
.end method

.method public getHeight(I)F
    .locals 1
    .param p1, "labelID"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->height:F

    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .param p1, "labelID"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->width:F

    return v0
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v5, 0x0

    const v4, 0x47012f00    # 33071.0f

    const/high16 v3, 0x46180000    # 9728.0f

    const/4 v1, 0x1

    const/16 v2, 0xde1

    .line 81
    iput v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 82
    new-array v0, v1, [I

    .line 83
    .local v0, "textures":[I
    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 84
    aget v1, v0, v5

    iput v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    .line 85
    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 88
    const/16 v1, 0x2801

    invoke-interface {p1, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 90
    const/16 v1, 0x2800

    invoke-interface {p1, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 93
    const/16 v1, 0x2802

    invoke-interface {p1, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 95
    const/16 v1, 0x2803

    invoke-interface {p1, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 98
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 100
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    if-lez v1, :cond_0

    .line 108
    new-array v0, v3, [I

    .line 109
    .local v0, "textures":[I
    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    aput v1, v0, v2

    .line 110
    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 111
    iput v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 114
    .end local v0    # "textures":[I
    :cond_0
    return-void
.end method
