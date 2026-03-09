.class public Lio/appium/android/apis/view/ProgressBar3;
.super Landroid/app/Activity;
.source "ProgressBar3.java"


# static fields
.field private static final DIALOG1_KEY:I = 0x0

.field private static final DIALOG2_KEY:I = 0x1


# instance fields
.field mDialog1:Landroid/app/ProgressDialog;

.field mDialog2:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f03009f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ProgressBar3;->setContentView(I)V

    .line 48
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ProgressBar3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/ProgressBar3$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/ProgressBar3$1;-><init>(Lio/appium/android/apis/view/ProgressBar3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f09010f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ProgressBar3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 56
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/ProgressBar3$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/ProgressBar3$2;-><init>(Lio/appium/android/apis/view/ProgressBar3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const-string v1, "Indeterminate"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const-string v1, "Please wait while loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 75
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    const-string v1, "Please wait while loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
