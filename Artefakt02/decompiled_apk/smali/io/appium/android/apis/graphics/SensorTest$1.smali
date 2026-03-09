.class Lio/appium/android/apis/graphics/SensorTest$1;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastGestureTime:J

.field private mPrev:[F

.field private final mScale:[F

.field final synthetic this$0:Lio/appium/android/apis/graphics/SensorTest;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/SensorTest;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 78
    iput-object p1, p0, Lio/appium/android/apis/graphics/SensorTest$1;->this$0:Lio/appium/android/apis/graphics/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mScale:[F

    .line 81
    new-array v0, v1, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    return-void

    .line 80
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, "show":Z
    const/4 v9, 0x3

    new-array v0, v9, [F

    .line 88
    .local v0, "diff":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v3, v9, :cond_1

    .line 89
    iget-object v9, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mScale:[F

    aget v9, v9, v3

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v3

    iget-object v11, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    aget v11, v11, v3

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v0, v3

    .line 90
    aget v9, v0, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 91
    const/4 v6, 0x1

    .line 93
    :cond_0
    iget-object v9, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v3

    aput v10, v9, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    if-eqz v6, :cond_2

    .line 99
    const-string v9, "SensorTest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sensorChanged "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " diff("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 106
    .local v4, "now":J
    iget-wide v9, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    sub-long v9, v4, v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 107
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    .line 109
    const/4 v9, 0x0

    aget v7, v0, v9

    .line 110
    .local v7, "x":F
    const/4 v9, 0x1

    aget v8, v0, v9

    .line 111
    .local v8, "y":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    const/4 v1, 0x1

    .line 112
    .local v1, "gestX":Z
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    const/4 v2, 0x1

    .line 114
    .local v2, "gestY":Z
    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    .line 115
    :cond_4
    if-eqz v1, :cond_9

    .line 116
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_8

    .line 117
    const-string v9, "test"

    const-string v10, "<<<<<<<< LEFT <<<<<<<<<<<<"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_3
    iput-wide v4, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    .line 131
    .end local v1    # "gestX":Z
    .end local v2    # "gestY":Z
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_5
    return-void

    .line 111
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 112
    .restart local v1    # "gestX":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 119
    .restart local v2    # "gestY":Z
    :cond_8
    const-string v9, "test"

    const-string v10, ">>>>>>>>> RITE >>>>>>>>>>>"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 122
    :cond_9
    const/high16 v9, -0x40000000    # -2.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_a

    .line 123
    const-string v9, "test"

    const-string v10, "<<<<<<<< UP <<<<<<<<<<<<"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 125
    :cond_a
    const-string v9, "test"

    const-string v10, ">>>>>>>>> DOWN >>>>>>>>>>>"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
