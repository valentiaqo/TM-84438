.class public Lio/appium/android/apis/view/ImageButton1;
.super Landroid/app/Activity;
.source "ImageButton1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageButton1;->setContentView(I)V

    .line 32
    return-void
.end method
