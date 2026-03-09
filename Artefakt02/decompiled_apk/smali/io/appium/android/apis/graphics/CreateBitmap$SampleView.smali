.class Lio/appium/android/apis/graphics/CreateBitmap$SampleView;
.super Landroid/view/View;
.source "CreateBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CreateBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mColors:[I

.field private mJPEG:[Landroid/graphics/Bitmap;

.field private mPNG:[Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->setFocusable(Z)V

    .line 72
    invoke-static {}, Lio/appium/android/apis/graphics/CreateBitmap;->access$000()[I

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mColors:[I

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mColors:[I

    .line 75
    .local v0, "colors":[I
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 77
    iget-object v6, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v6, v7

    .line 79
    iget-object v6, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v6, v7

    .line 81
    iget-object v6, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v6, v7

    .line 85
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 91
    const/4 v9, 0x3

    .local v9, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v9, v1, :cond_0

    .line 92
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x32

    const/16 v8, 0x32

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 91
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 99
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mJPEG:[Landroid/graphics/Bitmap;

    .line 100
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPNG:[Landroid/graphics/Bitmap;

    .line 101
    const/4 v9, 0x0

    :goto_1
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 102
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mJPEG:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v9

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-static {v2, v3, v4}, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->codec(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 103
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPNG:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v9

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->codec(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 105
    :cond_1
    return-void
.end method

.method private static codec(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .prologue
    .line 61
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 64
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 65
    .local v0, "array":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x40

    const/4 v9, 0x0

    const/16 v6, 0x32

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 108
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v10, v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v10

    invoke-virtual {p1, v0, v11, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mJPEG:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v10

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {p1, v0, v1, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPNG:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v10

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p1, v0, v1, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mColors:[I

    const/4 v8, 0x1

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v7, v6

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 120
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget-object v1, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mColors:[I

    iget-object v9, p0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 123
    return-void
.end method
