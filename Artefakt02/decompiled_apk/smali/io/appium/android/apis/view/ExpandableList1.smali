.class public Lio/appium/android/apis/view/ExpandableList1;
.super Landroid/app/ExpandableListActivity;
.source "ExpandableList1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 65
    .local v2, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-object v5, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "title":Ljava/lang/String;
    iget-wide v8, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 68
    .local v4, "type":I
    if-ne v4, v6, :cond_0

    .line 69
    iget-wide v8, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 70
    .local v1, "groupPos":I
    iget-wide v8, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 71
    .local v0, "childPos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": Child "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " clicked in group "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 80
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    :goto_0
    return v5

    .line 74
    :cond_0
    if-nez v4, :cond_1

    .line 75
    iget-wide v8, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 76
    .restart local v1    # "groupPos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": Group "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " clicked"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 77
    goto :goto_0

    .end local v1    # "groupPos":I
    :cond_1
    move v5, v7

    .line 80
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;-><init>(Lio/appium/android/apis/view/ExpandableList1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ExpandableList1;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList1;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ExpandableList1;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/view/ExpandableList1;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ExpandableList1;->registerForContextMenu(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "Sample menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 58
    const v0, 0x7f0c0376

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 59
    return-void
.end method
