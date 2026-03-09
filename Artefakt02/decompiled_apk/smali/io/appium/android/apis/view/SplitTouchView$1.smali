.class Lio/appium/android/apis/view/SplitTouchView$1;
.super Ljava/lang/Object;
.source "SplitTouchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/SplitTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SplitTouchView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SplitTouchView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 56
    iget-object v4, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v4}, Lio/appium/android/apis/view/SplitTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "responses":[Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-static {v4}, Lio/appium/android/apis/view/SplitTouchView;->access$008(Lio/appium/android/apis/view/SplitTouchView;)I

    move-result v4

    array-length v5, v2

    rem-int/2addr v4, v5

    aget-object v1, v2, v4

    .line 59
    .local v1, "response":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v4}, Lio/appium/android/apis/view/SplitTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0244

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    aget-object v7, v7, p3

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "message":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v4}, Lio/appium/android/apis/view/SplitTouchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 63
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method
