.class public Lio/appium/android/apis/graphics/kube/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# static fields
.field public static final kAxisX:I = 0x0

.field public static final kAxisY:I = 0x1

.field public static final kAxisZ:I = 0x2


# instance fields
.field mAxis:I

.field mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

.field mTransform:Lio/appium/android/apis/graphics/kube/M4;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "axis"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x9

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/GLShape;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 92
    new-instance v0, Lio/appium/android/apis/graphics/kube/M4;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/kube/M4;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    .line 23
    iput p1, p0, Lio/appium/android/apis/graphics/kube/Layer;->mAxis:I

    .line 24
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/kube/M4;->setIdentity()V

    .line 25
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 38
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    aget-object v1, v2, v0

    .line 39
    .local v1, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLShape;->endAnimation()V

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :cond_1
    return-void
.end method

.method public setAngle(F)V
    .locals 14
    .param p1, "angle"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 47
    const v5, 0x40c90fdb

    .line 48
    .local v5, "twopi":F
    :goto_0
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    sub-float/2addr p1, v5

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    cmpg-float v6, p1, v13

    if-gez v6, :cond_1

    add-float/2addr p1, v5

    goto :goto_1

    .line 52
    :cond_1
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 53
    .local v4, "sin":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 55
    .local v0, "cos":F
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    iget-object v2, v6, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 56
    .local v2, "m":[[F
    iget v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mAxis:I

    packed-switch v6, :pswitch_data_0

    .line 83
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 84
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    aget-object v3, v6, v1

    .line 85
    .local v3, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v3, :cond_2

    .line 86
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v3, v6}, Lio/appium/android/apis/graphics/kube/GLShape;->animateTransform(Lio/appium/android/apis/graphics/kube/M4;)V

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 58
    .end local v1    # "i":I
    .end local v3    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :pswitch_0
    aget-object v6, v2, v11

    aput v0, v6, v11

    .line 59
    aget-object v6, v2, v11

    aput v4, v6, v12

    .line 60
    aget-object v6, v2, v12

    neg-float v7, v4

    aput v7, v6, v11

    .line 61
    aget-object v6, v2, v12

    aput v0, v6, v12

    .line 62
    aget-object v6, v2, v10

    aput v8, v6, v10

    .line 63
    aget-object v6, v2, v10

    aget-object v7, v2, v10

    aget-object v8, v2, v11

    aget-object v9, v2, v12

    aput v13, v9, v10

    aput v13, v8, v10

    aput v13, v7, v12

    aput v13, v6, v11

    goto :goto_2

    .line 66
    :pswitch_1
    aget-object v6, v2, v10

    aput v0, v6, v10

    .line 67
    aget-object v6, v2, v10

    aput v4, v6, v12

    .line 68
    aget-object v6, v2, v12

    neg-float v7, v4

    aput v7, v6, v10

    .line 69
    aget-object v6, v2, v12

    aput v0, v6, v12

    .line 70
    aget-object v6, v2, v11

    aput v8, v6, v11

    .line 71
    aget-object v6, v2, v10

    aget-object v7, v2, v11

    aget-object v8, v2, v11

    aget-object v9, v2, v12

    aput v13, v9, v11

    aput v13, v8, v12

    aput v13, v7, v10

    aput v13, v6, v11

    goto :goto_2

    .line 74
    :pswitch_2
    aget-object v6, v2, v10

    aput v0, v6, v10

    .line 75
    aget-object v6, v2, v10

    aput v4, v6, v11

    .line 76
    aget-object v6, v2, v11

    neg-float v7, v4

    aput v7, v6, v10

    .line 77
    aget-object v6, v2, v11

    aput v0, v6, v11

    .line 78
    aget-object v6, v2, v12

    aput v8, v6, v12

    .line 79
    aget-object v6, v2, v12

    aget-object v7, v2, v12

    aget-object v8, v2, v10

    aget-object v9, v2, v11

    aput v13, v9, v12

    aput v13, v8, v12

    aput v13, v7, v11

    aput v13, v6, v10

    goto/16 :goto_2

    .line 89
    .restart local v1    # "i":I
    :cond_3
    return-void

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 29
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    aget-object v1, v2, v0

    .line 30
    .local v1, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLShape;->startAnimation()V

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :cond_1
    return-void
.end method
