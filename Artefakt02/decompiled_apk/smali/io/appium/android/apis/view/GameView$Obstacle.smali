.class Lio/appium/android/apis/view/GameView$Obstacle;
.super Lio/appium/android/apis/view/GameView$Sprite;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Obstacle"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x7f

    .line 746
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->this$0:Lio/appium/android/apis/view/GameView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameView$Sprite;-><init>(Lio/appium/android/apis/view/GameView;Lio/appium/android/apis/view/GameView$1;)V

    .line 747
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    .line 748
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 749
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0xff

    const/4 v6, 0x0

    .line 762
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mDestroyAnimProgress:F

    move v4, v3

    move v5, v2

    move v7, v2

    move v8, v6

    move v9, v6

    invoke-static/range {v0 .. v9}, Lio/appium/android/apis/view/GameView;->setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V

    .line 765
    iget v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPositionY:F

    iget v2, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mSize:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mDestroyAnimProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 767
    return-void
.end method

.method public getDestroyAnimDuration()F
    .locals 1

    .prologue
    .line 771
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public step(F)Z
    .locals 1
    .param p1, "tau"    # F

    .prologue
    .line 754
    invoke-super {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;->step(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 758
    :goto_0
    return v0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView$Obstacle;->wrapAtPlayfieldBoundary()V

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method
