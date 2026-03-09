.class public Lio/appium/android/apis/graphics/PurgeableBitmap;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "PurgeableBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;
    }
.end annotation


# instance fields
.field private final mRedrawHandler:Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;

.field private mView:Lio/appium/android/apis/graphics/PurgeableBitmapView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    .line 40
    new-instance v0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;-><init>(Lio/appium/android/apis/graphics/PurgeableBitmap;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap;->mRedrawHandler:Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/PurgeableBitmap;)Lio/appium/android/apis/graphics/PurgeableBitmapView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/PurgeableBitmap;

    .prologue
    .line 37
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap;->mView:Lio/appium/android/apis/graphics/PurgeableBitmapView;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/graphics/PurgeableBitmap;ZI)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/PurgeableBitmap;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/graphics/PurgeableBitmap;->getDialogMessage(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/graphics/PurgeableBitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/graphics/PurgeableBitmap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/PurgeableBitmap;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method private detectIfPurgeableRequest()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 73
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 75
    .local v3, "labelSeq":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 77
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "components":[Ljava/lang/String;
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    const-string v7, "Purgeable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    const/4 v5, 0x1

    .line 87
    .end local v0    # "components":[Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return v5

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDialogMessage(ZI)Ljava/lang/String;
    .locals 3
    .param p1, "isOutOfMemory"    # Z
    .param p2, "index"    # I

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 94
    const-string v1, "Out of memery occurs when the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "th Bitmap is decoded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    const-string v1, "Complete decoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmaps without running out of memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lio/appium/android/apis/graphics/PurgeableBitmap$1;

    invoke-direct {v4, p0}, Lio/appium/android/apis/graphics/PurgeableBitmap$1;-><init>(Lio/appium/android/apis/graphics/PurgeableBitmap;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 114
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lio/appium/android/apis/graphics/PurgeableBitmapView;

    invoke-direct {p0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->detectIfPurgeableRequest()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/graphics/PurgeableBitmapView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap;->mView:Lio/appium/android/apis/graphics/PurgeableBitmapView;

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap;->mRedrawHandler:Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->sleep(J)V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap;->mView:Lio/appium/android/apis/graphics/PurgeableBitmapView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->setContentView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
