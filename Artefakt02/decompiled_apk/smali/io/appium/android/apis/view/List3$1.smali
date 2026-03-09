.class Lio/appium/android/apis/view/List3$1;
.super Ljava/lang/Object;
.source "List3.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/List3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List3;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/List3;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lio/appium/android/apis/view/List3$1;->this$0:Lio/appium/android/apis/view/List3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 56
    if-eq p3, v3, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 69
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return v3

    .line 59
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 60
    .local v2, "type":I
    const/4 v0, 0x0

    .line 62
    .local v0, "label":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 63
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_1
    iget-object v4, p0, Lio/appium/android/apis/view/List3$1;->this$0:Lio/appium/android/apis/view/List3;

    invoke-virtual {v4}, Lio/appium/android/apis/view/List3;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "text":Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
