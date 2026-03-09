.class Lio/appium/android/apis/view/ProgressBar4$1;
.super Ljava/lang/Object;
.source "ProgressBar4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/ProgressBar4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ProgressBar4;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/ProgressBar4;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lio/appium/android/apis/view/ProgressBar4$1;->this$0:Lio/appium/android/apis/view/ProgressBar4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v1, p0, Lio/appium/android/apis/view/ProgressBar4$1;->this$0:Lio/appium/android/apis/view/ProgressBar4;

    iget-object v0, p0, Lio/appium/android/apis/view/ProgressBar4$1;->this$0:Lio/appium/android/apis/view/ProgressBar4;

    invoke-static {v0}, Lio/appium/android/apis/view/ProgressBar4;->access$000(Lio/appium/android/apis/view/ProgressBar4;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lio/appium/android/apis/view/ProgressBar4;->access$002(Lio/appium/android/apis/view/ProgressBar4;Z)Z

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/view/ProgressBar4$1;->this$0:Lio/appium/android/apis/view/ProgressBar4;

    iget-object v1, p0, Lio/appium/android/apis/view/ProgressBar4$1;->this$0:Lio/appium/android/apis/view/ProgressBar4;

    invoke-static {v1}, Lio/appium/android/apis/view/ProgressBar4;->access$000(Lio/appium/android/apis/view/ProgressBar4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/ProgressBar4;->setProgressBarIndeterminateVisibility(Z)V

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
