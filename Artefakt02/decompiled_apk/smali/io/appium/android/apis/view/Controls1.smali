.class public Lio/appium/android/apis/view/Controls1;
.super Landroid/app/Activity;
.source "Controls1.java"


# static fields
.field private static final mStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Mercury"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Venus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Earth"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mars"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Jupiter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Saturn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Uranus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Neptune"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/Controls1;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f030031

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Controls1;->setContentView(I)V

    .line 41
    const v3, 0x7f090064

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Controls1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, "disabledButton":Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    const v3, 0x7f09006c

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Controls1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 45
    .local v2, "s1":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    sget-object v4, Lio/appium/android/apis/view/Controls1;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 47
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    return-void
.end method
