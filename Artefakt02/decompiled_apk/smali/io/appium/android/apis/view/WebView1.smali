.class public Lio/appium/android/apis/view/WebView1;
.super Landroid/app/Activity;
.source "WebView1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f0300f7

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/WebView1;->setContentView(I)V

    .line 37
    const-string v0, "text/html"

    .line 41
    .local v0, "mimeType":Ljava/lang/String;
    const v2, 0x7f090186

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/WebView1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 42
    .local v1, "wv":Landroid/webkit/WebView;
    const-string v2, "<a href=\'x\'>Hello World! - 1</a>"

    const-string v3, "text/html"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 44
    return-void
.end method
