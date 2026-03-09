.class public Lio/appium/android/apis/app/SearchInvoke;
.super Landroid/app/Activity;
.source "SearchInvoke.java"


# static fields
.field static final MENUMODE_DISABLED:I = 0x3

.field static final MENUMODE_MENU_ITEM:I = 0x1

.field static final MENUMODE_SEARCH_KEY:I = 0x0

.field static final MENUMODE_TYPE_TO_SEARCH:I = 0x2


# instance fields
.field mMenuMode:Landroid/widget/Spinner;

.field mQueryAppData:Landroid/widget/EditText;

.field mQueryPrefill:Landroid/widget/EditText;

.field mStartSearch:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearSearchHistory()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "io.appium.android.apis.SuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 238
    .local v0, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 239
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f0300c4

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SearchInvoke;->setContentView(I)V

    .line 66
    const v1, 0x7f090141

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mStartSearch:Landroid/widget/Button;

    .line 67
    const v1, 0x7f090142

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    .line 68
    const v1, 0x7f090143

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryPrefill:Landroid/widget/EditText;

    .line 69
    const v1, 0x7f090144

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryAppData:Landroid/widget/EditText;

    .line 72
    const v1, 0x7f080003

    const v2, 0x1090008

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    new-instance v2, Lio/appium/android/apis/app/SearchInvoke$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/SearchInvoke$1;-><init>(Lio/appium/android/apis/app/SearchInvoke;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mStartSearch:Landroid/widget/Button;

    new-instance v2, Lio/appium/android/apis/app/SearchInvoke$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/SearchInvoke$2;-><init>(Lio/appium/android/apis/app/SearchInvoke;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "To invoke search, dismiss this dialog and press the search key (F5 on the simulator)."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchInvoke;->onSearchRequested()Z

    goto :goto_0

    .line 161
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "To invoke search, dismiss this dialog and start typing."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 168
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "You have disabled search."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 176
    :pswitch_5
    invoke-direct {p0}, Lio/appium/android/apis/app/SearchInvoke;->clearSearchHistory()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 115
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 118
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    const-string v1, "Clear History"

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, "item":Landroid/view/MenuItem;
    return v3

    .line 121
    .end local v0    # "item":Landroid/view/MenuItem;
    :pswitch_0
    const-string v1, "(Search Key)"

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .restart local v0    # "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 125
    .end local v0    # "item":Landroid/view/MenuItem;
    :pswitch_1
    const-string v1, "Search"

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 126
    .restart local v0    # "item":Landroid/view/MenuItem;
    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 130
    .end local v0    # "item":Landroid/view/MenuItem;
    :pswitch_2
    const-string v1, "(Type-To-Search)"

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 131
    .restart local v0    # "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 134
    .end local v0    # "item":Landroid/view/MenuItem;
    :pswitch_3
    const-string v1, "(Disabled)"

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .restart local v0    # "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v4, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 219
    :goto_0
    return v3

    .line 201
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryPrefill:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "queryPrefill":Ljava/lang/String;
    const/4 v0, 0x0

    .line 209
    .local v0, "appDataBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryAppData:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "queryAppDataString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 211
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "appDataBundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .restart local v0    # "appDataBundle":Landroid/os/Bundle;
    const-string v4, "demo_key"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    invoke-virtual {p0, v2, v3, v0, v3}, Lio/appium/android/apis/app/SearchInvoke;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 219
    const/4 v3, 0x1

    goto :goto_0
.end method
