.class public Lio/appium/android/apis/app/SetWallpaperActivity;
.super Landroid/app/Activity;
.source "SetWallpaperActivity.java"


# static fields
.field private static final mColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/app/SetWallpaperActivity;->mColors:[I

    return-void

    :array_0
    .array-data 4
        -0xffff01
        -0xff0100
        -0x10000
        -0x333334
        -0xff01
        -0xff0001
        -0x100
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lio/appium/android/apis/app/SetWallpaperActivity;->mColors:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v5, 0x7f0300f6

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/SetWallpaperActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 61
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 62
    .local v3, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f090183

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/SetWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const v5, 0x7f090184

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/SetWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, "randomize":Landroid/widget/Button;
    new-instance v5, Lio/appium/android/apis/app/SetWallpaperActivity$1;

    invoke-direct {v5, p0, v3, v0}, Lio/appium/android/apis/app/SetWallpaperActivity$1;-><init>(Lio/appium/android/apis/app/SetWallpaperActivity;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v5, 0x7f090185

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/SetWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 77
    .local v2, "setWallpaper":Landroid/widget/Button;
    new-instance v5, Lio/appium/android/apis/app/SetWallpaperActivity$2;

    invoke-direct {v5, p0, v4, v0}, Lio/appium/android/apis/app/SetWallpaperActivity$2;-><init>(Lio/appium/android/apis/app/SetWallpaperActivity;Landroid/app/WallpaperManager;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
