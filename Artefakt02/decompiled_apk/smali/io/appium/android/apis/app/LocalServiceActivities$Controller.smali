.class public Lio/appium/android/apis/app/LocalServiceActivities$Controller;
.super Landroid/app/Activity;
.source "LocalServiceActivities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalServiceActivities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation


# instance fields
.field private mStartListener:Landroid/view/View$OnClickListener;

.field private mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalServiceActivities$Controller$1;-><init>(Lio/appium/android/apis/app/LocalServiceActivities$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->mStartListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lio/appium/android/apis/app/LocalServiceActivities$Controller$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalServiceActivities$Controller$2;-><init>(Lio/appium/android/apis/app/LocalServiceActivities$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f03008a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->setContentView(I)V

    .line 51
    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 54
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
