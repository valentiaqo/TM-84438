.class public Lio/appium/android/apis/os/SmsMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 35
    .local v8, "extras":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v0, "pdus"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/Object;

    .line 40
    .local v13, "pdus":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v0, v13

    if-ge v11, v0, :cond_0

    .line 41
    aget-object v0, v13, v11

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    .line 42
    .local v12, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "fromAddress":Ljava/lang/String;
    move-object v10, v9

    .line 51
    .local v10, "fromDisplayName":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    .line 57
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v7, "di":Landroid/content/Intent;
    const-class v0, Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v7, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    const/high16 v0, 0x30000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v0, "io.appium.android.apis.os.SMS_FROM_ADDRESS"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v0, "io.appium.android.apis.os.SMS_FROM_DISPLAY_NAME"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v0, "io.appium.android.apis.os.SMS_MESSAGE"

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
