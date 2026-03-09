.class Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;
.super Ljava/lang/Object;
.source "CubeMapActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CubeMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAngle:F

.field private mContextSupportsCubeMap:Z

.field private mCubeMapTextureID:I

.field private mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

.field private mUseTexGen:Z

.field final synthetic this$0:Lio/appium/android/apis/graphics/CubeMapActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/CubeMapActivity;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->this$0:Lio/appium/android/apis/graphics/CubeMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mUseTexGen:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/graphics/CubeMapActivity;Lio/appium/android/apis/graphics/CubeMapActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/graphics/CubeMapActivity;
    .param p2, "x1"    # Lio/appium/android/apis/graphics/CubeMapActivity$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;-><init>(Lio/appium/android/apis/graphics/CubeMapActivity;)V

    return-void
.end method

.method private checkIfContextSupportsCubeMap(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 197
    const-string v0, "GL_OES_texture_cube_map"

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "extensions":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateCubeMap(Ljavax/microedition/khronos/opengles/GL10;[I)I
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "resourceIds"    # [I

    .prologue
    const/4 v6, 0x1

    const v8, 0x46180400    # 9729.0f

    const v7, 0x8513

    const/4 v9, 0x0

    .line 135
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 136
    new-array v4, v6, [I

    .line 137
    .local v4, "ids":[I
    invoke-interface {p1, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 138
    aget v1, v4, v9

    .line 139
    .local v1, "cubeMapTextureId":I
    invoke-interface {p1, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 140
    const/16 v6, 0x2801

    invoke-interface {p1, v7, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 142
    const/16 v6, 0x2800

    invoke-interface {p1, v7, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 145
    const/4 v3, 0x0

    .local v3, "face":I
    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_0

    .line 146
    iget-object v6, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->this$0:Lio/appium/android/apis/graphics/CubeMapActivity;

    invoke-virtual {v6}, Lio/appium/android/apis/graphics/CubeMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget v7, p2, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 149
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :goto_1
    const v6, 0x8515

    add-int/2addr v6, v3

    invoke-static {v6, v9, v0, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "CubeMap"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not decode texture for face "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 152
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :goto_2
    throw v6

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "CubeMap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode texture for face "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 162
    return v1
.end method

.method private generateTorusGrid(Ljavax/microedition/khronos/opengles/GL;IIFF)Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
    .locals 25
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "uSteps"    # I
    .param p3, "vSteps"    # I
    .param p4, "majorRadius"    # F
    .param p5, "minorRadius"    # F

    .prologue
    .line 166
    new-instance v2, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    add-int/lit8 v21, p2, 0x1

    add-int/lit8 v22, p3, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;-><init>(II)V

    .line 167
    .local v2, "grid":Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v4, v0, :cond_1

    .line 168
    const-wide v21, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v4

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v13, v21, v23

    .line 169
    .local v13, "angleV":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v16, v0

    .line 170
    .local v16, "cosV":F
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v20, v0

    .line 171
    .local v20, "sinV":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move/from16 v0, p2

    if-gt v3, v0, :cond_0

    .line 172
    const-wide v21, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v3

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v11, v21, v23

    .line 173
    .local v11, "angleU":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v15, v0

    .line 174
    .local v15, "cosU":F
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v19, v0

    .line 175
    .local v19, "sinU":F
    mul-float v21, p5, v15

    add-float v17, p4, v21

    .line 176
    .local v17, "d":F
    mul-float v5, v17, v16

    .line 177
    .local v5, "x":F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v6, v17, v21

    .line 178
    .local v6, "y":F
    mul-float v7, p5, v19

    .line 180
    .local v7, "z":F
    mul-float v8, v16, v15

    .line 181
    .local v8, "nx":F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v9, v21, v15

    .line 182
    .local v9, "ny":F
    move/from16 v10, v19

    .line 184
    .local v10, "nz":F
    mul-float v21, v8, v8

    mul-float v22, v9, v9

    add-float v21, v21, v22

    mul-float v22, v10, v10

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v18, v0

    .line 185
    .local v18, "length":F
    div-float v8, v8, v18

    .line 186
    div-float v9, v9, v18

    .line 187
    div-float v10, v10, v18

    .line 189
    invoke-virtual/range {v2 .. v10}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->set(IIFFFFFF)V

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    .end local v8    # "nx":F
    .end local v9    # "ny":F
    .end local v10    # "nz":F
    .end local v11    # "angleU":D
    .end local v15    # "cosU":F
    .end local v17    # "d":F
    .end local v18    # "length":F
    .end local v19    # "sinU":F
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 192
    .end local v3    # "i":I
    .end local v13    # "angleV":D
    .end local v16    # "cosV":F
    .end local v20    # "sinV":F
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V

    .line 193
    return-object v2
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v12, 0x8513

    const v11, 0x8d60

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 58
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 59
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_2

    .line 60
    invoke-interface {p1, v1, v1, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 66
    :goto_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 67
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 68
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 69
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 71
    const/high16 v3, -0x3f600000    # -5.0f

    move-object v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 72
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    invoke-interface {p1, v0, v1, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 73
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    invoke-interface {p1, v0, v8, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 75
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 77
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 79
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_0

    .line 80
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 81
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 82
    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 83
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 84
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mCubeMapTextureID:I

    invoke-interface {p1, v12, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 85
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    move-object v10, p1

    .line 86
    check-cast v10, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 87
    .local v10, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/16 v0, 0x2500

    const v1, 0x8512

    invoke-interface {v10, v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    .line 90
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 91
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 92
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 93
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2101

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 96
    .end local v10    # "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 97
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 102
    :cond_1
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 104
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    const v1, 0x3f99999a    # 1.2f

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    .line 105
    return-void

    .line 64
    :cond_2
    invoke-interface {p1, v8, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 108
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 109
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 110
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 111
    .local v2, "ratio":F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 112
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 113
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x41200000    # 10.0f

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 114
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 115
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v2, 0x3c

    .line 118
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 121
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->checkIfContextSupportsCubeMap(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    .line 123
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->generateTorusGrid(Ljavax/microedition/khronos/opengles/GL;IIFF)Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    .line 125
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 129
    .local v6, "cubeMapResourceIds":[I
    invoke-direct {p0, p1, v6}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->generateCubeMap(Ljavax/microedition/khronos/opengles/GL10;[I)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mCubeMapTextureID:I

    .line 131
    .end local v6    # "cubeMapResourceIds":[I
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 132
    return-void

    .line 126
    :array_0
    .array-data 4
        0x7f070002
        0x7f070003
        0x7f070004
        0x7f070005
        0x7f070006
        0x7f070007
    .end array-data
.end method
