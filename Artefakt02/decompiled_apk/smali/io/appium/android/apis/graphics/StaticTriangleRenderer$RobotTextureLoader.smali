.class Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;
.super Ljava/lang/Object;
.source "StaticTriangleRenderer.java"

# interfaces
.implements Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/StaticTriangleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RobotTextureLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/StaticTriangleRenderer;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/StaticTriangleRenderer;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;->this$0:Lio/appium/android/apis/graphics/StaticTriangleRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/graphics/StaticTriangleRenderer;Lio/appium/android/apis/graphics/StaticTriangleRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/graphics/StaticTriangleRenderer;
    .param p2, "x1"    # Lio/appium/android/apis/graphics/StaticTriangleRenderer$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;-><init>(Lio/appium/android/apis/graphics/StaticTriangleRenderer;)V

    return-void
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v2, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;->this$0:Lio/appium/android/apis/graphics/StaticTriangleRenderer;

    invoke-static {v2}, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->access$100(Lio/appium/android/apis/graphics/StaticTriangleRenderer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 193
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :goto_0
    const/16 v2, 0xde1

    invoke-static {v2, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    return-void

    .line 195
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    .line 196
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    :goto_1
    throw v2

    .line 197
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
