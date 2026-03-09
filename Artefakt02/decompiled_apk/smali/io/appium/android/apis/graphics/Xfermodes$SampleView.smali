.class Lio/appium/android/apis/graphics/Xfermodes$SampleView;
.super Landroid/view/View;
.source "Xfermodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Xfermodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final H:I = 0x40

.field private static final ROW_MAX:I = 0x4

.field private static final W:I = 0x40

.field private static final sLabels:[Ljava/lang/String;

.field private static final sModes:[Landroid/graphics/Xfermode;


# instance fields
.field private mBG:Landroid/graphics/Shader;

.field private mDstB:Landroid/graphics/Bitmap;

.field private mSrcB:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    .line 92
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Clear"

    aput-object v1, v0, v4

    const-string v1, "Src"

    aput-object v1, v0, v5

    const-string v1, "Dst"

    aput-object v1, v0, v6

    const-string v1, "SrcOver"

    aput-object v1, v0, v7

    const-string v1, "DstOver"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "SrcIn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DstIn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SrcOut"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DstOut"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SrcATop"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DstATop"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Xor"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Darken"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Lighten"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Screen"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/high16 v5, 0x40c00000    # 6.0f

    const/16 v3, 0x40

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {v3, v3}, Lio/appium/android/apis/graphics/Xfermodes;->makeSrc(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mSrcB:Landroid/graphics/Bitmap;

    .line 103
    invoke-static {v3, v3}, Lio/appium/android/apis/graphics/Xfermodes;->makeDst(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mDstB:Landroid/graphics/Bitmap;

    .line 106
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    .line 112
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 114
    iget-object v2, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 115
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        -0x1
        -0x333334
        -0x333334
        -0x1
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 120
    new-instance v16, Landroid/graphics/Paint;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 121
    .local v16, "labelP":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 124
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 126
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x420c0000    # 35.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    const/16 v18, 0x0

    .line 129
    .local v18, "x":I
    const/16 v19, 0x0

    .line 130
    .local v19, "y":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    sget-object v2, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    array-length v2, v2

    if-ge v15, v2, :cond_1

    .line 132
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    move/from16 v0, v18

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v2, v4

    add-int/lit8 v2, v18, 0x40

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    add-int/lit8 v2, v19, 0x40

    int-to-float v2, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    add-int/lit8 v2, v18, 0x40

    int-to-float v5, v2

    add-int/lit8 v2, v19, 0x40

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    move/from16 v0, v18

    int-to-float v9, v0

    move/from16 v0, v19

    int-to-float v10, v0

    add-int/lit8 v2, v18, 0x40

    int-to-float v11, v2

    add-int/lit8 v2, v19, 0x40

    int-to-float v12, v2

    const/4 v13, 0x0

    const/16 v14, 0x1f

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v17

    .line 149
    .local v17, "sc":I
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mDstB:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    sget-object v2, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    aget-object v2, v2, v15

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mSrcB:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 154
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 157
    sget-object v2, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sLabels:[Ljava/lang/String;

    aget-object v2, v2, v15

    add-int/lit8 v3, v18, 0x20

    int-to-float v3, v3

    move/from16 v0, v19

    int-to-float v4, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    add-int/lit8 v18, v18, 0x4a

    .line 163
    rem-int/lit8 v2, v15, 0x4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 164
    const/16 v18, 0x0

    .line 165
    add-int/lit8 v19, v19, 0x5e

    .line 130
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 168
    .end local v17    # "sc":I
    :cond_1
    return-void
.end method
