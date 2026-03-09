.class public Lio/appium/android/apis/view/AutoComplete2;
.super Landroid/app/Activity;
.source "AutoComplete2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/AutoComplete2;->setContentView(I)V

    .line 34
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x109000a

    sget-object v3, Lio/appium/android/apis/view/AutoComplete1;->COUNTRIES:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 37
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x7f090049

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/AutoComplete2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 39
    .local v1, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    return-void
.end method
