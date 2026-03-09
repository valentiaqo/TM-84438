.class public Lio/appium/android/apis/view/Gallery2;
.super Landroid/app/Activity;
.source "Gallery2.java"


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/Gallery2;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030053

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Gallery2;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/view/Gallery2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/Gallery2;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 41
    .local v3, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Gallery2;->startManagingCursor(Landroid/database/Cursor;)V

    .line 43
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x109000b

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    const v1, 0x1020014

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 53
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Gallery2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery;

    .line 54
    .local v6, "g":Landroid/widget/Gallery;
    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    return-void
.end method
