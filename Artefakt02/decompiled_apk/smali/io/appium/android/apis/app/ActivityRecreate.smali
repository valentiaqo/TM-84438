.class public Lio/appium/android/apis/app/ActivityRecreate;
.super Landroid/app/Activity;
.source "ActivityRecreate.java"


# instance fields
.field mCurTheme:I

.field private mRecreateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lio/appium/android/apis/app/ActivityRecreate$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ActivityRecreate$1;-><init>(Lio/appium/android/apis/app/ActivityRecreate;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ActivityRecreate;->mRecreateListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v1, "theme"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    .line 38
    iget v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    packed-switch v1, :pswitch_data_0

    .line 46
    const v1, 0x103006e

    iput v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    .line 49
    :goto_0
    iget v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActivityRecreate;->setTheme(I)V

    .line 52
    :cond_0
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActivityRecreate;->setContentView(I)V

    .line 55
    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActivityRecreate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mRecreateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void

    .line 40
    .end local v0    # "button":Landroid/widget/Button;
    :pswitch_0
    const v1, 0x103006f

    iput v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    goto :goto_0

    .line 43
    :pswitch_1
    const v1, 0x103006b

    iput v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x103006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "theme"

    iget v1, p0, Lio/appium/android/apis/app/ActivityRecreate;->mCurTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    return-void
.end method
