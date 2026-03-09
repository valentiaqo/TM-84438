.class Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerServiceActivities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerServiceActivities$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received from service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
