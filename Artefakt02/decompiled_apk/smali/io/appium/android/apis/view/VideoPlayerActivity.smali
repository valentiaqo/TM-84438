.class public Lio/appium/android/apis/view/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/VideoPlayerActivity$Content;
    }
.end annotation


# instance fields
.field mContent:Lio/appium/android/apis/view/VideoPlayerActivity$Content;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 195
    const v1, 0x7f0300f2

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity;->setContentView(I)V

    .line 196
    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    iput-object v1, p0, Lio/appium/android/apis/view/VideoPlayerActivity;->mContent:Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    .line 197
    iget-object v4, p0, Lio/appium/android/apis/view/VideoPlayerActivity;->mContent:Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09017e

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090063

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {v4, p0, v1, v2, v3}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->init(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/SeekBar;)V

    .line 201
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 202
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 1"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 203
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 2"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 204
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 3"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 209
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 210
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v6, 0x7f0e0006

    invoke-virtual {v2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const v6, 0x7f09018b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 212
    .local v3, "searchView":Landroid/widget/SearchView;
    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 215
    const v6, 0x7f090189

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 216
    .local v0, "actionItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 217
    .local v1, "actionProvider":Landroid/widget/ShareActionProvider;
    const-string v6, "share_history.xml"

    invoke-virtual {v1, v6}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 220
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v6, "shared.png"

    invoke-virtual {p0, v6}, Lio/appium/android/apis/view/VideoPlayerActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 223
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v1, v4}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 225
    const/4 v6, 0x1

    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 256
    :goto_0
    return v0

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 249
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 253
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x7f0901ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    return-void
.end method

.method public onSort(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 242
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 280
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 272
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 276
    return-void
.end method
