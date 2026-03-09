.class Lio/appium/android/apis/view/SecureView$3;
.super Ljava/lang/Object;
.source "SecureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/SecureView;->setTouchFilter(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SecureView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SecureView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lio/appium/android/apis/view/SecureView$3;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 130
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/appium/android/apis/view/SecureView$3;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c023c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c023d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/view/SecureView$3;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-virtual {v2}, Lio/appium/android/apis/view/SecureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
