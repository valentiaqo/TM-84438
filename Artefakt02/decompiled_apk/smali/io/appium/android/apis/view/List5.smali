.class public Lio/appium/android/apis/view/List5;
.super Landroid/app/ListActivity;
.source "List5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List5$MyListAdapter;
    }
.end annotation


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 85
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Abbaye de Belloc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Abbaye du Mont des Cats"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Abertam"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Abondance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Ackawi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Acorn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Adelost"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Affidelice au Chablis"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Afuega\'l Pitu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Airag"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Airedale"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Aisy Cendre"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Allgauer Emmentaler"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alverca"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Ambert"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "American Cheese"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Ami du Chambertin"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Anejo Enchilado"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Anneau du Vic-Bilh"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Anthoriro"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "----------"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/view/List5;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/List5;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/List5;

    .prologue
    .line 34
    iget-object v0, p0, Lio/appium/android/apis/view/List5;->mStrings:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lio/appium/android/apis/view/List5$MyListAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/view/List5$MyListAdapter;-><init>(Lio/appium/android/apis/view/List5;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List5;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-void
.end method
