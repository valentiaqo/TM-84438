.class public Lio/appium/android/apis/view/Hover;
.super Landroid/app/Activity;
.source "Hover.java"


# instance fields
.field private mInterceptCheckBox:Landroid/widget/CheckBox;

.field private mInterceptor:Lio/appium/android/apis/view/HoverInterceptorView;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/Hover;

    .prologue
    .line 59
    iget-object v0, p0, Lio/appium/android/apis/view/Hover;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/Hover;)Lio/appium/android/apis/view/HoverInterceptorView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/Hover;

    .prologue
    .line 59
    iget-object v0, p0, Lio/appium/android/apis/view/Hover;->mInterceptor:Lio/appium/android/apis/view/HoverInterceptorView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f03005e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Hover;->setContentView(I)V

    .line 70
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Hover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/Hover;->mMessageTextView:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Hover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lio/appium/android/apis/view/Hover;->mInterceptCheckBox:Landroid/widget/CheckBox;

    .line 72
    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Hover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/view/HoverInterceptorView;

    iput-object v1, p0, Lio/appium/android/apis/view/Hover;->mInterceptor:Lio/appium/android/apis/view/HoverInterceptorView;

    .line 74
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Hover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "container":Landroid/view/View;
    new-instance v1, Lio/appium/android/apis/view/Hover$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/Hover$1;-><init>(Lio/appium/android/apis/view/Hover;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 99
    iget-object v1, p0, Lio/appium/android/apis/view/Hover;->mInterceptCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lio/appium/android/apis/view/Hover$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/Hover$2;-><init>(Lio/appium/android/apis/view/Hover;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void
.end method
