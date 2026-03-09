.class public Lio/appium/android/apis/content/ClipboardSample;
.super Landroid/app/Activity;
.source "ClipboardSample.java"


# instance fields
.field mClipboard:Landroid/content/ClipboardManager;

.field mDataText:Landroid/widget/TextView;

.field mHtmlPlainText:Ljava/lang/String;

.field mHtmlText:Ljava/lang/String;

.field mMimeTypes:Landroid/widget/TextView;

.field mPlainText:Ljava/lang/String;

.field mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field mSpinner:Landroid/widget/Spinner;

.field mStyledText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lio/appium/android/apis/content/ClipboardSample$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/ClipboardSample$1;-><init>(Lio/appium/android/apis/content/ClipboardSample;)V

    iput-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    .line 63
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->setContentView(I)V

    .line 67
    const v2, 0x7f0c00f4

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mStyledText:Ljava/lang/CharSequence;

    .line 68
    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mStyledText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mStyledText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mPlainText:Ljava/lang/String;

    .line 72
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 73
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mPlainText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v2, "<b>Link:</b> <a href=\"http://www.android.com\">Android</a>"

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mHtmlText:Ljava/lang/String;

    .line 76
    const-string v2, "Link: http://www.android.com"

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mHtmlPlainText:Ljava/lang/String;

    .line 77
    const v2, 0x7f09005a

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    .line 81
    const v2, 0x7f080002

    const v3, 0x1090008

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 83
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 84
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lio/appium/android/apis/content/ClipboardSample$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/content/ClipboardSample$2;-><init>(Lio/appium/android/apis/content/ClipboardSample;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mMimeTypes:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f09005f

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v3, p0, Lio/appium/android/apis/content/ClipboardSample;->mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ClipboardSample;->updateClipData(Z)V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lio/appium/android/apis/content/ClipboardSample;->mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 106
    return-void
.end method

.method public pasteHtmlText(Landroid/view/View;)V
    .locals 4
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    const-string v1, "HTML Text"

    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mHtmlPlainText:Ljava/lang/String;

    iget-object v3, p0, Lio/appium/android/apis/content/ClipboardSample;->mHtmlText:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 118
    return-void
.end method

.method public pasteIntent(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.android.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    const-string v2, "VIEW intent"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 123
    return-void
.end method

.method public pastePlainText(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    const-string v1, "Styled Text"

    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mPlainText:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 114
    return-void
.end method

.method public pasteStyledText(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    const-string v1, "Styled Text"

    iget-object v2, p0, Lio/appium/android/apis/content/ClipboardSample;->mStyledText:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 110
    return-void
.end method

.method public pasteUri(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    const-string v1, "URI"

    const-string v2, "http://www.android.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 127
    return-void
.end method

.method updateClipData(Z)V
    .locals 7
    .param p1, "updateType"    # Z

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 131
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    const-string v5, "*/*"

    invoke-virtual {v4, v5}, Landroid/content/ClipDescription;->filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "mimeTypes":[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    .line 133
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mMimeTypes:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 135
    if-lez v1, :cond_0

    .line 136
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mMimeTypes:Landroid/widget/TextView;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mMimeTypes:Landroid/widget/TextView;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "i":I
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 141
    .restart local v3    # "mimeTypes":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mMimeTypes:Landroid/widget/TextView;

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_3
    if-eqz p1, :cond_4

    .line 145
    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 147
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 148
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 163
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_4
    :goto_2
    if-eqz v0, :cond_a

    .line 164
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 165
    .restart local v2    # "item":Landroid/content/ClipData$Item;
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 191
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :goto_3
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 198
    return-void

    .line 149
    .restart local v2    # "item":Landroid/content/ClipData$Item;
    :cond_5
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 150
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 152
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 154
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 156
    :cond_8
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 159
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_9
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 167
    .restart local v2    # "item":Landroid/content/ClipData$Item;
    :pswitch_0
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    const-string v5, "(No data)"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 170
    :pswitch_1
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 173
    :pswitch_2
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 176
    :pswitch_3
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 179
    :pswitch_4
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 182
    :pswitch_5
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 185
    :pswitch_6
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 188
    :pswitch_7
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/content/ClipData$Item;->coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 195
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_a
    iget-object v4, p0, Lio/appium/android/apis/content/ClipboardSample;->mDataText:Landroid/widget/TextView;

    const-string v5, "(NULL clip)"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
