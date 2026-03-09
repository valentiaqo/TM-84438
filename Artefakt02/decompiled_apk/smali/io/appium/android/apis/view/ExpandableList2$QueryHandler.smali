.class final Lio/appium/android/apis/view/ExpandableList2$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExpandableList2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ExpandableList2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/CursorTreeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CursorTreeAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/CursorTreeAdapter;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 55
    iput-object p2, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    .line 56
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 70
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_0
    return-void

    .line 62
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 66
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "groupPosition":I
    iget-object v1, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v1, v0, p3}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
