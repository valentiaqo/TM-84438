.class public Lio/appium/android/apis/appwidget/ExampleAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ExampleAppWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExampleAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "appWidgetId"    # I
    .param p3, "titlePrefix"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v2, "ExampleAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppWidget appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " titlePrefix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const v2, 0x7f0c038e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p2}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 115
    .local v1, "views":Landroid/widget/RemoteViews;
    const v2, 0x7f090048

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 68
    const-string v2, "ExampleAppWidgetProvider"

    const-string v3, "onDeleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    array-length v0, p2

    .line 71
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    aget v2, p2, v1

    invoke-static {p1, v2}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->deleteTitlePref(Landroid/content/Context;I)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 94
    const-string v1, "ExampleAppWidgetProvider"

    const-string v2, "onDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "io.appium.android.apis"

    const-string v3, ".appwidget.ExampleBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 100
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 78
    const-string v1, "ExampleAppWidgetProvider"

    const-string v2, "onEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 84
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "io.appium.android.apis"

    const-string v3, ".appwidget.ExampleBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 88
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 53
    const-string v4, "ExampleAppWidgetProvider"

    const-string v5, "onUpdate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    array-length v0, p3

    .line 59
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    aget v1, p3, v2

    .line 61
    .local v1, "appWidgetId":I
    invoke-static {p1, v1}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "titlePrefix":Ljava/lang/String;
    invoke-static {p1, p2, v1, v3}, Lio/appium/android/apis/appwidget/ExampleAppWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "appWidgetId":I
    .end local v3    # "titlePrefix":Ljava/lang/String;
    :cond_0
    return-void
.end method
