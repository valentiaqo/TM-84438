.class public Lio/appium/android/apis/app/ServiceStartArguments$Controller;
.super Landroid/app/Activity;
.source "ServiceStartArguments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ServiceStartArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation


# instance fields
.field private mKillListener:Landroid/view/View$OnClickListener;

.field private mStart1Listener:Landroid/view/View$OnClickListener;

.field private mStart2Listener:Landroid/view/View$OnClickListener;

.field private mStart3Listener:Landroid/view/View$OnClickListener;

.field private mStartFailListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart1Listener:Landroid/view/View$OnClickListener;

    .line 237
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$2;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart2Listener:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$3;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart3Listener:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$4;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStartFailListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mKillListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v1, 0x7f0300d1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->setContentView(I)V

    .line 217
    const v1, 0x7f0900c8

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 218
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0900cc

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 220
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f090159

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 222
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart3Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v1, 0x7f09015a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 224
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStartFailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 226
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mKillListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method
