.class final Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;
.super Ljava/lang/Object;
.source "WindowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/WindowSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MovingPoint"
.end annotation


# instance fields
.field dx:F

.field dy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method adjDelta(FFF)F
    .locals 7
    .param p1, "cur"    # F
    .param p2, "minStep"    # F
    .param p3, "maxStep"    # F

    .prologue
    const/4 v6, 0x0

    .line 110
    float-to-double v0, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p2, v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 111
    cmpg-float v0, p1, v6

    if-gez v0, :cond_0

    neg-float v0, p2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    neg-float p1, p2

    .line 112
    :cond_0
    cmpl-float v0, p1, v6

    if-ltz v0, :cond_1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p1, p2

    .line 113
    :cond_1
    cmpl-float v0, p1, p3

    if-lez v0, :cond_2

    move p1, p3

    .line 114
    :cond_2
    neg-float v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    neg-float p1, p3

    .line 115
    :cond_3
    return p1
.end method

.method init(IIF)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minStep"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 103
    add-int/lit8 v0, p1, -0x1

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 104
    add-int/lit8 v0, p2, -0x1

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 105
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v6

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    .line 106
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v6

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    .line 107
    return-void
.end method

.method step(IIFF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minStep"    # F
    .param p4, "maxStep"    # F

    .prologue
    const/4 v2, 0x0

    .line 119
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 120
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 121
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    iput v2, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 123
    :cond_1
    :goto_0
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, p3, p4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->adjDelta(FFF)F

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    .line 125
    :cond_2
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 126
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 127
    :cond_3
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_7

    iput v2, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 129
    :cond_4
    :goto_1
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    neg-float v0, v0

    invoke-virtual {p0, v0, p3, p4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->adjDelta(FFF)F

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    .line 131
    :cond_5
    return-void

    .line 122
    :cond_6
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    goto :goto_0

    .line 128
    :cond_7
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    goto :goto_1
.end method
