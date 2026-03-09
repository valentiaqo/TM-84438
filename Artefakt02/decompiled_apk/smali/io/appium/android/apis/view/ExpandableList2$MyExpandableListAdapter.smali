.class public Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ExpandableList2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ExpandableList2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyExpandableListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ExpandableList2;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/ExpandableList2;Landroid/content/Context;II[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "childLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childrenFrom"    # [Ljava/lang/String;
    .param p8, "childrenTo"    # [I

    .prologue
    .line 79
    iput-object p1, p0, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList2;

    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 90
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 91
    .local v8, "builder":Landroid/net/Uri$Builder;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 92
    const-string v0, "data"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 95
    .local v3, "phoneNumbersUri":Landroid/net/Uri;
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList2;

    invoke-static {v0}, Lio/appium/android/apis/view/ExpandableList2;->access$100(Lio/appium/android/apis/view/ExpandableList2;)Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lio/appium/android/apis/view/ExpandableList2;->access$000()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "mimetype=?"

    new-array v6, v1, [Ljava/lang/String;

    const-string v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v6, v10

    invoke-virtual/range {v0 .. v7}, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v7
.end method
