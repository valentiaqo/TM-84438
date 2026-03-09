.class public Lio/appium/android/apis/app/QuickContactsDemo;
.super Landroid/app/ListActivity;
.source "QuickContactsDemo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;,
        Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field static final SUMMARY_HAS_PHONE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_LOOKUP_KEY:I = 0x6

.field static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_PRESENCE_STATUS_COLUMN_INDEX:I = 0x4

.field static final SUMMARY_STARRED_COLUMN_INDEX:I = 0x2

.field static final SUMMARY_TIMES_CONTACTED_COLUMN_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/app/QuickContactsDemo;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v3, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 61
    .local v3, "select":Ljava/lang/String;
    invoke-virtual {p0}, Lio/appium/android/apis/app/QuickContactsDemo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/app/QuickContactsDemo;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    .local v7, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v7}, Lio/appium/android/apis/app/QuickContactsDemo;->startManagingCursor(Landroid/database/Cursor;)V

    .line 65
    new-instance v6, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;

    const v0, 0x7f0300a1

    invoke-direct {v6, p0, p0, v0, v7}, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;-><init>(Lio/appium/android/apis/app/QuickContactsDemo;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    .local v6, "adapter":Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;
    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/QuickContactsDemo;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method
