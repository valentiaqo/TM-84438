.class public Lio/appium/android/apis/view/LayoutAnimation3;
.super Landroid/app/ListActivity;
.source "LayoutAnimation3.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bordeaux"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Lyon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Marseille"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Nancy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Paris"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Toulouse"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Strasbourg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation3;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation3;->setContentView(I)V

    .line 31
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lio/appium/android/apis/view/LayoutAnimation3;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation3;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method
