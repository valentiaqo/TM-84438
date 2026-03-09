.class Lio/appium/android/apis/graphics/Layers$SampleView;
.super Landroid/view/View;
.source "Layers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Layers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final LAYER_FLAGS:I = 0x1f


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/Layers$SampleView;->setFocusable(Z)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v8, 0x42fa0000    # 125.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    const/high16 v7, 0x42960000    # 75.0f

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 52
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    const/16 v5, 0x88

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/Layers$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v8, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method
