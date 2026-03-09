.class public Lio/appium/android/apis/app/ForegroundService$Controller;
.super Landroid/app/Activity;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation


# instance fields
.field private mBackgroundListener:Landroid/view/View$OnClickListener;

.field private mForegroundListener:Landroid/view/View$OnClickListener;

.field private mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 217
    new-instance v0, Lio/appium/android/apis/app/ForegroundService$Controller$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ForegroundService$Controller$1;-><init>(Lio/appium/android/apis/app/ForegroundService$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mForegroundListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lio/appium/android/apis/app/ForegroundService$Controller$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ForegroundService$Controller$2;-><init>(Lio/appium/android/apis/app/ForegroundService$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mBackgroundListener:Landroid/view/View$OnClickListener;

    .line 233
    new-instance v0, Lio/appium/android/apis/app/ForegroundService$Controller$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ForegroundService$Controller$3;-><init>(Lio/appium/android/apis/app/ForegroundService$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const v1, 0x7f030044

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService$Controller;->setContentView(I)V

    .line 209
    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mForegroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 212
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mBackgroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 214
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method
