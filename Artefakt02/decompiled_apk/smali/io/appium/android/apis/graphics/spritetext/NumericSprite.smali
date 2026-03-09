.class public Lio/appium/android/apis/graphics/spritetext/NumericSprite;
.super Ljava/lang/Object;
.source "NumericSprite.java"


# static fields
.field private static final sStrike:Ljava/lang/String; = "0123456789"


# instance fields
.field private mLabelId:[I

.field private mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

.field private mText:Ljava/lang/String;

.field private mWidth:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mWidth:[I

    .line 97
    new-array v0, v1, [I

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelId:[I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    .line 27
    return-void
.end method

.method private format(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private roundUpPower2(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 56
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 57
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 58
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 59
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 60
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "viewWidth"    # F
    .param p5, "viewHeight"    # F

    .prologue
    .line 69
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 70
    .local v3, "length":I
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v4, p1, p4, p5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 71
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 72
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 73
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x30

    .line 74
    .local v1, "digit":I
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelId:[I

    aget v5, v5, v1

    invoke-virtual {v4, p1, p2, p3, v5}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 75
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mWidth:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr p2, v4

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v4, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    return-void
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->roundUpPower2(I)I

    move-result v1

    .line 31
    .local v1, "height":I
    const/high16 v3, 0x41100000    # 9.0f

    .line 32
    .local v3, "interDigitGaps":F
    const/high16 v5, 0x41100000    # 9.0f

    const-string v6, "0123456789"

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {p0, v5}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->roundUpPower2(I)I

    move-result v4

    .line 33
    .local v4, "width":I
    new-instance v5, Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;-><init>(ZII)V

    iput-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    .line 34
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v5, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 35
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v5, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 37
    const-string v5, "0123456789"

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "digit":Ljava/lang/String;
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelId:[I

    iget-object v6, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v6, p1, v0, p2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v6

    aput v6, v5, v2

    .line 39
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mWidth:[I

    iget-object v6, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v6, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->getWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v5, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "digit":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v5, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 42
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->format(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mLabelMaker:Lio/appium/android/apis/graphics/spritetext/LabelMaker;

    .line 47
    return-void
.end method

.method public width()F
    .locals 6

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "width":F
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 83
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "c":C
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/NumericSprite;->mWidth:[I

    add-int/lit8 v5, v0, -0x30

    aget v4, v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "c":C
    :cond_0
    return v3
.end method
