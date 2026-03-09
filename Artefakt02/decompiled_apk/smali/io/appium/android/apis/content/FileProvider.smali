.class public Lio/appium/android/apis/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentProvider;",
        "Landroid/content/ContentProvider$PipeDataWriter",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    const-string v0, "application/vnd.android.package-archive"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/appium/android/apis/content/FileProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    move-object v5, v13

    invoke-direct/range {v5 .. v10}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    .line 85
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .line 86
    .local v11, "e":Ljava/io/IOException;
    new-instance v12, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 87
    .local v12, "fnf":Ljava/io/FileNotFoundException;
    throw v12
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "args"    # Ljava/io/InputStream;

    .prologue
    .line 95
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 97
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 99
    .local v2, "fout":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    if-ltz v3, :cond_0

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "InstallApk"

    const-string v5, "Failed transferring"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 110
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 106
    .restart local v3    # "n":I
    :cond_0
    :try_start_4
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 111
    :catch_1
    move-exception v4

    goto :goto_2

    .line 105
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    .line 106
    :try_start_6
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 110
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 112
    :goto_5
    throw v4

    .line 107
    .restart local v3    # "n":I
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v3    # "n":I
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 111
    :catch_4
    move-exception v4

    goto :goto_2

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_4

    .line 111
    :catch_6
    move-exception v5

    goto :goto_5
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/os/Bundle;
    .param p5, "x4"    # Ljava/lang/Object;

    .prologue
    .line 38
    move-object v5, p5

    check-cast v5, Ljava/io/InputStream;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/appium/android/apis/content/FileProvider;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/io/InputStream;)V

    return-void
.end method
