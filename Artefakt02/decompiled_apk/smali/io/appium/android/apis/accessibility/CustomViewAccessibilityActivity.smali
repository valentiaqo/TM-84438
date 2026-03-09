.class public Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity;
.super Landroid/app/Activity;
.source "CustomViewAccessibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;,
        Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;,
        Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 196
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity;->setContentView(I)V

    .line 57
    return-void
.end method
