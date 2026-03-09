.class public Lio/appium/android/apis/ApiDemos;
.super Landroid/app/ListActivity;
.source "ApiDemos.java"


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lio/appium/android/apis/ApiDemos$1;

    invoke-direct {v0}, Lio/appium/android/apis/ApiDemos$1;-><init>()V

    sput-object v0, Lio/appium/android/apis/ApiDemos;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method protected addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "contentDescription"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "intent"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method protected browseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "result":Landroid/content/Intent;
    const-class v1, Lio/appium/android/apis/ApiDemos;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v1, "io.appium.android.apis.Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method protected getData(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v12, "myData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .local v11, "mainIntent":Landroid/content/Intent;
    const-string v17, "appium.android.intent.category.SAMPLE_CODE"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/ApiDemos;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 65
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 67
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_0

    .line 112
    :goto_0
    return-object v12

    .line 71
    :cond_0
    move-object/from16 v16, p1

    .line 73
    .local v16, "prefixWithSlash":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 74
    const/4 v15, 0x0

    .line 80
    .local v15, "prefixPath":[Ljava/lang/String;
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 82
    .local v9, "len":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v3, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v9, :cond_9

    .line 85
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 86
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 87
    .local v8, "labelSeq":Ljava/lang/CharSequence;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "label":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 93
    :cond_1
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "labelPath":[Ljava/lang/String;
    if-nez v15, :cond_5

    const/16 v17, 0x0

    aget-object v13, v7, v17

    .line 97
    .local v13, "nextLabel":Ljava/lang/String;
    :goto_4
    if-eqz v15, :cond_6

    array-length v0, v15

    move/from16 v17, v0

    :goto_5
    array-length v0, v7

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 98
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/ApiDemos;->activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lio/appium/android/apis/ApiDemos;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 84
    .end local v7    # "labelPath":[Ljava/lang/String;
    .end local v13    # "nextLabel":Ljava/lang/String;
    :cond_2
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 76
    .end local v3    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v8    # "labelSeq":Ljava/lang/CharSequence;
    .end local v9    # "len":I
    .end local v15    # "prefixPath":[Ljava/lang/String;
    :cond_3
    const-string v17, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 77
    .restart local v15    # "prefixPath":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 87
    .restart local v3    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v4    # "i":I
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "labelSeq":Ljava/lang/CharSequence;
    .restart local v9    # "len":I
    :cond_4
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto/16 :goto_3

    .line 95
    .restart local v6    # "label":Ljava/lang/String;
    .restart local v7    # "labelPath":[Ljava/lang/String;
    :cond_5
    array-length v0, v15

    move/from16 v17, v0

    aget-object v13, v7, v17

    goto :goto_4

    .line 97
    .restart local v13    # "nextLabel":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 102
    :cond_7
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_2

    .line 103
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v17, v13

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/appium/android/apis/ApiDemos;->browseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lio/appium/android/apis/ApiDemos;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 104
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 103
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    .line 110
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "labelPath":[Ljava/lang/String;
    .end local v8    # "labelSeq":Ljava/lang/CharSequence;
    .end local v13    # "nextLabel":Ljava/lang/String;
    :cond_9
    sget-object v17, Lio/appium/android/apis/ApiDemos;->sDisplayNameComparator:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lio/appium/android/apis/ApiDemos;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 46
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "io.appium.android.apis.Path"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "path":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 49
    const-string v7, ""

    .line 52
    :cond_0
    new-instance v0, Lio/appium/android/apis/SimpleAdapterWithDesc;

    invoke-virtual {p0, v7}, Lio/appium/android/apis/ApiDemos;->getData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v1, "contentDescription"

    aput-object v1, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/SimpleAdapterWithDesc;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/ApiDemos;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lio/appium/android/apis/ApiDemos;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 56
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 148
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 150
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "intent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/ApiDemos;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method
