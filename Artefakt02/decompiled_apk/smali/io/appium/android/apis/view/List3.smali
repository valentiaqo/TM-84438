.class public Lio/appium/android/apis/view/List3;
.super Landroid/app/ListActivity;
.source "List3.java"


# static fields
.field private static final COLUMN_LABEL:I = 0x2

.field private static final COLUMN_TYPE:I = 0x1

.field private static final PHONE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/List3;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lio/appium/android/apis/view/List3;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/List3;->PHONE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 42
    .local v3, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/List3;->startManagingCursor(Landroid/database/Cursor;)V

    .line 45
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "data2"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "data1"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 53
    .local v0, "adapter":Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lio/appium/android/apis/view/List3$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/List3$1;-><init>(Lio/appium/android/apis/view/List3;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 72
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List3;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void

    .line 45
    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
