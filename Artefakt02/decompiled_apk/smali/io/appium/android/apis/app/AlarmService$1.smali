.class Lio/appium/android/apis/app/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 67
    .local v2, "firstTime":J
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Lio/appium/android/apis/app/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x2

    const-wide/16 v4, 0x7530

    iget-object v6, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    invoke-static {v6}, Lio/appium/android/apis/app/AlarmService;->access$000(Lio/appium/android/apis/app/AlarmService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    const v4, 0x7f0c00be

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method
