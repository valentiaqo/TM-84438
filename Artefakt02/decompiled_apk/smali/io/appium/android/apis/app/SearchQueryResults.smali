.class public Lio/appium/android/apis/app/SearchQueryResults;
.super Landroid/app/Activity;
.source "SearchQueryResults.java"


# instance fields
.field mAppDataText:Landroid/widget/TextView;

.field mDeliveredByText:Landroid/widget/TextView;

.field mQueryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "entryPoint"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "queryString":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/app/SearchQueryResults;->mQueryText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v2, Landroid/provider/SearchRecentSuggestions;

    const-string v4, "io.appium.android.apis.SuggestionProvider"

    const/4 v5, 0x1

    invoke-direct {v2, p0, v4, v5}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    .local v2, "suggestions":Landroid/provider/SearchRecentSuggestions;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "app_data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "appData":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 108
    iget-object v4, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    const-string v5, "<no app data bundle>"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    if-eqz v0, :cond_2

    .line 111
    const-string v4, "demo_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "testStr":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    const-string v3, "<no app data>"

    .end local v3    # "testStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    iget-object v4, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f0300c5

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->setContentView(I)V

    .line 48
    const v2, 0x7f090145

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mQueryText:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f090146

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f090147

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchQueryResults;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "onCreate()"

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/app/SearchQueryResults;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    const-string v3, "onCreate(), but no ACTION_SEARCH intent"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchQueryResults;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "onNewIntent()"

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/app/SearchQueryResults;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    const-string v3, "onNewIntent(), but no ACTION_SEARCH intent"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
