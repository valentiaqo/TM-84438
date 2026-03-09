.class public Lio/appium/android/apis/app/ReceiveResult;
.super Landroid/app/Activity;
.source "ReceiveResult.java"


# static fields
.field private static final GET_CODE:I


# instance fields
.field private mGetListener:Landroid/view/View$OnClickListener;

.field private mResults:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    new-instance v0, Lio/appium/android/apis/app/ReceiveResult$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ReceiveResult$1;-><init>(Lio/appium/android/apis/app/ReceiveResult;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ReceiveResult;->mGetListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 116
    iget-object v1, p0, Lio/appium/android/apis/app/ReceiveResult;->mResults:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 121
    .local v0, "text":Landroid/text/Editable;
    if-nez p2, :cond_2

    .line 122
    const-string v1, "(cancelled)"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 135
    :cond_0
    :goto_0
    const-string v1, "\n"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 137
    .end local v0    # "text":Landroid/text/Editable;
    :cond_1
    return-void

    .line 127
    .restart local v0    # "text":Landroid/text/Editable;
    :cond_2
    const-string v1, "(okay "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 129
    const-string v1, ") "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 130
    if-eqz p3, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v1, 0x7f0300a5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ReceiveResult;->setContentView(I)V

    .line 88
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ReceiveResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/app/ReceiveResult;->mResults:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lio/appium/android/apis/app/ReceiveResult;->mResults:Landroid/widget/TextView;

    iget-object v2, p0, Lio/appium/android/apis/app/ReceiveResult;->mResults:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 94
    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ReceiveResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, "getButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ReceiveResult;->mGetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
