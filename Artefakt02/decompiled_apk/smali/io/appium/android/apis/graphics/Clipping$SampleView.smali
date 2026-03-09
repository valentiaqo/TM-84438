.class Lio/appium/android/apis/graphics/Clipping$SampleView;
.super Landroid/view/View;
.source "Clipping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Clipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->setFocusable(Z)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPath:Landroid/graphics/Path;

    .line 47
    return-void
.end method

.method private drawScene(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0x64

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v6, 0x41f00000    # 30.0f

    .line 50
    invoke-virtual {p1, v0, v0, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 52
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v5, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    const/high16 v0, 0x428c0000    # 70.0f

    iget-object v1, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    const-string v0, "Clipping"

    iget-object v1, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    const/16 v9, 0x3c

    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x42200000    # 40.0f

    .line 65
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    const/high16 v0, 0x43200000    # 160.0f

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    const/16 v0, 0xa

    const/16 v1, 0xa

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 75
    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v4, 0x428c0000    # 70.0f

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 76
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    const/high16 v0, 0x43200000    # 160.0f

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/Clipping$SampleView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 85
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    const/high16 v0, 0x43200000    # 160.0f

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-virtual {p1, v8, v8, v9, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 91
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v6

    move v2, v6

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 92
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    const/high16 v0, 0x439b0000    # 310.0f

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    invoke-virtual {p1, v8, v8, v9, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 98
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v6

    move v2, v6

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 99
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    const/high16 v0, 0x43200000    # 160.0f

    const/high16 v1, 0x439b0000    # 310.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    invoke-virtual {p1, v8, v8, v9, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 105
    sget-object v5, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v6

    move v2, v6

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 106
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/Clipping$SampleView;->drawScene(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void
.end method
