.class public Lio/appium/android/apis/app/SoftInputModes;
.super Landroid/app/Activity;
.source "SoftInputModes.java"


# instance fields
.field mResizeMode:Landroid/widget/Spinner;

.field final mResizeModeLabels:[Ljava/lang/CharSequence;

.field final mResizeModeValues:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-array v0, v3, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Resize"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pan"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Nothing"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeModeLabels:[Ljava/lang/CharSequence;

    .line 26
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeModeValues:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x10
        0x20
        0x30
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f0300d5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SoftInputModes;->setContentView(I)V

    .line 49
    const v1, 0x7f090160

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SoftInputModes;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeMode:Landroid/widget/Spinner;

    .line 50
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeModeLabels:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 52
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 53
    iget-object v1, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeMode:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    iget-object v1, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeMode:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 55
    iget-object v1, p0, Lio/appium/android/apis/app/SoftInputModes;->mResizeMode:Landroid/widget/Spinner;

    new-instance v2, Lio/appium/android/apis/app/SoftInputModes$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/SoftInputModes$1;-><init>(Lio/appium/android/apis/app/SoftInputModes;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    return-void
.end method
