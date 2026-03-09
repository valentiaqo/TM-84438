.class Lio/appium/android/apis/view/TableLayout7$2;
.super Ljava/lang/Object;
.source "TableLayout7.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/TableLayout7;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/TableLayout7;

.field final synthetic val$table:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/TableLayout7;Landroid/widget/TableLayout;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/appium/android/apis/view/TableLayout7$2;->this$0:Lio/appium/android/apis/view/TableLayout7;

    iput-object p2, p0, Lio/appium/android/apis/view/TableLayout7$2;->val$table:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lio/appium/android/apis/view/TableLayout7$2;->this$0:Lio/appium/android/apis/view/TableLayout7;

    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout7$2;->this$0:Lio/appium/android/apis/view/TableLayout7;

    invoke-static {v0}, Lio/appium/android/apis/view/TableLayout7;->access$100(Lio/appium/android/apis/view/TableLayout7;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lio/appium/android/apis/view/TableLayout7;->access$102(Lio/appium/android/apis/view/TableLayout7;Z)Z

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout7$2;->val$table:Landroid/widget/TableLayout;

    iget-object v2, p0, Lio/appium/android/apis/view/TableLayout7$2;->this$0:Lio/appium/android/apis/view/TableLayout7;

    invoke-static {v2}, Lio/appium/android/apis/view/TableLayout7;->access$100(Lio/appium/android/apis/view/TableLayout7;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method
