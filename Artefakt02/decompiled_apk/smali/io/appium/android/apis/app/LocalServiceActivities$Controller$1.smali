.class Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;
.super Ljava/lang/Object;
.source "LocalServiceActivities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalServiceActivities$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalServiceActivities$Controller;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LocalServiceActivities$Controller;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Controller;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Controller;

    const-class v3, Lio/appium/android/apis/app/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method
