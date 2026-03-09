.class public Lio/appium/android/apis/view/GameControllerInput;
.super Landroid/app/Activity;
.source "GameControllerInput.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;,
        Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameControllerInput"


# instance fields
.field private mGame:Lio/appium/android/apis/view/GameView;

.field private mInputDeviceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

.field private mSummaryList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 336
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/GameControllerInput;)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameControllerInput;

    .prologue
    .line 56
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    return-object v0
.end method

.method private getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    .locals 5
    .param p1, "deviceId"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 158
    .local v1, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    if-nez v1, :cond_1

    .line 159
    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 160
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 167
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_0
    return-object v2

    .line 163
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    new-instance v1, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .end local v1    # "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    invoke-direct {v1, v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;-><init>(Landroid/view/InputDevice;)V

    .line 164
    .restart local v1    # "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    const-string v2, "GameControllerInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device enumerated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    move-object v2, v1

    .line 167
    goto :goto_0
.end method

.method private static isJoystick(I)Z
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 199
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v1}, Lio/appium/android/apis/view/GameControllerInput;->isJoystick(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lio/appium/android/apis/view/GameControllerInput;->getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    move-result-object v0

    .line 149
    .local v0, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->onJoystickMotion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->show(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)V

    .line 153
    .end local v0    # "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lio/appium/android/apis/view/GameControllerInput;->getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    move-result-object v0

    .line 124
    .local v0, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {v0, p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->show(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {v0, p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->show(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameControllerInput;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputManager:Landroid/hardware/input/InputManager;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/view/GameControllerInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    .line 75
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameControllerInput;->setContentView(I)V

    .line 77
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameControllerInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/GameView;

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mGame:Lio/appium/android/apis/view/GameView;

    .line 79
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameControllerInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryList:Landroid/widget/ListView;

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryAdapter:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mSummaryList:Landroid/widget/ListView;

    new-instance v1, Lio/appium/android/apis/view/GameControllerInput$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/GameControllerInput$1;-><init>(Lio/appium/android/apis/view/GameControllerInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/GameControllerInput;->getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    move-result-object v0

    .line 174
    .local v0, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    const-string v1, "GameControllerInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 181
    .local v0, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 183
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/GameControllerInput;->getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    move-result-object v0

    .line 184
    const-string v1, "GameControllerInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 192
    .local v0, "state":Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
    if-eqz v0, :cond_0

    .line 193
    const-string v1, "GameControllerInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 99
    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    .line 100
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 101
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lio/appium/android/apis/view/GameControllerInput;->getInputDeviceState(I)Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 117
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput;->mGame:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameView;->requestFocus()Z

    .line 118
    return-void
.end method
