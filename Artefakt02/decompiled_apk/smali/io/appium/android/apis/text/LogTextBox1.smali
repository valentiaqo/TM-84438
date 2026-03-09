.class public Lio/appium/android/apis/text/LogTextBox1;
.super Landroid/app/Activity;
.source "LogTextBox1.java"


# instance fields
.field private mText:Lio/appium/android/apis/text/LogTextBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/text/LogTextBox1;)Lio/appium/android/apis/text/LogTextBox;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/text/LogTextBox1;

    .prologue
    .line 31
    iget-object v0, p0, Lio/appium/android/apis/text/LogTextBox1;->mText:Lio/appium/android/apis/text/LogTextBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f03008b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/text/LogTextBox1;->setContentView(I)V

    .line 41
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/text/LogTextBox1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/text/LogTextBox;

    iput-object v1, p0, Lio/appium/android/apis/text/LogTextBox1;->mText:Lio/appium/android/apis/text/LogTextBox;

    .line 43
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lio/appium/android/apis/text/LogTextBox1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "addButton":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/text/LogTextBox1$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/text/LogTextBox1$1;-><init>(Lio/appium/android/apis/text/LogTextBox1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
