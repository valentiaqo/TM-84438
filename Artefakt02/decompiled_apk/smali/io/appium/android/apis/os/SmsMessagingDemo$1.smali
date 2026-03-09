.class Lio/appium/android/apis/os/SmsMessagingDemo$1;
.super Ljava/lang/Object;
.source "SmsMessagingDemo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    iput-object p2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 79
    const-string v2, "SmsMessagingDemo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "Enabling"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SMS receiver"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$componentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 85
    return-void

    .line 79
    :cond_0
    const-string v0, "Disabling"

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
