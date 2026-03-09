.class public Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;
.super Landroid/app/ListFragment;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitlesFragment"
.end annotation


# instance fields
.field mCurCheckPosition:I

.field mDualPane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090016

    sget-object v6, Lio/appium/android/apis/Shakespeare;->TITLES:[Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0900a5

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "detailsFrame":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    .line 106
    if-eqz p1, :cond_0

    .line 108
    const-string v1, "curChoice"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    .line 111
    :cond_0
    iget-boolean v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 115
    iget v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->showDetails(I)V

    .line 117
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 104
    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 127
    invoke-virtual {p0, p3}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->showDetails(I)V

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "curChoice"

    iget v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method showDetails(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const v5, 0x7f0900a5

    .line 136
    iput p1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    .line 138
    iget-boolean v3, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 144
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    .line 146
    .local v0, "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getShownIndex()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 148
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 153
    .local v1, "ft":Landroid/app/FragmentTransaction;
    if-nez p1, :cond_2

    .line 154
    invoke-virtual {v1, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 158
    :goto_0
    const/16 v3, 0x1003

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 159
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 170
    .end local v0    # "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    :goto_1
    return-void

    .line 156
    .restart local v0    # "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const v3, 0x7f0901c8

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 165
    .end local v0    # "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v3, "index"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
