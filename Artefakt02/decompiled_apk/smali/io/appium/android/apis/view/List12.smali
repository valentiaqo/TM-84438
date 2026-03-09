.class public Lio/appium/android/apis/view/List12;
.super Landroid/app/ListActivity;
.source "List12.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/List12;->mStrings:Ljava/util/ArrayList;

    return-void
.end method

.method private sendText()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lio/appium/android/apis/view/List12;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/view/List12;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lio/appium/android/apis/view/List12;->mUserText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0}, Lio/appium/android/apis/view/List12;->sendText()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List12;->setContentView(I)V

    .line 50
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lio/appium/android/apis/view/List12;->mStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lio/appium/android/apis/view/List12;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/view/List12;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List12;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    const v0, 0x7f0900e2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List12;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/appium/android/apis/view/List12;->mUserText:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/view/List12;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/view/List12;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 58
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sparse-switch p2, :sswitch_data_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 75
    :sswitch_0
    invoke-direct {p0}, Lio/appium/android/apis/view/List12;->sendText()V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
