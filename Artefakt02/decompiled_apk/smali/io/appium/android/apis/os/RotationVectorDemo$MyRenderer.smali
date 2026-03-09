.class Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;
.super Ljava/lang/Object;
.source "RotationVectorDemo.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/RotationVectorDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;
    }
.end annotation


# instance fields
.field private mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

.field private final mRotationMatrix:[F

.field private mRotationVectorSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lio/appium/android/apis/os/RotationVectorDemo;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/RotationVectorDemo;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    iput-object p1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    .line 88
    invoke-static {p1}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationVectorSensor:Landroid/hardware/Sensor;

    .line 91
    new-instance v0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    invoke-direct {v0, p0}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;-><init>(Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;)V

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    .line 93
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 97
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    .line 124
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 127
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 128
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 129
    const/high16 v0, -0x3fc00000    # -3.0f

    invoke-interface {p1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 130
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 133
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 134
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 136
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 137
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 113
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 120
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 141
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 143
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 144
    .local v2, "ratio":F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 145
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 146
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x41200000    # 10.0f

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 147
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 153
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 154
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-static {v0}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationVectorSensor:Landroid/hardware/Sensor;

    const/16 v2, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 103
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-static {v0}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 108
    return-void
.end method
