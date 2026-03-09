.class public Lio/appium/android/apis/view/AutoComplete5;
.super Landroid/app/Activity;
.source "AutoComplete5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/AutoComplete5;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lio/appium/android/apis/view/AutoComplete5;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 37
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;

    invoke-direct {v6, p0, v7}, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 40
    .local v6, "adapter":Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/AutoComplete5;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    .line 42
    .local v8, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v8, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method
