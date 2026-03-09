.class public Lio/appium/android/apis/app/AlarmController;
.super Landroid/app/Activity;
.source "AlarmController.java"


# instance fields
.field private mOneShotListener:Landroid/view/View$OnClickListener;

.field private mStartRepeatingListener:Landroid/view/View$OnClickListener;

.field private mStopRepeatingListener:Landroid/view/View$OnClickListener;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Lio/appium/android/apis/app/AlarmController$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmController$1;-><init>(Lio/appium/android/apis/app/AlarmController;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmController;->mOneShotListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lio/appium/android/apis/app/AlarmController$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmController$2;-><init>(Lio/appium/android/apis/app/AlarmController;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmController;->mStartRepeatingListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lio/appium/android/apis/app/AlarmController$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmController$3;-><init>(Lio/appium/android/apis/app/AlarmController;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmController;->mStopRepeatingListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmController;->setContentView(I)V

    .line 76
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmController;->mOneShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 79
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmController;->mStartRepeatingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 81
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmController;->mStopRepeatingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
