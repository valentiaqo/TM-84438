.class public Lio/appium/android/apis/view/RadioGroup1;
.super Landroid/app/Activity;
.source "RadioGroup1.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChoice:Landroid/widget/TextView;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 65
    const v2, 0x7f0c0220

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "selection":Ljava/lang/String;
    const v2, 0x7f0c0221

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "none":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .end local v0    # "none":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .line 67
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v4, 0x7f0300a2

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RadioGroup1;->setContentView(I)V

    .line 42
    const v4, 0x7f090114

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 45
    new-instance v2, Landroid/widget/RadioButton;

    invoke-direct {v2, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 46
    .local v2, "newRadioButton":Landroid/widget/RadioButton;
    const v4, 0x7f0c021f

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 47
    const v4, 0x7f090003

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 48
    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 51
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const v4, 0x7f0c0220

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "selection":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 56
    const v4, 0x7f090118

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    .line 57
    iget-object v4, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v4, 0x7f0900b4

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "clearButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
