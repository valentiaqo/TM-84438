.class public Lio/appium/android/apis/view/Spinner1;
.super Landroid/app/Activity;
.source "Spinner1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f0300d6

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Spinner1;->setContentView(I)V

    .line 44
    const v3, 0x7f09006c

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Spinner1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 45
    .local v1, "s1":Landroid/widget/Spinner;
    const/high16 v3, 0x7f080000

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 47
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    new-instance v3, Lio/appium/android/apis/view/Spinner1$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/Spinner1$1;-><init>(Lio/appium/android/apis/view/Spinner1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    const v3, 0x7f090161

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Spinner1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 62
    .local v2, "s2":Landroid/widget/Spinner;
    const v3, 0x7f080001

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    new-instance v3, Lio/appium/android/apis/view/Spinner1$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/Spinner1$2;-><init>(Lio/appium/android/apis/view/Spinner1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 77
    return-void
.end method

.method showToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
