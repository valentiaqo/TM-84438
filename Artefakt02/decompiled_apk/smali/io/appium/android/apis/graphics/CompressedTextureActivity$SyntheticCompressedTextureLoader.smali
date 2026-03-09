.class Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;
.super Ljava/lang/Object;
.source "CompressedTextureActivity.java"

# interfaces
.implements Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CompressedTextureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyntheticCompressedTextureLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;->this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createImage(II)Ljava/nio/Buffer;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 135
    mul-int/lit8 v4, p1, 0x3

    .line 136
    .local v4, "stride":I
    mul-int v8, p2, v4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 140
    .local v2, "image":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "t":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 141
    mul-int/lit8 v8, v5, 0x2

    rsub-int v8, v8, 0xff

    int-to-byte v3, v8

    .line 142
    .local v3, "red":B
    mul-int/lit8 v8, v5, 0x2

    int-to-byte v1, v8

    .line 143
    .local v1, "green":B
    const/4 v0, 0x0

    .line 144
    .local v0, "blue":B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, p1, :cond_0

    .line 145
    xor-int v7, v6, v5

    .line 146
    .local v7, "y":I
    mul-int v8, v4, v7

    mul-int/lit8 v9, v6, 0x3

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    .end local v7    # "y":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "blue":B
    .end local v1    # "green":B
    .end local v3    # "red":B
    .end local v6    # "x":I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    return-object v2
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    .line 113
    const/16 v8, 0x80

    .line 114
    .local v8, "width":I
    const/16 v6, 0x80

    .line 115
    .local v6, "height":I
    invoke-direct {p0, v8, v6}, Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;->createImage(II)Ljava/nio/Buffer;

    move-result-object v7

    .line 116
    .local v7, "image":Ljava/nio/Buffer;
    const/4 v0, 0x3

    const/16 v2, 0x180

    invoke-static {v7, v8, v6, v0, v2}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    .line 129
    .local v5, "etc1Texture":Landroid/opengl/ETC1Util$ETC1Texture;
    const/16 v0, 0xde1

    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 132
    return-void
.end method
