.class public Lio/appium/android/apis/app/VoiceRecognition;
.super Landroid/app/Activity;
.source "VoiceRecognition.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/VoiceRecognition$1;,
        Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceRecognition"

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mSupportedLanguageView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/VoiceRecognition;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/VoiceRecognition;

    .prologue
    .line 47
    iget-object v0, p0, Lio/appium/android/apis/app/VoiceRecognition;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/VoiceRecognition;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/VoiceRecognition;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/VoiceRecognition;->updateSupportedLanguages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lio/appium/android/apis/app/VoiceRecognition;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/VoiceRecognition;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/VoiceRecognition;->updateLanguagePreference(Ljava/lang/String;)V

    return-void
.end method

.method private refreshVoiceSettings()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "VoiceRecognition"

    const-string v1, "Sending broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p0}, Landroid/speech/RecognizerIntent;->getVoiceDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    invoke-direct {v3, p0, v2}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;-><init>(Lio/appium/android/apis/app/VoiceRecognition;Lio/appium/android/apis/app/VoiceRecognition$1;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lio/appium/android/apis/app/VoiceRecognition;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, "Speech recognition demo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition;->mSupportedLanguageView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-string v1, "android.speech.extra.LANGUAGE"

    iget-object v2, p0, Lio/appium/android/apis/app/VoiceRecognition;->mSupportedLanguageView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_0
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/VoiceRecognition;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method private updateLanguagePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 167
    const v1, 0x7f090182

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/VoiceRecognition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method private updateSupportedLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "Default"

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 163
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition;->mSupportedLanguageView:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 141
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition;->mList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    .end local v0    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090180

    if-ne v0, v1, :cond_0

    .line 99
    invoke-direct {p0}, Lio/appium/android/apis/app/VoiceRecognition;->startVoiceRecognitionActivity()V

    .line 101
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lio/appium/android/apis/app/VoiceRecognition;->mHandler:Landroid/os/Handler;

    .line 68
    const v3, 0x7f0300f5

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/VoiceRecognition;->setContentView(I)V

    .line 71
    const v3, 0x7f090180

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/VoiceRecognition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 73
    .local v2, "speakButton":Landroid/widget/Button;
    const v3, 0x7f0900dd

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/VoiceRecognition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lio/appium/android/apis/app/VoiceRecognition;->mList:Landroid/widget/ListView;

    .line 75
    const v3, 0x7f090181

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/VoiceRecognition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lio/appium/android/apis/app/VoiceRecognition;->mSupportedLanguageView:Landroid/widget/Spinner;

    .line 78
    invoke-virtual {p0}, Lio/appium/android/apis/app/VoiceRecognition;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_0
    invoke-direct {p0}, Lio/appium/android/apis/app/VoiceRecognition;->refreshVoiceSettings()V

    .line 92
    return-void

    .line 84
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    const-string v3, "Recognizer not present"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
