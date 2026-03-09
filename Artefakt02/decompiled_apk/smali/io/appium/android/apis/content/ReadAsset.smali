.class public Lio/appium/android/apis/content/ReadAsset;
.super Landroid/app/Activity;
.source "ReadAsset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v6, 0x7f0300a4

    invoke-virtual {p0, v6}, Lio/appium/android/apis/content/ReadAsset;->setContentView(I)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/ReadAsset;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "read_asset.txt"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 54
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 57
    .local v3, "size":I
    new-array v0, v3, [B

    .line 58
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 59
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 62
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 65
    .local v4, "text":Ljava/lang/String;
    const v6, 0x7f09000c

    invoke-virtual {p0, v6}, Lio/appium/android/apis/content/ReadAsset;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 67
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "size":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
