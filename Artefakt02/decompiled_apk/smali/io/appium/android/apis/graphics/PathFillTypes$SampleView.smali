.class Lio/appium/android/apis/graphics/PathFillTypes$SampleView;
.super Landroid/view/View;
.source "PathFillTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/PathFillTypes;
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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->setFocusableInTouchMode(Z)V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 48
    return-void
.end method

.method private showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "ft"    # Landroid/graphics/Path$FillType;
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v3, 0x78

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    invoke-virtual {p1, v2, v2, v3, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    const/16 v8, 0xa0

    const/4 v2, 0x0

    .line 62
    iget-object v5, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 64
    .local v5, "paint":Landroid/graphics/Paint;
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 71
    sget-object v10, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object v6, p0

    move-object v7, p1

    move v9, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 72
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 73
    sget-object v10, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object v6, p0

    move-object v7, p1

    move v9, v8

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method
