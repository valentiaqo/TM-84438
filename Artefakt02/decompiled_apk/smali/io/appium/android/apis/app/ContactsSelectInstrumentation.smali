.class public Lio/appium/android/apis/app/ContactsSelectInstrumentation;
.super Landroid/app/Instrumentation;
.source "ContactsSelectInstrumentation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->start()V

    .line 43
    return-void
.end method

.method public onStart()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x17

    const/16 v8, 0x14

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 47
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone.Dialer"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "ContactsSelectInstrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v3, "android.intent.action.VIEW"

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-static {v3, v4}, Landroid/content/IntentFilter;->create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, v3, v10, v6}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v1

    .line 65
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 67
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 69
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v7, v9}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 71
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v6, v9}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 75
    invoke-virtual {p0, v1, v6}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const-string v3, "ContactsSelectInstrumentation"

    const-string v4, "Activity started!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    const-string v3, "ContactsSelectInstrumentation"

    const-string v4, "Done!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v10}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 84
    return-void

    .line 78
    :cond_0
    const-string v3, "ContactsSelectInstrumentation"

    const-string v4, "*** ACTIVITY NOT STARTED!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
