.class Lio/appium/android/apis/preference/AdvancedPreferences$1;
.super Ljava/lang/Object;
.source "AdvancedPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/preference/AdvancedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/preference/AdvancedPreferences;


# direct methods
.method constructor <init>(Lio/appium/android/apis/preference/AdvancedPreferences;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lio/appium/android/apis/preference/AdvancedPreferences$1;->this$0:Lio/appium/android/apis/preference/AdvancedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences$1;->this$0:Lio/appium/android/apis/preference/AdvancedPreferences;

    invoke-static {v0}, Lio/appium/android/apis/preference/AdvancedPreferences;->access$000(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences$1;->this$0:Lio/appium/android/apis/preference/AdvancedPreferences;

    invoke-static {v0}, Lio/appium/android/apis/preference/AdvancedPreferences;->access$000(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences$1;->this$0:Lio/appium/android/apis/preference/AdvancedPreferences;

    invoke-static {v0}, Lio/appium/android/apis/preference/AdvancedPreferences;->access$000(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences$1;->this$0:Lio/appium/android/apis/preference/AdvancedPreferences;

    invoke-static {v0}, Lio/appium/android/apis/preference/AdvancedPreferences;->access$100(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
