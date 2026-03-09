.class Lio/appium/android/apis/graphics/SensorTest$RunAve;
.super Ljava/lang/Object;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunAve"
.end annotation


# instance fields
.field private mCurr:I

.field private final mDepth:I

.field private final mSamples:[F

.field private final mWeightScale:F

.field private final mWeights:[F


# direct methods
.method public constructor <init>([F)V
    .locals 3
    .param p1, "weights"    # [F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mWeights:[F

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 49
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mWeightScale:F

    .line 53
    array-length v2, p1

    iput v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mDepth:I

    .line 54
    iget v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mDepth:I

    new-array v2, v2, [F

    iput-object v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mSamples:[F

    .line 55
    const/4 v2, 0x0

    iput v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mCurr:I

    .line 56
    return-void
.end method


# virtual methods
.method public addSample(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mSamples:[F

    iget v1, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mCurr:I

    aput p1, v0, v1

    .line 60
    iget v0, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mCurr:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mDepth:I

    rem-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mCurr:I

    .line 61
    return-void
.end method

.method public computeAve()F
    .locals 6

    .prologue
    .line 64
    iget v0, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mDepth:I

    .line 65
    .local v0, "depth":I
    iget v2, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mCurr:I

    .line 66
    .local v2, "index":I
    const/4 v3, 0x0

    .line 67
    .local v3, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    iget-object v4, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mWeights:[F

    aget v4, v4, v1

    iget-object v5, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mSamples:[F

    aget v5, v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    if-gez v2, :cond_0

    .line 71
    add-int/lit8 v2, v0, -0x1

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget v4, p0, Lio/appium/android/apis/graphics/SensorTest$RunAve;->mWeightScale:F

    mul-float/2addr v4, v3

    return v4
.end method
