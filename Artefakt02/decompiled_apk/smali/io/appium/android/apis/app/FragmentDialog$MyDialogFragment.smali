.class public Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;
.super Landroid/app/DialogFragment;
.source "FragmentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDialogFragment"
.end annotation


# instance fields
.field mNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(I)Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 110
    new-instance v1, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;

    invoke-direct {v1}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;-><init>()V

    .line 113
    .local v1, "f":Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 117
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->mNum:I

    .line 126
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 127
    .local v1, "theme":I
    iget v2, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 137
    :goto_0
    iget v2, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 144
    :goto_1
    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->setStyle(II)V

    .line 145
    return-void

    .line 128
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 130
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 131
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 135
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 139
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 140
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 141
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 142
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 137
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const v3, 0x7f03004a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "tv":Landroid/view/View;
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "tv":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->mNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": using style "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->mNum:I

    invoke-static {v4}, Lio/appium/android/apis/app/FragmentDialog;->getNameForNum(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 157
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment$1;-><init>(Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-object v2
.end method
