.class public Lio/appium/android/apis/view/ContentBrowserActivity;
.super Landroid/app/Activity;
.source "ContentBrowserActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/ContentBrowserActivity$Content;
    }
.end annotation


# instance fields
.field mContent:Lio/appium/android/apis/view/ContentBrowserActivity$Content;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 172
    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity;->setContentView(I)V

    .line 173
    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/view/ContentBrowserActivity$Content;

    iput-object v1, p0, Lio/appium/android/apis/view/ContentBrowserActivity;->mContent:Lio/appium/android/apis/view/ContentBrowserActivity$Content;

    .line 174
    iget-object v3, p0, Lio/appium/android/apis/view/ContentBrowserActivity;->mContent:Lio/appium/android/apis/view/ContentBrowserActivity$Content;

    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/ContentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    invoke-virtual {v3, v1, v2}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->init(Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    .line 177
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 178
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 1"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 179
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 2"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 180
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 3"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 181
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 185
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 186
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v6, 0x7f0e0006

    invoke-virtual {v2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    const v6, 0x7f09018b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 188
    .local v3, "searchView":Landroid/widget/SearchView;
    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 191
    const v6, 0x7f090189

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    .local v0, "actionItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 193
    .local v1, "actionProvider":Landroid/widget/ShareActionProvider;
    const-string v6, "share_history.xml"

    invoke-virtual {v1, v6}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 196
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v6, "shared.png"

    invoke-virtual {p0, v6}, Lio/appium/android/apis/view/ContentBrowserActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 199
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v1, v4}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 201
    const/4 v6, 0x1

    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 239
    :goto_0
    return v1

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 225
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 229
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 233
    iget-object v2, p0, Lio/appium/android/apis/view/ContentBrowserActivity;->mContent:Lio/appium/android/apis/view/ContentBrowserActivity$Content;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x500

    :goto_1
    invoke-virtual {v2, v0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setBaseSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x400

    goto :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901ab
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 249
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

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 212
    return-void
.end method

.method public onSort(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 218
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 263
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 255
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 259
    return-void
.end method
