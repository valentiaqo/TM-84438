.class Lio/appium/android/apis/accessibility/ClockBackService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 272
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private provideScreenStateChangeFeedback(I)V
    .locals 4
    .param p1, "feedbackIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget v1, v1, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    packed-switch v1, :pswitch_data_0

    .line 311
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected feedback type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget v3, v3, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v1, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$600(Lio/appium/android/apis/accessibility/ClockBackService;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "utterance":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v1, v1, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 309
    .end local v0    # "utterance":Ljava/lang/String;
    :goto_0
    return-void

    .line 305
    :pswitch_2
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v1, v1, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v1, v1, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "ringerMode":I
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v2, v1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$500(Lio/appium/android/apis/accessibility/ClockBackService;I)V

    .line 288
    .end local v1    # "ringerMode":I
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    const/16 v2, 0x100

    invoke-direct {p0, v2}, Lio/appium/android/apis/accessibility/ClockBackService$2;->provideScreenStateChangeFeedback(I)V

    goto :goto_0

    .line 283
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lio/appium/android/apis/accessibility/ClockBackService$2;->provideScreenStateChangeFeedback(I)V

    goto :goto_0

    .line 286
    :cond_2
    const-string v2, "ClockBackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registered for but not handling action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
