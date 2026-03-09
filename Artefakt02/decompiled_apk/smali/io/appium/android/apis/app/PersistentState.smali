.class public Lio/appium/android/apis/app/PersistentState;
.super Landroid/app/Activity;
.source "PersistentState.java"


# instance fields
.field private mSaved:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PersistentState;->setContentView(I)V

    .line 85
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PersistentState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PersistentState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/PersistentState;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "text"

    iget-object v2, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v1, "selection-start"

    iget-object v2, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v1, "selection-end"

    iget-object v2, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/PersistentState;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "text"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "restoredText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 102
    iget-object v4, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 104
    const-string v4, "selection-start"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 105
    .local v3, "selectionStart":I
    const-string v4, "selection-end"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, "selectionEnd":I
    if-eq v3, v6, :cond_0

    if-eq v2, v6, :cond_0

    .line 107
    iget-object v4, p0, Lio/appium/android/apis/app/PersistentState;->mSaved:Landroid/widget/EditText;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 110
    .end local v2    # "selectionEnd":I
    .end local v3    # "selectionStart":I
    :cond_0
    return-void
.end method
