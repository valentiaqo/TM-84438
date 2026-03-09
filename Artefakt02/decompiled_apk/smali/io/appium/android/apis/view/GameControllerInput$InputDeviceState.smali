.class Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
.super Ljava/lang/Object;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceState"
.end annotation


# instance fields
.field private final mAxes:[I

.field private final mAxisValues:[F

.field private final mDevice:Landroid/view/InputDevice;

.field private final mKeys:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "numAxes":I
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 218
    .local v4, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v4    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    new-array v6, v3, [I

    iput-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    .line 224
    new-array v6, v3, [F

    iput-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 227
    .restart local v4    # "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 228
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v7

    aput v7, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 232
    .end local v4    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_3
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    .line 233
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .prologue
    .line 206
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method private static isGameKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 319
    sparse-switch p0, :sswitch_data_0

    .line 328
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    :goto_0
    return v0

    .line 326
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAxis(I)I
    .locals 1
    .param p1, "axisIndex"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAxisCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    array-length v0, v0

    return v0
.end method

.method public getAxisValue(I)F
    .locals 1
    .param p1, "axisIndex"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public getDevice()Landroid/view/InputDevice;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method public getKeyCode(I)I
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJoystickMotion(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v4, "message":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - Joystick Motion:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 295
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 296
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    aget v0, v6, v3

    .line 297
    .local v0, "axis":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 298
    .local v5, "value":F
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    aput v5, v6, v3

    .line 299
    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v1, 0x0

    .local v1, "historyPos":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 309
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "axis":I
    .end local v1    # "historyPos":I
    .end local v5    # "value":F
    :cond_1
    const-string v6, "GameControllerInput"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v6, 0x1

    return v6
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 265
    .local v0, "keyCode":I
    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->isGameKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "symbolicName":Ljava/lang/String;
    iget-object v3, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    const-string v3, "GameControllerInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Key Down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "symbolicName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 278
    .local v1, "keyCode":I
    invoke-static {v1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->isGameKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    iget-object v4, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 280
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 281
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "symbolicName":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    const-string v3, "GameControllerInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Key Up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2    # "symbolicName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .line 287
    .end local v0    # "index":I
    :cond_1
    return v3
.end method
