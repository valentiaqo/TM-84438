.class public Lio/appium/android/apis/content/InstallApk;
.super Landroid/app/Activity;
.source "InstallApk.java"


# static fields
.field static final REQUEST_INSTALL:I = 0x1

.field static final REQUEST_UNINSTALL:I = 0x2


# instance fields
.field private mMySourceListener:Landroid/view/View$OnClickListener;

.field private mReplaceListener:Landroid/view/View$OnClickListener;

.field private mUninstallListener:Landroid/view/View$OnClickListener;

.field private mUninstallResultListener:Landroid/view/View$OnClickListener;

.field private mUnknownSourceListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Lio/appium/android/apis/content/InstallApk$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$1;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUnknownSourceListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lio/appium/android/apis/content/InstallApk$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$2;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mMySourceListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lio/appium/android/apis/content/InstallApk$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$3;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mReplaceListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lio/appium/android/apis/content/InstallApk$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$4;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallListener:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lio/appium/android/apis/content/InstallApk$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$5;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallResultListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/content/InstallApk;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/content/InstallApk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lio/appium/android/apis/content/InstallApk;->prepareApk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private prepareApk(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 150
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 151
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 152
    .local v3, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 154
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/InstallApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 155
    const-string v5, "tmp.apk"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lio/appium/android/apis/content/InstallApk;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 157
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "n":I
    if-ltz v4, :cond_2

    .line 158
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v4    # "n":I
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "InstallApk"

    const-string v6, "Failed transferring"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    if-eqz v3, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 170
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 171
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const-string v5, "tmp.apk"

    invoke-virtual {p0, v5}, Lio/appium/android/apis/content/InstallApk;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    return-object v5

    .line 164
    .restart local v4    # "n":I
    :cond_2
    if-eqz v3, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 170
    :cond_3
    :goto_3
    if-eqz v2, :cond_1

    .line 171
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 173
    :catch_1
    move-exception v5

    goto :goto_2

    .line 163
    .end local v4    # "n":I
    :catchall_0
    move-exception v5

    .line 164
    if-eqz v3, :cond_4

    .line 165
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 170
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 174
    :cond_5
    :goto_5
    throw v5

    .line 167
    .restart local v4    # "n":I
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v4    # "n":I
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_1

    .line 173
    :catch_4
    move-exception v5

    goto :goto_2

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    goto :goto_4

    .line 173
    :catch_6
    move-exception v6

    goto :goto_5
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 77
    if-ne p2, v2, :cond_1

    .line 78
    const-string v0, "Install succeeded!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-nez p2, :cond_2

    .line 80
    const-string v0, "Install canceled!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "Install Failed!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 85
    if-ne p2, v2, :cond_4

    .line 86
    const-string v0, "Uninstall succeeded!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_4
    if-nez p2, :cond_5

    .line 88
    const-string v0, "Uninstall canceled!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_5
    const-string v0, "Uninstall Failed!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030067

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->setContentView(I)V

    .line 62
    const v1, 0x7f0900c0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUnknownSourceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 65
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mMySourceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0900c2

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 67
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mReplaceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 69
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 71
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallResultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
