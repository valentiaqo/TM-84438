.class Lio/appium/android/apis/animation/LayoutAnimations$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimations;->createCustomAnimations(Landroid/animation/LayoutTransition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimations;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimations;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimations$10;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 204
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 205
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 206
    return-void
.end method
