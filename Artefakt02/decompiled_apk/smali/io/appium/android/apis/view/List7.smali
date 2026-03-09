.class public Lio/appium/android/apis/view/List7;
.super Landroid/app/ListActivity;
.source "List7.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final COLUMN_PHONE_LABEL:I = 0x2

.field private static final COLUMN_PHONE_NUMBER:I = 0x3

.field private static final COLUMN_PHONE_TYPE:I = 0x1

.field private static final PHONE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mPhone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x5

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

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/List7;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f030083

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List7;->setContentView(I)V

    .line 58
    const v1, 0x7f0900e4

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List7;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/List7;->mPhone:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 63
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/List7;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v3, "data1 NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 65
    .local v3, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/List7;->startManagingCursor(Landroid/database/Cursor;)V

    .line 67
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 76
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List7;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_1

    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 83
    .local v0, "c":Landroid/database/Cursor;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 84
    .local v5, "type":I
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "phone":Ljava/lang/String;
    const/4 v1, 0x0

    .line 87
    .local v1, "label":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 88
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "numberType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "text":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/view/List7;->mPhone:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "numberType":Ljava/lang/String;
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
