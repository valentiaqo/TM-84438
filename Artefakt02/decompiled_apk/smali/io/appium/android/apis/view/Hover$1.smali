.class Lio/appium/android/apis/view/Hover$1;
.super Ljava/lang/Object;
.source "Hover.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/Hover;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Hover;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/Hover;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    return v5

    .line 80
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0254

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0255

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0256

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
