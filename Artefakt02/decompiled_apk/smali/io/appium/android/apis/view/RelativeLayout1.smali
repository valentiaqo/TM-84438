.class public Lio/appium/android/apis/view/RelativeLayout1;
.super Landroid/app/Activity;
.source "RelativeLayout1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RelativeLayout1;->setContentView(I)V

    .line 36
    return-void
.end method
