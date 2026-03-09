.class public Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;
.super Landroid/app/ListFragment;
.source "LoaderThrottle.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrottledLoaderListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CLEAR_ID:I = 0x2

.field static final POPULATE_ID:I = 0x1

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCurFilter:Ljava/lang/String;

.field mPopulatingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 402
    const-string v0, "No data.  Select \'Populate\' to fill with data from Z to A at a rate of 4 per second."

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setHasOptionsMenu(Z)V

    .line 406
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "data"

    aput-object v5, v4, v6

    new-array v5, v7, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 410
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShown(Z)V

    .line 417
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 418
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 490
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v0, "cl":Landroid/content/CursorLoader;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 493
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    const-string v0, "Populate"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 423
    const/4 v0, 0x2

    const-string v1, "Clear"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 425
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 480
    const-string v0, "LoaderThrottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 497
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 500
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShown(Z)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 509
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 432
    :pswitch_0
    iget-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 435
    :cond_0
    new-instance v4, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;

    invoke-direct {v4, p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;-><init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 455
    iget-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 457
    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v4, :cond_1

    .line 461
    iget-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 462
    iput-object v2, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 464
    :cond_1
    new-instance v1, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;

    invoke-direct {v1, p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;-><init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V

    .line 470
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 471
    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
