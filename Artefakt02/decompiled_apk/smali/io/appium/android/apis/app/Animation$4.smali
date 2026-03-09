.class Lio/appium/android/apis/app/Animation$4;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/Animation;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/Animation;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lio/appium/android/apis/app/Animation$4;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f04001a

    .line 112
    iget-object v1, p0, Lio/appium/android/apis/app/Animation$4;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-static {v1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 115
    .local v0, "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lio/appium/android/apis/app/Animation$4;->this$0:Lio/appium/android/apis/app/Animation;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lio/appium/android/apis/app/Animation$4;->this$0:Lio/appium/android/apis/app/Animation;

    const-class v4, Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/appium/android/apis/app/Animation;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method
