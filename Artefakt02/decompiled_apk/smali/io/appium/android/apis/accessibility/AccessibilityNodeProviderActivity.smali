.class public Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity;
.super Landroid/app/Activity;
.source "AccessibilityNodeProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;,
        Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity;->setContentView(I)V

    .line 63
    return-void
.end method
