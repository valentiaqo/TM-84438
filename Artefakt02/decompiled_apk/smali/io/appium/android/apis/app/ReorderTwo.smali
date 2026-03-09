.class public Lio/appium/android/apis/app/ReorderTwo;
.super Landroid/app/Activity;
.source "ReorderTwo.java"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lio/appium/android/apis/app/ReorderTwo$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ReorderTwo$1;-><init>(Lio/appium/android/apis/app/ReorderTwo;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ReorderTwo;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f0300b1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ReorderTwo;->setContentView(I)V

    .line 35
    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ReorderTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, "twoButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ReorderTwo;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
