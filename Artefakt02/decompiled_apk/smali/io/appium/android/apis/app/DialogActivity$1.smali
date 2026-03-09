.class Lio/appium/android/apis/app/DialogActivity$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/DialogActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/DialogActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lio/appium/android/apis/app/DialogActivity$1;->this$0:Lio/appium/android/apis/app/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 69
    iget-object v2, p0, Lio/appium/android/apis/app/DialogActivity$1;->this$0:Lio/appium/android/apis/app/DialogActivity;

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Lio/appium/android/apis/app/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lio/appium/android/apis/app/DialogActivity$1;->this$0:Lio/appium/android/apis/app/DialogActivity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lio/appium/android/apis/app/DialogActivity$1;->this$0:Lio/appium/android/apis/app/DialogActivity;

    invoke-virtual {v2}, Lio/appium/android/apis/app/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method
