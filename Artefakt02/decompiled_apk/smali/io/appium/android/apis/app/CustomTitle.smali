.class public Lio/appium/android/apis/app/CustomTitle;
.super Landroid/app/Activity;
.source "CustomTitle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x7

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, v8}, Lio/appium/android/apis/app/CustomTitle;->requestWindowFeature(I)Z

    .line 64
    const v6, 0x7f030033

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lio/appium/android/apis/app/CustomTitle;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f030034

    invoke-virtual {v6, v8, v7}, Landroid/view/Window;->setFeatureInt(II)V

    .line 67
    const v6, 0x7f090071

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "leftText":Landroid/widget/TextView;
    const v6, 0x7f090072

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 69
    .local v4, "rightText":Landroid/widget/TextView;
    const v6, 0x7f09006d

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 70
    .local v2, "leftTextEdit":Landroid/widget/EditText;
    const v6, 0x7f09006f

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 71
    .local v5, "rightTextEdit":Landroid/widget/EditText;
    const v6, 0x7f09006e

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    .local v0, "leftButton":Landroid/widget/Button;
    const v6, 0x7f090070

    invoke-virtual {p0, v6}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 74
    .local v3, "rightButton":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/app/CustomTitle$1;

    invoke-direct {v6, p0, v1, v2}, Lio/appium/android/apis/app/CustomTitle$1;-><init>(Lio/appium/android/apis/app/CustomTitle;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v6, Lio/appium/android/apis/app/CustomTitle$2;

    invoke-direct {v6, p0, v4, v5}, Lio/appium/android/apis/app/CustomTitle$2;-><init>(Lio/appium/android/apis/app/CustomTitle;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
