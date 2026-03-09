.class public Lio/appium/android/apis/app/ContactsFilterInstrumentation;
.super Landroid/app/Instrumentation;
.source "ContactsFilterInstrumentation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->start()V

    .line 41
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/16 v8, 0x29

    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone.Dialer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "ContactsFilterInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v5, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 61
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 62
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 63
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 66
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->waitForIdleSync()V

    .line 69
    const-string v2, "ContactsFilterInstrumentation"

    const-string v3, "Done!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/app/ContactsFilterInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 71
    return-void
.end method
