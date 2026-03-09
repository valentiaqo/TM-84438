.class public Lio/appium/android/apis/app/LocalSampleInstrumentation;
.super Landroid/app/Instrumentation;
.source "LocalSampleInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->start()V

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/16 v6, 0x3b

    const/16 v5, 0x28

    .line 51
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/appium/android/apis/app/SaveRestoreState;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/SaveRestoreState;

    .line 61
    .local v0, "activity":Lio/appium/android/apis/app/SaveRestoreState;
    const-string v2, "LocalSampleInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/appium/android/apis/app/SaveRestoreState;->getSavedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;-><init>(Lio/appium/android/apis/app/LocalSampleInstrumentation;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 72
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 73
    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 74
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 75
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 76
    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 77
    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 78
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 81
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->waitForIdleSync()V

    .line 84
    const-string v2, "LocalSampleInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/appium/android/apis/app/SaveRestoreState;->getSavedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "ContactsFilterInstrumentation"

    const-string v3, "Done!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method
