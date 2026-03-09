.class public Lio/appium/android/apis/view/Animation2;
.super Landroid/app/Activity;
.source "Animation2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Push up"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Push left"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cross fade"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Hyperspace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/view/Animation2;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Animation2;->setContentView(I)V

    .line 41
    const v2, 0x7f090033

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Animation2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    .line 42
    iget-object v2, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 44
    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Animation2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 45
    .local v1, "s":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lio/appium/android/apis/view/Animation2;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 47
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 80
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040013

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040014

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040011

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040012

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/view/Animation2;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
