.class public Lio/appium/android/apis/accessibility/TaskBackService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "TaskBackService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskBackService/onAccessibilityEvent"

.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final TASK_LIST_VIEW_CLASS_NAME:Ljava/lang/String; = "io.appium.android.apis.accessibility.TaskListView"


# instance fields
.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method private getListItemNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "source"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 144
    move-object v0, p1

    .line 146
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 147
    .local v2, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 151
    .end local v0    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    return-object v0

    .line 150
    .restart local v0    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    const-string v3, "io.appium.android.apis.accessibility.TaskListView"

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    move-object v1, v0

    .line 155
    .local v1, "oldCurrent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v0, v2

    .line 156
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    if-nez v14, :cond_1

    .line 70
    const-string v14, "TaskBackService/onAccessibilityEvent"

    const-string v15, "Text-To-Speech engine not ready.  Bailing out."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 83
    .local v10, "source":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v10, :cond_0

    .line 88
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lio/appium/android/apis/accessibility/TaskBackService;->getListItemNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 89
    .local v9, "rowNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v9, :cond_0

    .line 94
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 95
    .local v6, "labelNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_2

    .line 96
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 101
    .local v1, "completeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_3

    .line 102
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v14

    if-nez v14, :cond_5

    .line 109
    :cond_4
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 114
    .local v11, "taskLabel":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    .line 116
    .local v5, "isComplete":Z
    const/4 v2, 0x0

    .line 117
    .local v2, "completeStr":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 118
    const v14, 0x7f0c03ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    :goto_1
    const v14, 0x7f0c03ab

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "taskStr":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v13, "utterance":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v8

    .line 129
    .local v8, "records":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v8, :cond_8

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v7

    .line 131
    .local v7, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 132
    .local v3, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 133
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    .end local v3    # "contentDescription":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v7    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v8    # "records":I
    .end local v12    # "taskStr":Ljava/lang/String;
    .end local v13    # "utterance":Ljava/lang/StringBuilder;
    :cond_7
    const v14, 0x7f0c03ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 139
    .restart local v4    # "i":I
    .restart local v8    # "records":I
    .restart local v12    # "taskStr":Ljava/lang/String;
    .restart local v13    # "utterance":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 140
    const-string v14, "TaskBackService/onAccessibilityEvent"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 187
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 190
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    .line 179
    :cond_0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/TaskBackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 61
    return-void
.end method
