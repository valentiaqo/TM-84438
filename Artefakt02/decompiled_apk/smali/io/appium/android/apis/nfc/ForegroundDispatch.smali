.class public Lio/appium/android/apis/nfc/ForegroundDispatch;
.super Landroid/app/Activity;
.source "ForegroundDispatch.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mCount:I

.field private mFilters:[Landroid/content/IntentFilter;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mTechLists:[[Ljava/lang/String;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030043

    invoke-virtual {p0, v2}, Lio/appium/android/apis/nfc/ForegroundDispatch;->setContentView(I)V

    .line 49
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/nfc/ForegroundDispatch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    .line 50
    iget-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    const-string v3, "Scan a tag"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mPendingIntent:Landroid/app/PendingIntent;

    .line 61
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "ndef":Landroid/content/IntentFilter;
    :try_start_0
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    new-array v2, v4, [Landroid/content/IntentFilter;

    aput-object v1, v2, v5

    iput-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mFilters:[Landroid/content/IntentFilter;

    .line 72
    new-array v2, v4, [[Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const-class v4, Landroid/nfc/tech/NfcF;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    iput-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mTechLists:[[Ljava/lang/String;

    .line 73
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "fail"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string v0, "Foreground dispatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered tag with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mFilters:[Landroid/content/IntentFilter;

    iget-object v3, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
