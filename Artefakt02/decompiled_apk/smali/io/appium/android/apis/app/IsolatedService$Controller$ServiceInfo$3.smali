.class Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;
.super Ljava/lang/Object;
.source "IsolatedService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 146
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-boolean v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v2, v2, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v3, v3, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mClz:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-static {v2}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->access$000(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iput-boolean v4, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStatus:Landroid/widget/TextView;

    const-string v1, "BOUND"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-boolean v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-static {v1}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->access$000(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 157
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    .line 158
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
