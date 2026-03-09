.class public Lio/appium/android/apis/view/ExpandableList3;
.super Landroid/app/ExpandableListActivity;
.source "ExpandableList3.java"


# static fields
.field private static final IS_EVEN:Ljava/lang/String; = "IS_EVEN"

.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super/range {p0 .. p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "groupData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, "childData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v13, v0, :cond_3

    .line 46
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v12, "curGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "NAME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "IS_EVEN"

    rem-int/lit8 v0, v13, 0x2

    if-nez v0, :cond_0

    const-string v0, "This group is even"

    :goto_1
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v10, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    const/16 v0, 0xf

    if-ge v14, v0, :cond_2

    .line 53
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v11, "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "NAME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "IS_EVEN"

    rem-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1

    const-string v0, "This child is even"

    :goto_3
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 49
    .end local v10    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "j":I
    :cond_0
    const-string v0, "This group is odd"

    goto :goto_1

    .line 56
    .restart local v10    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "j":I
    :cond_1
    const-string v0, "This child is odd"

    goto :goto_3

    .line 58
    .end local v11    # "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 62
    .end local v10    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "curGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "j":I
    :cond_3
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    const v3, 0x1090006

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "NAME"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "IS_EVEN"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const v7, 0x1090007

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "NAME"

    aput-object v9, v8, v1

    const/4 v1, 0x1

    const-string v9, "IS_EVEN"

    aput-object v9, v8, v1

    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lio/appium/android/apis/view/ExpandableList3;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList3;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ExpandableList3;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 74
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data

    :array_1
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
