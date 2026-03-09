.class Lio/appium/android/apis/app/RemoteService$3;
.super Landroid/os/Handler;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v3, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget v4, v3, Lio/appium/android/apis/app/RemoteService;->mValue:I

    add-int/lit8 v2, v4, 0x1

    iput v2, v3, Lio/appium/android/apis/app/RemoteService;->mValue:I

    .line 159
    .local v2, "value":I
    iget-object v3, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v3, v3, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 160
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 162
    :try_start_0
    iget-object v3, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v3, v3, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/app/IRemoteServiceCallback;

    invoke-interface {v3, v2}, Lio/appium/android/apis/app/IRemoteServiceCallback;->valueChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v3, v3, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 171
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/RemoteService$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lio/appium/android/apis/app/RemoteService$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    goto :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
