.class public Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;
.super Landroid/app/Fragment;
.source "FragmentReceiveResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentReceiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiveResultFragment"
.end annotation


# static fields
.field private static final GET_CODE:I


# instance fields
.field private mGetListener:Landroid/view/View$OnClickListener;

.field private mResults:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;-><init>(Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mGetListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 110
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mResults:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 115
    .local v0, "text":Landroid/text/Editable;
    if-nez p2, :cond_2

    .line 116
    const-string v1, "(cancelled)"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 129
    :cond_0
    :goto_0
    const-string v1, "\n"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 131
    .end local v0    # "text":Landroid/text/Editable;
    :cond_1
    return-void

    .line 121
    .restart local v0    # "text":Landroid/text/Editable;
    :cond_2
    const-string v1, "(okay "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 123
    const-string v1, ") "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 124
    if-eqz p3, :cond_0

    .line 125
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v2, 0x7f0300a5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mResults:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mResults:Landroid/widget/TextView;

    iget-object v3, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mResults:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 92
    const v2, 0x7f09011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, "getButton":Landroid/widget/Button;
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->mGetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
