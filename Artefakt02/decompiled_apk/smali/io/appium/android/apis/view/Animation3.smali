.class public Lio/appium/android/apis/view/Animation3;
.super Landroid/app/Activity;
.source "Animation3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final INTERPOLATORS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Accelerate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Decelerate"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Accelerate/Decelerate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Anticipate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Overshoot"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Anticipate/Overshoot"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Bounce"

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/view/Animation3;->INTERPOLATORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Animation3;->setContentView(I)V

    .line 45
    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Animation3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 46
    .local v1, "s":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    sget-object v3, Lio/appium/android/apis/view/Animation3;->INTERPOLATORS:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 48
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 50
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 51
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 54
    const v3, 0x7f090035

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/Animation3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "target":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 57
    .local v2, "targetParent":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 60
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 63
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 65
    packed-switch p3, :pswitch_data_0

    .line 96
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    return-void

    .line 67
    :pswitch_0
    const v3, 0x10a0005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 71
    :pswitch_1
    const v3, 0x10a0006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const v3, 0x10a0004

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 79
    :pswitch_3
    const v3, 0x10a0007

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 83
    :pswitch_4
    const v3, 0x10a0008

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 87
    :pswitch_5
    const v3, 0x10a0009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 91
    :pswitch_6
    const v3, 0x10a000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
