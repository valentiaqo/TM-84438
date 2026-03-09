.class Lio/appium/android/apis/view/DragAndDropDemo$1;
.super Ljava/lang/Object;
.source "DragAndDropDemo.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/DragAndDropDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DragAndDropDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DragAndDropDemo;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return v4

    .line 56
    :pswitch_1
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v2, v2, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    invoke-virtual {v2, v4}, Lio/appium/android/apis/view/DraggableDot;->setVisibility(I)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v2, v2, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/DraggableDot;->setVisibility(I)V

    .line 64
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v1

    .line 65
    .local v1, "dropped":Z
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v3, v2, Lio/appium/android/apis/view/DragAndDropDemo;->mResultText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v2, "Dropped!"

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, "No drop"

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
