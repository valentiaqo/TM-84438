.class public Lio/appium/android/apis/app/FinishAffinity;
.super Landroid/app/Activity;
.source "FinishAffinity.java"


# instance fields
.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mNestListener:Landroid/view/View$OnClickListener;

.field mNesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lio/appium/android/apis/app/FinishAffinity$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FinishAffinity$1;-><init>(Lio/appium/android/apis/app/FinishAffinity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FinishAffinity;->mNestListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lio/appium/android/apis/app/FinishAffinity$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FinishAffinity$2;-><init>(Lio/appium/android/apis/app/FinishAffinity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FinishAffinity;->mFinishListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FinishAffinity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/app/FinishAffinity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nesting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lio/appium/android/apis/app/FinishAffinity;->mNesting:I

    .line 40
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current nesting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/appium/android/apis/app/FinishAffinity;->mNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity;->mNestListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f09001a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 46
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
