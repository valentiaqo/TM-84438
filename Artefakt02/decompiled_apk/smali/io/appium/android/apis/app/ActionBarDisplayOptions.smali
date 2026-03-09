.class public Lio/appium/android/apis/app/ActionBarDisplayOptions;
.super Landroid/app/Activity;
.source "ActionBarDisplayOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private mCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v2, 0x0

    .line 70
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 112
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v5

    xor-int v1, v5, v2

    .line 113
    .local v1, "change":I
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    .end local v1    # "change":I
    :goto_1
    return-void

    .line 72
    :pswitch_0
    const/4 v2, 0x4

    .line 73
    goto :goto_0

    .line 75
    :pswitch_1
    const/4 v2, 0x2

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v2, 0x1

    .line 79
    goto :goto_0

    .line 81
    :pswitch_3
    const/16 v2, 0x8

    .line 82
    goto :goto_0

    .line 84
    :pswitch_4
    const/16 v2, 0x10

    .line 85
    goto :goto_0

    .line 88
    :pswitch_5
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    :goto_2
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    .line 94
    :pswitch_6
    iget-object v5, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/app/ActionBar$LayoutParams;

    .line 95
    .local v3, "lp":Landroid/app/ActionBar$LayoutParams;
    const/4 v4, 0x0

    .line 96
    .local v4, "newGravity":I
    iget v5, v3, Landroid/app/ActionBar$LayoutParams;->gravity:I

    const v6, 0x800007

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 107
    :goto_3
    iget v5, v3, Landroid/app/ActionBar$LayoutParams;->gravity:I

    const v6, -0x800008

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    iput v5, v3, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 108
    iget-object v5, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1

    .line 98
    :sswitch_0
    const/4 v4, 0x1

    .line 99
    goto :goto_3

    .line 101
    :sswitch_1
    const v4, 0x800005

    .line 102
    goto :goto_3

    .line 104
    :sswitch_2
    const v4, 0x800003

    goto :goto_3

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->setContentView(I)V

    .line 42
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "bar":Landroid/app/ActionBar;
    iget-object v1, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 56
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 1"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 57
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 2"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 3"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 63
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 123
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 117
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 120
    return-void
.end method
