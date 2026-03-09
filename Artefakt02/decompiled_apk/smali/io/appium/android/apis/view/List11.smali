.class public Lio/appium/android/apis/view/List11;
.super Landroid/app/ListActivity;
.source "List11.java"


# static fields
.field private static final GENRES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Adventure"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Animation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Children"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Documentary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Drama"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Foreign"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "History"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Independent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Romance"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Sci-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Television"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Thriller"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/List11;->GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090010

    sget-object v3, Lio/appium/android/apis/view/List11;->GENRES:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List11;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/view/List11;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 40
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 41
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 42
    return-void
.end method
