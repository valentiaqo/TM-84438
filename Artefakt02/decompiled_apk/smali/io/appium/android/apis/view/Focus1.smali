.class public Lio/appium/android/apis/view/Focus1;
.super Landroid/app/Activity;
.source "Focus1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Focus1;->setContentView(I)V

    .line 37
    const v2, 0x7f090088

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Focus1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 38
    .local v1, "webView":Landroid/webkit/WebView;
    const-string v2, "<html><body>Can I focus?<br /><a href=\"#\">No I cannot!</a>.</body></html>"

    const-string v3, "text/html"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const v2, 0x7f090087

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Focus1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 43
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Ars Technica"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Slashdot"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "GameKult"

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method
