.class Lio/appium/android/apis/os/Sensors$GraphView;
.super Landroid/view/View;
.source "Sensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/Sensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColors:[I

.field private mHeight:F

.field private mLastValues:[F

.field private mLastX:F

.field private mMaxX:F

.field private mOrientationValues:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/RectF;

.field private mScale:[F

.field private mSpeed:F

.field private mWidth:F

.field private mYOffset:F

.field final synthetic this$0:Lio/appium/android/apis/os/Sensors;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/Sensors;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, -0x41000000    # -0.5f

    const/16 v6, 0x80

    const/16 v5, 0xff

    const/16 v4, 0xc0

    const/16 v3, 0x40

    .line 72
    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->this$0:Lio/appium/android/apis/os/Sensors;

    .line 73
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x0

    invoke-static {v4, v5, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 75
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x1

    invoke-static {v4, v3, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x2

    invoke-static {v4, v3, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x3

    invoke-static {v4, v3, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x4

    invoke-static {v4, v6, v3, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/4 v1, 0x5

    invoke-static {v4, v5, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 84
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 204
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 110
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    .line 111
    .local v21, "path":Landroid/graphics/Path;
    const v20, -0x3f3f40

    .line 112
    .local v20, "outer":I
    const v18, -0x8ff0

    .line 114
    .local v18, "inner":I
    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    move-object/from16 v0, p0

    iget v7, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 115
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 117
    .local v3, "cavas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v5, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    .line 118
    .local v5, "yoffset":F
    move-object/from16 v0, p0

    iget v6, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    .line 119
    .local v6, "maxx":F
    const v4, 0x411ce80a

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    mul-float v19, v4, v7

    .line 120
    .local v19, "oneG":F
    const v4, -0x555556

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    const/4 v4, 0x0

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    const/4 v10, 0x0

    add-float v11, v5, v19

    add-float v13, v5, v19

    move-object v9, v3

    move v12, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    const/4 v10, 0x0

    sub-float v11, v5, v19

    sub-float v13, v5, v19

    move-object v9, v3

    move v12, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    .end local v3    # "cavas":Landroid/graphics/Canvas;
    .end local v5    # "yoffset":F
    .end local v6    # "maxx":F
    .end local v19    # "oneG":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    move-object/from16 v22, v0

    .line 129
    .local v22, "values":[F
    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    const v7, 0x3eaaaa9f

    mul-float v24, v4, v7

    .line 131
    .local v24, "w0":F
    const/high16 v4, 0x42000000    # 32.0f

    sub-float v23, v24, v4

    .line 132
    .local v23, "w":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v25, v24, v4

    .line 133
    .local v25, "x":F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ge v0, v4, :cond_2

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 135
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v23

    const/high16 v7, 0x40800000    # 4.0f

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 137
    const v4, -0x3f3f40

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    const/high16 v4, 0x40a00000    # 5.0f

    sub-float v4, v23, v4

    const/high16 v7, 0x40a00000    # 5.0f

    sub-float v7, v23, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 142
    const v4, -0x8ff0

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    aget v4, v22, v17

    neg-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    add-float v25, v25, v24

    .line 133
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 149
    .end local v17    # "i":I
    .end local v23    # "w":F
    .end local v24    # "w0":F
    .end local v25    # "x":F
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    const v7, 0x3eaaaa9f

    mul-float v16, v4, v7

    .line 150
    .local v16, "h0":F
    const/high16 v4, 0x42000000    # 32.0f

    sub-float v15, v16, v4

    .line 151
    .local v15, "h":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v26, v16, v4

    .line 152
    .local v26, "y":F
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ge v0, v4, :cond_2

    .line 153
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 154
    move-object/from16 v0, p0

    iget v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v15

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v7, v9

    sub-float/2addr v4, v7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 156
    const v4, -0x3f3f40

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    const/high16 v4, 0x40a00000    # 5.0f

    sub-float v4, v15, v4

    const/high16 v7, 0x40a00000    # 5.0f

    sub-float v7, v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 161
    const v4, -0x8ff0

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    aget v4, v22, v17

    neg-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 163
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    add-float v26, v26, v16

    .line 152
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 170
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v15    # "h":F
    .end local v16    # "h0":F
    .end local v17    # "i":I
    .end local v18    # "inner":I
    .end local v20    # "outer":I
    .end local v21    # "path":Landroid/graphics/Path;
    .end local v22    # "values":[F
    .end local v26    # "y":F
    :cond_2
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 177
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 178
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 179
    .local v5, "paint":Landroid/graphics/Paint;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 180
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_3

    .line 181
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    .end local v7    # "i":I
    :cond_0
    iget v6, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    .line 185
    .local v6, "deltaX":F
    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    add-float v3, v1, v6

    .line 187
    .local v3, "newX":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v12, :cond_1

    const/4 v8, 0x1

    .line 188
    .local v8, "j":I
    :goto_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v11, :cond_2

    .line 189
    mul-int/lit8 v1, v8, 0x3

    add-int v9, v7, v1

    .line 190
    .local v9, "k":I
    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iget-object v10, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    aget v10, v10, v8

    mul-float/2addr v2, v10

    add-float v4, v1, v2

    .line 191
    .local v4, "v":F
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    aget v1, v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    iget-object v2, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    aget v2, v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    aput v4, v1, v9

    .line 188
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 187
    .end local v4    # "v":F
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "k":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 195
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v12, :cond_3

    .line 196
    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    iget v2, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 198
    .end local v3    # "newX":F
    .end local v6    # "deltaX":F
    .end local v8    # "j":I
    :cond_3
    invoke-virtual {p0}, Lio/appium/android/apis/os/Sensors$GraphView;->invalidate()V

    .line 200
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "i":I
    :cond_4
    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 88
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    int-to-float v0, p2

    mul-float/2addr v0, v4

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    mul-float/2addr v2, v4

    const v3, 0x3d50d67f

    mul-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    mul-float/2addr v2, v4

    const v3, 0x3c888889

    mul-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 94
    int-to-float v0, p1

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    .line 95
    int-to-float v0, p2

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    .line 96
    iget v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 97
    int-to-float v0, p1

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    .line 101
    :goto_0
    iget v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 103
    return-void

    .line 99
    :cond_0
    add-int/lit8 v0, p1, -0x32

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    goto :goto_0
.end method
