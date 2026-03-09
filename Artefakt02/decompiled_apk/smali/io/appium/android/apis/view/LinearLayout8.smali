.class public Lio/appium/android/apis/view/LinearLayout8;
.super Landroid/app/Activity;
.source "LinearLayout8.java"


# static fields
.field public static final BOTTOM_ID:I = 0x5

.field public static final CENTER_ID:I = 0x7

.field public static final HORIZONTAL_ID:I = 0x2

.field public static final LEFT_ID:I = 0x6

.field public static final MIDDLE_ID:I = 0x4

.field public static final RIGHT_ID:I = 0x8

.field public static final TOP_ID:I = 0x3

.field public static final VERTICAL_ID:I = 0x1


# instance fields
.field private mLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout8;->setContentView(I)V

    .line 54
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 60
    const v0, 0x7f0c0215

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    const/4 v0, 0x2

    const v1, 0x7f0c0216

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 62
    const/4 v0, 0x3

    const v1, 0x7f0c0217

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 63
    const/4 v0, 0x4

    const v1, 0x7f0c0218

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 64
    const/4 v0, 0x5

    const v1, 0x7f0c0219

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 65
    const/4 v0, 0x6

    const v1, 0x7f0c021a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 66
    const/4 v0, 0x7

    const v1, 0x7f0c021b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 67
    const/16 v0, 0x8

    const v1, 0x7f0c021c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 69
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 77
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 97
    :pswitch_6
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 100
    :pswitch_7
    iget-object v1, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
