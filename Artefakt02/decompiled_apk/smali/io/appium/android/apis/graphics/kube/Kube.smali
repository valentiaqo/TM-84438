.class public Lio/appium/android/apis/graphics/kube/Kube;
.super Landroid/app/Activity;
.source "Kube.java"

# interfaces
.implements Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;


# static fields
.field static final kBack:I = 0x5

.field static final kDown:I = 0x1

.field static final kEquator:I = 0x7

.field static final kFront:I = 0x4

.field static final kLeft:I = 0x2

.field static final kMiddle:I = 0x6

.field static final kRight:I = 0x3

.field static final kSide:I = 0x8

.field static final kUp:I

.field static mLayerPermutations:[[I


# instance fields
.field mAngleIncrement:F

.field mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

.field mCurrentAngle:F

.field mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

.field mCurrentLayerPermutation:[I

.field mEndAngle:F

.field mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

.field mPermutation:[I

.field mRandom:Ljava/util/Random;

.field mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

.field mView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    .line 295
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/graphics/kube/Kube;->mLayerPermutations:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x8
        0x1
        0x4
        0x7
        0x0
        0x3
        0x6
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x14
        0x17
        0x1a
        0x13
        0x16
        0x19
        0x12
        0x15
        0x18
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1
        0x2
        0xf
        0x4
        0x5
        0x18
        0x7
        0x8
        0x3
        0xa
        0xb
        0xc
        0xd
        0xe
        0x15
        0x10
        0x11
        0x0
        0x13
        0x14
        0x9
        0x16
        0x17
        0x12
        0x19
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x8
        0x3
        0x4
        0x11
        0x6
        0x7
        0x1a
        0x9
        0xa
        0x5
        0xc
        0xd
        0xe
        0xf
        0x10
        0x17
        0x12
        0x13
        0x2
        0x15
        0x16
        0xb
        0x18
        0x19
        0x14
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x18
        0xf
        0x6
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x19
        0x10
        0x7
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x1a
        0x11
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x12
        0x9
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x13
        0xa
        0x1
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x14
        0xb
        0x2
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x7
        0x2
        0x3
        0x10
        0x5
        0x6
        0x19
        0x8
        0x9
        0x4
        0xb
        0xc
        0xd
        0xe
        0xf
        0x16
        0x11
        0x12
        0x1
        0x14
        0x15
        0xa
        0x17
        0x18
        0x13
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xb
        0xe
        0x11
        0xa
        0xd
        0x10
        0x9
        0xc
        0xf
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x15
        0xc
        0x3
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x16
        0xd
        0x4
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x17
        0xe
        0x5
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 291
    const/16 v0, 0x1b

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/Cube;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    .line 293
    const/16 v0, 0x9

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/Layer;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    .line 322
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    return-void
.end method

.method private createLayers()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v1, v0, v3

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v1, v0, v4

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v1, v0, v5

    .line 141
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x3

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 142
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x4

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v5}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 143
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x5

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v5}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 144
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x6

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x7

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 146
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/16 v1, 0x8

    new-instance v2, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v2, v5}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v2, v0, v1

    .line 147
    return-void
.end method

.method private makeGLWorld()Lio/appium/android/apis/graphics/kube/GLWorld;
    .locals 37

    .prologue
    .line 31
    new-instance v5, Lio/appium/android/apis/graphics/kube/GLWorld;

    invoke-direct {v5}, Lio/appium/android/apis/graphics/kube/GLWorld;-><init>()V

    .line 33
    .local v5, "world":Lio/appium/android/apis/graphics/kube/GLWorld;
    const/high16 v32, 0x10000

    .line 34
    .local v32, "one":I
    const v29, 0x8000

    .line 35
    .local v29, "half":I
    new-instance v34, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-direct {v0, v1, v4, v8}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 36
    .local v34, "red":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v28, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v4, v1, v8}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 37
    .local v28, "green":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v26, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-direct {v0, v4, v8, v1}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 38
    .local v26, "blue":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v36, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v32

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v4}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 39
    .local v36, "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v33, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 40
    .local v33, "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v35, Lio/appium/android/apis/graphics/kube/GLColor;

    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v32

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 41
    .local v35, "white":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v25, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v8, v11}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    .line 44
    .local v25, "black":Lio/appium/android/apis/graphics/kube/GLColor;
    const/high16 v6, -0x40800000    # -1.0f

    .line 45
    .local v6, "c0":F
    const v9, -0x413d70a4    # -0.38f

    .line 46
    .local v9, "c1":F
    const v13, -0x415c28f6    # -0.32f

    .line 47
    .local v13, "c2":F
    const v16, 0x3ea3d70a    # 0.32f

    .line 48
    .local v16, "c3":F
    const v7, 0x3ec28f5c    # 0.38f

    .line 49
    .local v7, "c4":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 52
    .local v10, "c5":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v14, 0x0

    new-instance v4, Lio/appium/android/apis/graphics/kube/Cube;

    move v8, v6

    move v11, v9

    invoke-direct/range {v4 .. v11}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v4, v12, v14

    .line 53
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v8, 0x1

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v7

    move v15, v6

    move/from16 v17, v10

    move/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 54
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v8, 0x2

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v22, v10

    move/from16 v23, v10

    move/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 56
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v14, 0x3

    new-instance v4, Lio/appium/android/apis/graphics/kube/Cube;

    move v8, v13

    move/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v4, v12, v14

    .line 57
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v8, 0x4

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v7

    move v15, v13

    move/from16 v17, v10

    move/from16 v18, v16

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 58
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v8, 0x5

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v7

    move/from16 v21, v13

    move/from16 v22, v10

    move/from16 v23, v10

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 60
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v14, 0x6

    new-instance v4, Lio/appium/android/apis/graphics/kube/Cube;

    move v8, v7

    move v11, v10

    invoke-direct/range {v4 .. v11}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v4, v12, v14

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/4 v8, 0x7

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v7

    move v15, v7

    move/from16 v17, v10

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x8

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v7

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v23, v10

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 64
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x9

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v6

    move/from16 v22, v9

    move/from16 v23, v16

    move/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 65
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xa

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v13

    move v15, v6

    move/from16 v17, v16

    move/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 66
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xb

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v13

    move/from16 v21, v6

    move/from16 v22, v10

    move/from16 v23, v16

    move/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xc

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v9

    move/from16 v23, v16

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xd

    const/4 v11, 0x0

    aput-object v11, v4, v8

    .line 70
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xe

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v10

    move/from16 v23, v16

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 72
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0xf

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v16

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 73
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x10

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v13

    move v15, v7

    move/from16 v17, v16

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x11

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v13

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v23, v16

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x12

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v6

    move/from16 v21, v6

    move/from16 v22, v9

    move/from16 v23, v9

    move/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 77
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x13

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v6

    move v15, v6

    move/from16 v17, v9

    move/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x14

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v6

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x15

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v6

    move/from16 v21, v13

    move/from16 v22, v9

    move/from16 v23, v9

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x16

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v6

    move v15, v13

    move/from16 v17, v9

    move/from16 v18, v16

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 82
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x17

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v13

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x18

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x19

    new-instance v11, Lio/appium/android/apis/graphics/kube/Cube;

    move-object v12, v5

    move v14, v6

    move v15, v7

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v11, v4, v8

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v8, 0x1a

    new-instance v17, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v17, v4, v8

    .line 91
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v27, v4, v30

    .line 93
    .local v27, "cube":Lio/appium/android/apis/graphics/kube/Cube;
    if-eqz v27, :cond_0

    .line 94
    const/16 v31, 0x0

    .local v31, "j":I
    :goto_1
    const/4 v4, 0x6

    move/from16 v0, v31

    if-ge v0, v4, :cond_0

    .line 95
    move-object/from16 v0, v27

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 94
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 91
    .end local v31    # "j":I
    :cond_0
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 100
    .end local v27    # "cube":Lio/appium/android/apis/graphics/kube/Cube;
    :cond_1
    const/16 v30, 0x0

    :goto_2
    const/16 v4, 0x9

    move/from16 v0, v30

    if-ge v0, v4, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    const/4 v8, 0x5

    move-object/from16 v0, v33

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 100
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 103
    :cond_2
    const/16 v30, 0x12

    :goto_3
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    const/4 v8, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 103
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 106
    :cond_3
    const/16 v30, 0x0

    :goto_4
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    const/4 v8, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 106
    add-int/lit8 v30, v30, 0x3

    goto :goto_4

    .line 109
    :cond_4
    const/16 v30, 0x2

    :goto_5
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    const/4 v8, 0x3

    move-object/from16 v0, v35

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 109
    add-int/lit8 v30, v30, 0x3

    goto :goto_5

    .line 112
    :cond_5
    const/16 v30, 0x0

    :goto_6
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_7

    .line 113
    const/16 v31, 0x0

    .restart local v31    # "j":I
    :goto_7
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ge v0, v4, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    add-int v8, v30, v31

    aget-object v4, v4, v8

    const/4 v8, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 113
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 112
    :cond_6
    add-int/lit8 v30, v30, 0x9

    goto :goto_6

    .line 116
    .end local v31    # "j":I
    :cond_7
    const/16 v30, 0x6

    :goto_8
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_9

    .line 117
    const/16 v31, 0x0

    .restart local v31    # "j":I
    :goto_9
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ge v0, v4, :cond_8

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    add-int v8, v30, v31

    aget-object v4, v4, v8

    const/4 v8, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v4, v8, v0}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 117
    add-int/lit8 v31, v31, 0x1

    goto :goto_9

    .line 116
    :cond_8
    add-int/lit8 v30, v30, 0x9

    goto :goto_8

    .line 120
    .end local v31    # "j":I
    :cond_9
    const/16 v30, 0x0

    :goto_a
    const/16 v4, 0x1b

    move/from16 v0, v30

    if-ge v0, v4, :cond_b

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    if-eqz v4, :cond_a

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v30

    invoke-virtual {v5, v4}, Lio/appium/android/apis/graphics/kube/GLWorld;->addShape(Lio/appium/android/apis/graphics/kube/GLShape;)V

    .line 120
    :cond_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 125
    :cond_b
    const/16 v4, 0x1b

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    .line 126
    const/16 v30, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    array-length v4, v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_c

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aput v30, v4, v30

    .line 126
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 129
    :cond_c
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/kube/Kube;->createLayers()V

    .line 130
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/kube/Kube;->updateLayers()V

    .line 132
    invoke-virtual {v5}, Lio/appium/android/apis/graphics/kube/GLWorld;->generate()V

    .line 134
    return-object v5
