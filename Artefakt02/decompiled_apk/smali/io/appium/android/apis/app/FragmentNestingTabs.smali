.class public Lio/appium/android/apis/app/FragmentNestingTabs;
.super Landroid/app/Activity;
.source "FragmentNestingTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 35
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/app/FragmentManager;->enableDebugLogging(Z)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentNestingTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 40
    const/16 v1, 0x8

    invoke-virtual {v0, v5, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 42
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Menus"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;

    const-string v3, "menus"

    const-class v4, Lio/appium/android/apis/app/FragmentMenuFragment;

    invoke-direct {v2, p0, v3, v4}, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Args"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;

    const-string v3, "args"

    const-class v4, Lio/appium/android/apis/app/FragmentArgumentsFragment;

    invoke-direct {v2, p0, v3, v4}, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Stack"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;

    const-string v3, "stack"

    const-class v4, Lio/appium/android/apis/app/FragmentStackFragment;

    invoke-direct {v2, p0, v3, v4}, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 54
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tabs"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;

    const-string v3, "tabs"

    const-class v4, Lio/appium/android/apis/app/FragmentTabsFragment;

    invoke-direct {v2, p0, v3, v4}, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v1, "tab"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "tab"

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentNestingTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    return-void
.end method
