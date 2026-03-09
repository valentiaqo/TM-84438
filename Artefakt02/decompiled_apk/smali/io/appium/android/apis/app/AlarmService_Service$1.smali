.class Lio/appium/android/apis/app/AlarmService_Service$1;
.super Ljava/lang/Object;
.source "AlarmService_Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmService_Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmService_Service;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmService_Service;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long v0, v2, v4

    .line 76
    .local v0, "endTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 77
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-static {v2}, Lio/appium/android/apis/app/AlarmService_Service;->access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;

    move-result-object v3

    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-static {v2}, Lio/appium/android/apis/app/AlarmService_Service;->access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 86
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-virtual {v2}, Lio/appium/android/apis/app/AlarmService_Service;->stopSelf()V

    .line 87
    return-void

    .line 80
    :catch_0
    move-exception v2

    goto :goto_1
.end method
