.class Lio/appium/android/apis/os/SmsMessagingDemo$2;
.super Ljava/lang/Object;
.source "SmsMessagingDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/os/SmsMessagingDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

.field final synthetic val$contentTextEdit:Landroid/widget/EditText;

.field final synthetic val$recipientTextEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    iput-object p2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 98
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    const-string v4, "Please enter a message recipient."

    invoke-static {v2, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    const-string v4, "Please enter a message body."

    invoke-static {v2, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 111
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 113
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 115
    .local v0, "sms":Landroid/telephony/SmsManager;
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 117
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "recipient":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    new-instance v5, Landroid/content/Intent;

    const-string v8, "io.appium.android.apis.os.SMS_SENT_ACTION"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method
