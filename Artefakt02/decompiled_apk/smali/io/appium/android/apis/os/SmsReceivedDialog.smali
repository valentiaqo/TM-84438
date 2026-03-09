.class public Lio/appium/android/apis/os/SmsReceivedDialog;
.super Landroid/app/Activity;
.source "SmsReceivedDialog.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final DIALOG_SHOW_MESSAGE:I = 0x1

.field public static final SMS_FROM_ADDRESS_EXTRA:Ljava/lang/String; = "io.appium.android.apis.os.SMS_FROM_ADDRESS"

.field public static final SMS_FROM_DISPLAY_NAME_EXTRA:Ljava/lang/String; = "io.appium.android.apis.os.SMS_FROM_DISPLAY_NAME"

.field public static final SMS_MESSAGE_EXTRA:Ljava/lang/String; = "io.appium.android.apis.os.SMS_MESSAGE"

.field private static final TAG:Ljava/lang/String; = "SmsReceivedDialog"


# instance fields
.field private mFromAddress:Ljava/lang/String;

.field private mFromDisplayName:Ljava/lang/String;

.field private mFullBodyString:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/os/SmsReceivedDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/os/SmsReceivedDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFromAddress:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "io.appium.android.apis.os.SMS_FROM_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFromAddress:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "io.appium.android.apis.os.SMS_FROM_DISPLAY_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFromDisplayName:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "io.appium.android.apis.os.SMS_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mMessage:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsReceivedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFromDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mMessage:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFullBodyString:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v4}, Lio/appium/android/apis/os/SmsReceivedDialog;->showDialog(I)V

    .line 63
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Message Received"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFullBodyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0395

    new-instance v2, Lio/appium/android/apis/os/SmsReceivedDialog$3;

    invoke-direct {v2, p0}, Lio/appium/android/apis/os/SmsReceivedDialog$3;-><init>(Lio/appium/android/apis/os/SmsReceivedDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0396

    new-instance v2, Lio/appium/android/apis/os/SmsReceivedDialog$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/os/SmsReceivedDialog$2;-><init>(Lio/appium/android/apis/os/SmsReceivedDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/os/SmsReceivedDialog$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/os/SmsReceivedDialog$1;-><init>(Lio/appium/android/apis/os/SmsReceivedDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onInit(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 67
    if-nez p1, :cond_2

    .line 68
    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 69
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 71
    :cond_0
    const-string v1, "SmsReceivedDialog"

    const-string v2, "TTS language is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "result":I
    :goto_0
    return-void

    .line 73
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lio/appium/android/apis/os/SmsReceivedDialog;->mFullBodyString:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 77
    .end local v0    # "result":I
    :cond_2
    const-string v1, "SmsReceivedDialog"

    const-string v2, "Could not initialize TTS."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
