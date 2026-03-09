.class final Lio/appium/android/apis/animation/Transition3d$SwapViews;
.super Ljava/lang/Object;
.source "Transition3d.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/Transition3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lio/appium/android/apis/animation/Transition3d;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/Transition3d;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 144
    iput-object p1, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->mPosition:I

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/high16 v5, 0x439b0000    # 310.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 149
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v2, v7

    .line 150
    .local v3, "centerX":F
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v2, v7

    .line 153
    .local v4, "centerY":F
    iget v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->mPosition:I

    const/4 v7, -0x1

    if-le v2, v7, :cond_0

    .line 154
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestFocus()Z

    .line 158
    new-instance v0, Lio/appium/android/apis/animation/Rotate3dAnimation;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-direct/range {v0 .. v6}, Lio/appium/android/apis/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 167
    .local v0, "rotation":Lio/appium/android/apis/animation/Rotate3dAnimation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setDuration(J)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setFillAfter(Z)V

    .line 169
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 171
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v1}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    return-void

    .line 160
    .end local v0    # "rotation":Lio/appium/android/apis/animation/Rotate3dAnimation;
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 164
    new-instance v0, Lio/appium/android/apis/animation/Rotate3dAnimation;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lio/appium/android/apis/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    .restart local v0    # "rotation":Lio/appium/android/apis/animation/Rotate3dAnimation;
    goto :goto_0
.end method
