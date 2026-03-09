.class Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;
.super Ljava/lang/Object;
.source "ExampleAppWidgetConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;


# direct methods
.method constructor <init>(Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    .line 90
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    iget-object v4, v4, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetPrefix:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "titlePrefix":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    iget v4, v4, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {v1, v4, v3}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 95
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    iget-object v4, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    iget v4, v4, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {v1, v0, v4, v3}, Lio/appium/android/apis/appwidget/ExampleAppWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    iget-object v5, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    iget v5, v5, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v4, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object v4, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;->this$0:Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;

    invoke-virtual {v4}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->finish()V

    .line 103
    return-void
.end method
