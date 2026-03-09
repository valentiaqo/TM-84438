.class public Lio/appium/android/apis/view/AutoComplete4;
.super Landroid/app/Activity;
.source "AutoComplete4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/AutoComplete4;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lio/appium/android/apis/view/AutoComplete4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 47
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;

    invoke-direct {v6, p0, v7}, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 49
    .local v6, "adapter":Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/AutoComplete4;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    .line 51
    .local v8, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v8, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method
