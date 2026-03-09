.class Lio/appium/android/apis/view/SecureView$2;
.super Ljava/lang/Object;
.source "SecureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/SecureView;->setClickedAction(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SecureView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SecureView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v2, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-virtual {v2}, Lio/appium/android/apis/view/SecureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "messages":[Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-static {v2}, Lio/appium/android/apis/view/SecureView;->access$108(Lio/appium/android/apis/view/SecureView;)I

    move-result v2

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 115
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c023a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-virtual {v3}, Lio/appium/android/apis/view/SecureView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 121
    return-void
.end method
