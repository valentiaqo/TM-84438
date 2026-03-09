.class public Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;
.super Landroid/app/ListFragment;
.source "LoaderRetained.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderRetained;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorLoaderListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCurFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setRetainInstance(Z)V

    .line 77
    const-string v0, "No phone numbers"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setHasOptionsMenu(Z)V

    .line 83
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090004

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    const-string v5, "contact_status"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setListShown(Z)V

    .line 94
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 95
    return-void

    .line 83
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
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
    .line 152
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    .local v2, "baseUri":Landroid/net/Uri;
    :goto_0
    const-string v4, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 164
    .local v4, "select":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    .end local v2    # "baseUri":Landroid/net/Uri;
    .end local v4    # "select":Ljava/lang/String;
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2    # "baseUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 99
    const-string v2, "Search"

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    .local v0, "item":Landroid/view/MenuItem;
    const v2, 0x108004f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "sv":Landroid/widget/SearchView;
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 105
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 106
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 133
    const-string v0, "FragmentComplexList"

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

    .line 134
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

    .line 172
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 175
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setListShown(Z)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 186
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 187
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, p1

    .line 115
    .local v0, "newFilter":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 123
    :cond_0
    :goto_1
    return v4

    .end local v0    # "newFilter":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 112
    goto :goto_0

    .line 118
    .restart local v0    # "newFilter":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    :cond_3
    iput-object v0, p0, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderRetained$CursorLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
