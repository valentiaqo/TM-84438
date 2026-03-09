.class Lio/appium/android/apis/app/MessengerService$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MessengerService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MessengerService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lio/appium/android/apis/app/MessengerService;->mValue:I

    .line 96
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v5, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget v5, v5, Lio/appium/android/apis/app/MessengerService;->mValue:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