.end method

.method private updateLayers()V
    .locals 12

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x3

    const/16 v9, 0x1b

    .line 155
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 156
    .local v4, "layer":Lio/appium/android/apis/graphics/kube/Layer;
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 157
    .local v5, "shapes":[Lio/appium/android/apis/graphics/kube/GLShape;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 158
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    aput-object v6, v5, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 162
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 163
    const/16 v0, 0x12

    const/4 v2, 0x0

    .local v2, "k":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_1
    if-ge v0, v9, :cond_1

    .line 164
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_1

    .line 167
    :cond_1
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x2

    aget-object v4, v6, v7

    .line 168
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 169
    const/4 v0, 0x0

    const/4 v2, 0x0

    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_2
    if-ge v0, v9, :cond_3

    .line 170
    const/4 v1, 0x0

    .local v1, "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_3
    if-ge v1, v11, :cond_2

    .line 171
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 170
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_3

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_2

    .line 174
    .end local v1    # "j":I
    :cond_3
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    aget-object v4, v6, v10

    .line 175
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 176
    const/4 v0, 0x2

    const/4 v2, 0x0

    :goto_4
    if-ge v0, v9, :cond_5

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_5
    if-ge v1, v11, :cond_4

    .line 178
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 177
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_5

    .line 176
    :cond_4
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_4

    .line 181
    .end local v1    # "j":I
    :cond_5
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x4

    aget-object v4, v6, v7

    .line 182
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 183
    const/4 v0, 0x6

    const/4 v2, 0x0

    :goto_6
    if-ge v0, v9, :cond_7

    .line 184
    const/4 v1, 0x0

    .restart local v1    # "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_7
    if-ge v1, v10, :cond_6

    .line 185
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 184
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_7

    .line 183
    :cond_6
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_6

    .line 188
    .end local v1    # "j":I
    :cond_7
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x5

    aget-object v4, v6, v7

    .line 189
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 190
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v0, v9, :cond_9

    .line 191
    const/4 v1, 0x0

    .restart local v1    # "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_9
    if-ge v1, v10, :cond_8

    .line 192
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 191
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_9

    .line 190
    :cond_8
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_8

    .line 195
    .end local v1    # "j":I
    :cond_9
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x6

    aget-object v4, v6, v7

    .line 196
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 197
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_a
    if-ge v0, v9, :cond_b

    .line 198
    const/4 v1, 0x0

    .restart local v1    # "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_b
    if-ge v1, v11, :cond_a

    .line 199
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 198
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_b

    .line 197
    :cond_a
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_a

    .line 202
    .end local v1    # "j":I
    :cond_b
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x7

    aget-object v4, v6, v7

    .line 203
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 204
    const/16 v0, 0x9

    const/4 v2, 0x0

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_c
    const/16 v6, 0x12

    if-ge v0, v6, :cond_c

    .line 205
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 204
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_c

    .line 208
    :cond_c
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/16 v7, 0x8

    aget-object v4, v6, v7

    .line 209
    iget-object v5, v4, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 210
    const/4 v0, 0x3

    const/4 v2, 0x0

    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_d
    if-ge v0, v9, :cond_e

    .line 211
    const/4 v1, 0x0

    .restart local v1    # "j":I
    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    :goto_e
    if-ge v1, v10, :cond_d

    .line 212
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v8, v0, v1

    aget v7, v7, v8

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 211
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_e

    .line 210
    :cond_d
    add-int/lit8 v0, v0, 0x9

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_d

    .line 213
    .end local v1    # "j":I
    :cond_e
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 12

    .prologue
    const/16 v11, 0x1b

    const v10, 0x40490fdb    # (float)Math.PI

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 245
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-virtual {v6}, Lio/appium/android/apis/graphics/kube/KubeRenderer;->getAngle()F

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lio/appium/android/apis/graphics/kube/KubeRenderer;->setAngle(F)V

    .line 247
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    if-nez v5, :cond_0

    .line 248
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 249
    .local v3, "layerID":I
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    aget-object v5, v5, v3

    iput-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    .line 250
    sget-object v5, Lio/appium/android/apis/graphics/kube/Kube;->mLayerPermutations:[[I

    aget-object v5, v5, v3

    iput-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayerPermutation:[I

    .line 251
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    invoke-virtual {v5}, Lio/appium/android/apis/graphics/kube/Layer;->startAnimation()V

    .line 252
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    .line 253
    .local v1, "direction":Z
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 255
    .local v0, "count":I
    const/4 v0, 0x1

    .line 256
    const/4 v1, 0x0

    .line 257
    iput v8, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    .line 258
    if-eqz v1, :cond_3

    .line 259
    const v5, 0x3d80adfd

    iput v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    .line 260
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    int-to-float v6, v0

    mul-float/2addr v6, v10

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iput v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    .line 267
    .end local v0    # "count":I
    .end local v1    # "direction":Z
    .end local v3    # "layerID":I
    :cond_0
    :goto_0
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    add-float/2addr v5, v6

    iput v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    .line 269
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    cmpl-float v5, v5, v6

    if-gez v5, :cond_2

    :cond_1
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    .line 271
    :cond_2
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    invoke-virtual {v5, v6}, Lio/appium/android/apis/graphics/kube/Layer;->setAngle(F)V

    .line 272
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    invoke-virtual {v5}, Lio/appium/android/apis/graphics/kube/Layer;->endAnimation()V

    .line 273
    const/4 v5, 0x0

    iput-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    .line 276
    new-array v4, v11, [I

    .line 277
    .local v4, "newPermutation":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_4

    .line 278
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayerPermutation:[I

    aget v6, v6, v2

    aget v5, v5, v6

    aput v5, v4, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    .end local v4    # "newPermutation":[I
    .restart local v0    # "count":I
    .restart local v1    # "direction":Z
    .restart local v3    # "layerID":I
    :cond_3
    const v5, -0x427f5203

    iput v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    .line 263
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    int-to-float v6, v0

    mul-float/2addr v6, v10

    div-float/2addr v6, v9

    sub-float/2addr v5, v6

    iput v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    goto :goto_0

    .line 281
    .end local v0    # "count":I
    .end local v1    # "direction":Z
    .end local v3    # "layerID":I
    .restart local v2    # "i":I
    .restart local v4    # "newPermutation":[I
    :cond_4
    iput-object v4, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    .line 282
    invoke-direct {p0}, Lio/appium/android/apis/graphics/kube/Kube;->updateLayers()V

    .line 287
    .end local v2    # "i":I
    .end local v4    # "newPermutation":[I
    :goto_2
    return-void

    .line 285
    :cond_5
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    invoke-virtual {v5, v6}, Lio/appium/android/apis/graphics/kube/Layer;->setAngle(F)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/kube/Kube;->requestWindowFeature(I)Z

    .line 223
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/kube/Kube;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    .line 224
    new-instance v0, Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-direct {p0}, Lio/appium/android/apis/graphics/kube/Kube;->makeGLWorld()Lio/appium/android/apis/graphics/kube/GLWorld;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/appium/android/apis/graphics/kube/KubeRenderer;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    .line 225
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 226
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/kube/Kube;->setContentView(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 234
    return-void
.end method
