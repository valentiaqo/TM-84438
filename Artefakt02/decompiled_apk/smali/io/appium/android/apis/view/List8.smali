.class public Lio/appium/android/apis/view/List8;
.super Landroid/app/ListActivity;
.source "List8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List8$PhotoAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030084

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/List8;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lio/appium/android/apis/view/List8;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x7f0900e5

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 54
    new-instance v2, Lio/appium/android/apis/view/List8$PhotoAdapter;

    invoke-direct {v2, p0, p0}, Lio/appium/android/apis/view/List8$PhotoAdapter;-><init>(Lio/appium/android/apis/view/List8;Landroid/content/Context;)V

    iput-object v2, p0, Lio/appium/android/apis/view/List8;->mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;

    .line 55
    iget-object v2, p0, Lio/appium/android/apis/view/List8;->mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/List8;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const v2, 0x7f0900b4

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, "clear":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/List8$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/List8$1;-><init>(Lio/appium/android/apis/view/List8;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v2, 0x7f090078

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, "add":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/List8$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/List8$2;-><init>(Lio/appium/android/apis/view/List8;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
