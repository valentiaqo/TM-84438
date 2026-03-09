.class public Lio/appium/android/apis/app/TextToSpeechActivity;
.super Landroid/app/Activity;
.source "TextToSpeechActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final HELLOS:[Ljava/lang/String;

.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "TextToSpeechDemo"


# instance fields
.field private mAgainButton:Landroid/widget/Button;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/appium/android/apis/app/TextToSpeechActivity;->RANDOM:Ljava/util/Random;

    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Hello"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Salutations"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Greetings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Howdy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "What\'s crack-a-lackin?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "That explains the stench!"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/app/TextToSpeechActivity;->HELLOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/TextToSpeechActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/TextToSpeechActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lio/appium/android/apis/app/TextToSpeechActivity;->sayHello()V

    return-void
.end method

.method private sayHello()V
    .locals 5

    .prologue
    .line 129
    sget-object v2, Lio/appium/android/apis/app/TextToSpeechActivity;->HELLOS:[Ljava/lang/String;

    array-length v1, v2

    .line 130
    .local v1, "helloLength":I
    sget-object v2, Lio/appium/android/apis/app/TextToSpeechActivity;->HELLOS:[Ljava/lang/String;

    sget-object v3, Lio/appium/android/apis/app/TextToSpeechActivity;->RANDOM:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 131
    .local v0, "hello":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 134
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0300ef

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/TextToSpeechActivity;->setContentView(I)V

    .line 61
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 67
    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/TextToSpeechActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mAgainButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mAgainButton:Landroid/widget/Button;

    new-instance v1, Lio/appium/android/apis/app/TextToSpeechActivity$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/TextToSpeechActivity$1;-><init>(Lio/appium/android/apis/app/TextToSpeechActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 90
    if-nez p1, :cond_2

    .line 93
    iget-object v1, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 96
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    const-string v1, "TextToSpeechDemo"

    const-string v2, "Language is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "result":I
    :goto_0
    return-void

    .line 107
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/TextToSpeechActivity;->mAgainButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lio/appium/android/apis/app/TextToSpeechActivity;->sayHello()V

    goto :goto_0

    .line 113
    .end local v0    # "result":I
    :cond_2
    const-string v1, "TextToSpeechDemo"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
