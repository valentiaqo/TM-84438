.class Lio/appium/android/apis/app/AlarmController$1;
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
    .line 84
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 91
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-class v5, Lio/appium/android/apis/app/OneShotAlarm;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 96
    .local v3, "sender":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 97
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 98
    const/16 v4, 0xd

    const/16 v5, 0x1e

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 101
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lio/appium/android/apis/app/AlarmController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 102
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 105
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v4, v4, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v4, v4, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 108
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v5, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    const v6, 0x7f0c00bd

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, v4, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    .line 110
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmController$1;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v4, v4, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method
