.class public Lio/appium/android/apis/app/LoaderCursor;
.super Landroid/app/Activity;
.source "LoaderCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x1020002

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 53
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    new-instance v1, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;

    invoke-direct {v1}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;-><init>()V

    .line 55
    .local v1, "list":Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    .end local v1    # "list":Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;
    :cond_0
    return-void
.end method
