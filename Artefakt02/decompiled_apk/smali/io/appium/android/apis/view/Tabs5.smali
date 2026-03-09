.class public Lio/appium/android/apis/view/Tabs5;
.super Landroid/app/TabActivity;
.source "Tabs5.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content for tab with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f0300eb

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Tabs5;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/view/Tabs5;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    .line 40
    .local v2, "tabHost":Landroid/widget/TabHost;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tab "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method
