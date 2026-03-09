.class Lio/appium/android/apis/accessibility/ClockBackService$1;
.super Landroid/os/Handler;
.source "ClockBackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/ClockBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/ClockBackService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/accessibility/ClockBackService;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 227
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 230
    .local v3, "utterance":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 233
    .end local v3    # "utterance":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    new-instance v5, Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v6, v6, Lio/appium/android/apis/accessibility/ClockBackService;->mContext:Landroid/content/Context;

    new-instance v7, Lio/appium/android/apis/accessibility/ClockBackService$1$1;

    invoke-direct {v7, p0}, Lio/appium/android/apis/accessibility/ClockBackService$1$1;-><init>(Lio/appium/android/apis/accessibility/ClockBackService$1;)V

    invoke-direct {v5, v6, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v4, v5}, Lio/appium/android/apis/accessibility/ClockBackService;->access$002(Lio/appium/android/apis/accessibility/ClockBackService;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    goto :goto_0

    .line 248
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 249
    .local v2, "resourceId":I
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4, v2}, Lio/appium/android/apis/accessibility/ClockBackService;->access$200(Lio/appium/android/apis/accessibility/ClockBackService;I)V

    goto :goto_0

    .line 252
    .end local v2    # "resourceId":I
    :pswitch_5
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0

    .line 255
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 256
    .local v0, "key":I
    invoke-static {}, Lio/appium/android/apis/accessibility/ClockBackService;->access$300()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 257
    .local v1, "pattern":[J
    if-eqz v1, :cond_0

    .line 258
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$400(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/os/Vibrator;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 262
    .end local v0    # "key":I
    .end local v1    # "pattern":[J
    :pswitch_7
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v4}, Lio/appium/android/apis/accessibility/ClockBackService;->access$400(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
