.class public Lio/appium/android/apis/view/DateWidgets2;
.super Landroid/app/Activity;
.source "DateWidgets2.java"


# instance fields
.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/DateWidgets2;II)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets2;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/view/DateWidgets2;->updateDisplay(II)V

    return-void
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 62
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 65
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

.method private updateDisplay(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets2;->mTimeDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lio/appium/android/apis/view/DateWidgets2;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/appium/android/apis/view/DateWidgets2;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xf

    const/16 v2, 0xc

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030038

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/DateWidgets2;->setContentView(I)V

    .line 38
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/DateWidgets2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 39
    .local v0, "timePicker":Landroid/widget/TimePicker;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 42
    const v1, 0x7f090073

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/DateWidgets2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/DateWidgets2;->mTimeDisplay:Landroid/widget/TextView;

    .line 44
    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/view/DateWidgets2;->updateDisplay(II)V

    .line 46
    new-instance v1, Lio/appium/android/apis/view/DateWidgets2$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/DateWidgets2$1;-><init>(Lio/appium/android/apis/view/DateWidgets2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 52
    return-void
.end method
