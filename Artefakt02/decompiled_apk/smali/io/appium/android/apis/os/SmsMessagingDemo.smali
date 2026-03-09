.class public Lio/appium/android/apis/os/SmsMessagingDemo;
.super Landroid/app/Activity;
.source "SmsMessagingDemo.java"


# static fields
.field public static final ACTION_SMS_SENT:Ljava/lang/String; = "io.appium.android.apis.os.SMS_SENT_ACTION"

.field public static final SMS_RECIPIENT_EXTRA:Ljava/lang/String; = "io.appium.android.apis.os.SMS_RECIPIENT"

.field private static final TAG:Ljava/lang/String; = "SmsMessagingDemo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f09015d

    const v11, 0x7f09015c

    const/4 v8, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v7, 0x7f0300d4

    invoke-virtual {p0, v7}, Lio/appium/android/apis/os/SmsMessagingDemo;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "io.appium.android.apis.os.SMS_RECIPIENT"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p0, v11}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "io.appium.android.apis.os.SMS_RECIPIENT"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v12}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 68
    :cond_0
    const v7, 0x7f09015b

    invoke-virtual {p0, v7}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 70
    .local v2, "enableCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "io.appium.android.apis"

    const-string v9, "io.appium.android.apis.os.SmsMessageReceiver"

    invoke-direct {v0, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    new-instance v7, Lio/appium/android/apis/os/SmsMessagingDemo$1;

    invoke-direct {v7, p0, v3, v0}, Lio/appium/android/apis/os/SmsMessagingDemo$1;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    invoke-virtual {p0, v11}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 90
    .local v4, "recipientTextEdit":Landroid/widget/EditText;
    invoke-virtual {p0, v12}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 92
    .local v1, "contentTextEdit":Landroid/widget/EditText;
    const v7, 0x7f09015f

    invoke-virtual {p0, v7}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "statusView":Landroid/widget/TextView;
    const v7, 0x7f09015e

    invoke-virtual {p0, v7}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 96
    .local v5, "sendButton":Landroid/widget/Button;
    new-instance v7, Lio/appium/android/apis/os/SmsMessagingDemo$2;

    invoke-direct {v7, p0, v4, v1}, Lio/appium/android/apis/os/SmsMessagingDemo$2;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v7, Lio/appium/android/apis/os/SmsMessagingDemo$3;

    invoke-direct {v7, p0, v4, v1, v6}, Lio/appium/android/apis/os/SmsMessagingDemo$3;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "io.appium.android.apis.os.SMS_SENT_ACTION"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lio/appium/android/apis/os/SmsMessagingDemo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void

    .line 74
    .end local v1    # "contentTextEdit":Landroid/widget/EditText;
    .end local v4    # "recipientTextEdit":Landroid/widget/EditText;
    .end local v5    # "sendButton":Landroid/widget/Button;
    .end local v6    # "statusView":Landroid/widget/TextView;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
