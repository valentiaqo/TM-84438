.class public Lio/appium/android/apis/app/AlertDialogSamples;
.super Landroid/app/Activity;
.source "AlertDialogSamples.java"


# static fields
.field private static final DIALOG_LIST:I = 0x3

.field private static final DIALOG_MULTIPLE_CHOICE:I = 0x6

.field private static final DIALOG_MULTIPLE_CHOICE_CURSOR:I = 0x8

.field private static final DIALOG_PROGRESS:I = 0x4

.field private static final DIALOG_SINGLE_CHOICE:I = 0x5

.field private static final DIALOG_TEXT_ENTRY:I = 0x7

.field private static final DIALOG_YES_NO_HOLO_LIGHT_MESSAGE:I = 0xb

.field private static final DIALOG_YES_NO_LONG_MESSAGE:I = 0x2

.field private static final DIALOG_YES_NO_MESSAGE:I = 0x1

.field private static final DIALOG_YES_NO_OLD_SCHOOL_MESSAGE:I = 0xa

.field private static final DIALOG_YES_NO_ULTRA_LONG_MESSAGE:I = 0x9

.field private static final MAX_PROGRESS:I = 0x64


# instance fields
.field private mProgress:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/AlertDialogSamples;)I
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .prologue
    .line 58
    iget v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgress:I

    return v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/app/AlertDialogSamples;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/AlertDialogSamples;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgress:I

    return p1
.end method

.method static synthetic access$008(Lio/appium/android/apis/app/AlertDialogSamples;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .prologue
    .line 58
    iget v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgress:I

    return v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/AlertDialogSamples;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .prologue
    .line 58
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/AlertDialogSamples;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .prologue
    .line 58
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 314
    const v11, 0x7f03000c

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->setContentView(I)V

    .line 317
    const v11, 0x7f090022

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 318
    .local v10, "twoButtonsTitle":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$25;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$25;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v11, 0x7f090023

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 326
    .local v6, "twoButtons2Title":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$26;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$26;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v11, 0x7f090024

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 335
    .local v7, "twoButtons2UltraTitle":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$27;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$27;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v11, 0x7f090025

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 344
    .local v4, "selectButton":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$28;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$28;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v11, 0x7f090026

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 352
    .local v2, "progressButton":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$29;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$29;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v11, 0x7f090027

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 363
    .local v3, "radioButton":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$30;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$30;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v11, 0x7f090028

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 371
    .local v0, "checkBox":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$31;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$31;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v11, 0x7f090029

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 379
    .local v1, "checkBox2":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$32;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$32;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v11, 0x7f09002a

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 387
    .local v5, "textEntry":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$33;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$33;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v11, 0x7f09002b

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 395
    .local v9, "twoButtonsOldSchoolTitle":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$34;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$34;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v11, 0x7f09002c

    invoke-virtual {p0, v11}, Lio/appium/android/apis/app/AlertDialogSamples;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 403
    .local v8, "twoButtonsHoloLightTitle":Landroid/widget/Button;
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$35;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$35;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v11, Lio/appium/android/apis/app/AlertDialogSamples$36;

    invoke-direct {v11, p0}, Lio/appium/android/apis/app/AlertDialogSamples$36;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    iput-object v11, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressHandler:Landroid/os/Handler;

    .line 422
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const v9, 0x7f0c0139

    const v4, 0x1010355

    const v5, 0x7f0c013c

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-object v3

    .line 81
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$2;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$1;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$4;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$4;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$3;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$3;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 111
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$6;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$6;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$5;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$5;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 124
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0137

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$9;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$9;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013b

    new-instance v3, Lio/appium/android/apis/app/AlertDialogSamples$8;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/AlertDialogSamples$8;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$7;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$7;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 148
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0138

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$12;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$12;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013b

    new-instance v3, Lio/appium/android/apis/app/AlertDialogSamples$11;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/AlertDialogSamples$11;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$10;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$10;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 172
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080004

    new-instance v3, Lio/appium/android/apis/app/AlertDialogSamples$13;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/AlertDialogSamples$13;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 186
    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 187
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 188
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 189
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 190
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 191
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v3, 0x7f0c013a

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/AlertDialogSamples;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lio/appium/android/apis/app/AlertDialogSamples$14;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/AlertDialogSamples$14;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/AlertDialogSamples;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lio/appium/android/apis/app/AlertDialogSamples$15;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/AlertDialogSamples$15;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    iget-object v3, p0, Lio/appium/android/apis/app/AlertDialogSamples;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 207
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080005

    const/4 v3, 0x0

    new-instance v4, Lio/appium/android/apis/app/AlertDialogSamples$18;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/AlertDialogSamples$18;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$17;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$17;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$16;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$16;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 230
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080006

    const/4 v3, 0x7

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    new-instance v4, Lio/appium/android/apis/app/AlertDialogSamples$21;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/AlertDialogSamples$21;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$20;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$20;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$19;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$19;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 258
    :pswitch_9
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "send_to_voicemail"

    aput-object v1, v2, v0

    .line 263
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lio/appium/android/apis/app/AlertDialogSamples;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0130

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    const-string v3, "display_name"

    new-instance v4, Lio/appium/android/apis/app/AlertDialogSamples$22;

    invoke-direct {v4, p0}, Lio/appium/android/apis/app/AlertDialogSamples$22;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v6, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 282
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 283
    .local v7, "factory":Landroid/view/LayoutInflater;
    const v0, 0x7f03000d

    invoke-virtual {v7, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 284
    .local v8, "textEntryView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$24;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$24;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/app/AlertDialogSamples$23;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/AlertDialogSamples$23;-><init>(Lio/appium/android/apis/app/AlertDialogSamples;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 230
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
