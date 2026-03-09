.class public Lio/appium/android/apis/view/DateWidgets1;
.super Landroid/app/Activity;
.source "DateWidgets1.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x1

.field static final TIME_DIALOG_ID:I


# instance fields
.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    new-instance v0, Lio/appium/android/apis/view/DateWidgets1$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/DateWidgets1$3;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 140
    new-instance v0, Lio/appium/android/apis/view/DateWidgets1$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/DateWidgets1$4;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    return p1
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/DateWidgets1;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;

    .prologue
    .line 42
    invoke-direct {p0}, Lio/appium/android/apis/view/DateWidgets1;->updateDisplay()V

    return-void
.end method

.method static synthetic access$402(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    return p1
.end method

.method static synthetic access$502(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    return p1
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 151
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 152
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDisplay()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    invoke-static {v2}, Lio/appium/android/apis/view/DateWidgets1;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    invoke-static {v2}, Lio/appium/android/apis/view/DateWidgets1;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f030037

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/DateWidgets1;->setContentView(I)V

    .line 63
    const v3, 0x7f090073

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateDisplay:Landroid/widget/TextView;

    .line 65
    const v3, 0x7f090074

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, "pickDate":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/view/DateWidgets1$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/DateWidgets1$1;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f090075

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 74
    .local v2, "pickTime":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/view/DateWidgets1$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/DateWidgets1$2;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    .line 84
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    .line 85
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    .line 86
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    .line 88
    invoke-direct {p0}, Lio/appium/android/apis/view/DateWidgets1;->updateDisplay()V

    .line 89
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v4, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    iget v4, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    iget v5, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 115
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 109
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 112
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    iget v1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
