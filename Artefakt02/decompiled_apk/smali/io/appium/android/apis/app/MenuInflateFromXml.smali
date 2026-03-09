.class public Lio/appium/android/apis/app/MenuInflateFromXml;
.super Landroid/app/Activity;
.source "MenuInflateFromXml.java"


# static fields
.field private static final sMenuExampleNames:[Ljava/lang/String;

.field private static final sMenuExampleResources:[I


# instance fields
.field private mInstructionsText:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleResources:[I

    .line 53
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Title only"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Title and Icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Submenu"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Groups"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Checkable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Shortcuts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Order"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Category and Order"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Visible"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Disabled"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleNames:[Ljava/lang/String;

    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f0e0012
        0x7f0e0011
        0x7f0e0010
        0x7f0e0009
        0x7f0e0005
        0x7f0e000f
        0x7f0e000b
        0x7f0e0004
        0x7f0e0013
        0x7f0e0007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/16 v6, 0xa

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    sget-object v4, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    .line 89
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setId(I)V

    .line 90
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    new-instance v4, Lio/appium/android/apis/app/MenuInflateFromXml$1;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/MenuInflateFromXml$1;-><init>(Lio/appium/android/apis/app/MenuInflateFromXml;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    .line 109
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/MenuInflateFromXml;->setContentView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    iput-object p1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 130
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget-object v1, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleResources:[I

    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    iget-object v1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    :goto_0
    return v0

    .line 145
    :sswitch_0
    const-string v3, "Jump up in the air!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->invalidateOptionsMenu()V

    goto :goto_0

    .line 150
    :sswitch_1
    const-string v3, "Dive into the water!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0901ba

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    .local v0, "shouldShowBrowser":Z
    :goto_1
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0901b9

    invoke-interface {v3, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .end local v0    # "shouldShowBrowser":Z
    :cond_0
    :goto_2
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    .line 163
    :sswitch_3
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0901be

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v0

    .line 164
    .local v1, "shouldShowEmail":Z
    :goto_3
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0901bd

    invoke-interface {v3, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .end local v1    # "shouldShowEmail":Z
    :cond_2
    move v1, v2

    .line 163
    goto :goto_3

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x7f0901b8 -> :sswitch_2
        0x7f0901bc -> :sswitch_3
        0x7f0901d2 -> :sswitch_0
        0x7f0901d3 -> :sswitch_1
    .end sparse-switch
.end method
