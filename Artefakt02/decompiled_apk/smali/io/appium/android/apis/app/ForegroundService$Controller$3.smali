.class Lio/appium/android/apis/app/ForegroundService$Controller$3;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ForegroundService$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ForegroundService$Controller;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ForegroundService$Controller;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lio/appium/android/apis/app/ForegroundService$Controller$3;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService$Controller$3;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/appium/android/apis/app/ForegroundService$Controller$3;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    const-class v3, Lio/appium/android/apis/app/ForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ForegroundService$Controller;->stopService(Landroid/content/Intent;)Z

    .line 237
    return-void
.end method
