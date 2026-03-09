.class Lio/appium/android/apis/app/AlarmController$3;
.super Ljava/lang/Object;
.source "AlarmController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmController;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmController;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 150
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-class v4, Lio/appium/android/apis/app/RepeatingAlarm;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 155
    .local v2, "sender":Landroid/app/PendingIntent;
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Lio/appium/android/apis/app/AlarmController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 156
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 162
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    const v5, 0x7f0c00bf

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    .line 164
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$3;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method
