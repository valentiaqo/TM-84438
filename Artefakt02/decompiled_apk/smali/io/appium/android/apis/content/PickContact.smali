.class public Lio/appium/android/apis/content/PickContact;
.super Landroid/app/Activity;
.source "PickContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/content/PickContact$ResultDisplayer;
    }
.end annotation


# instance fields
.field mPendingResult:Lio/appium/android/apis/content/PickContact$ResultDisplayer;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 89
    if-eqz p3, :cond_2

    .line 90
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 92
    const/4 v6, 0x0

    .line 94
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/PickContact;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 98
    .local v7, "id":I
    iget-object v0, p0, Lio/appium/android/apis/content/PickContact;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/content/PickContact;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/appium/android/apis/content/PickContact;->mPendingResult:Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    iget-object v2, v2, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "txt":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {p0, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/content/PickContact;->mToast:Landroid/widget/Toast;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/content/PickContact;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v7    # "id":I
    .end local v8    # "txt":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 106
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/PickContact;->setContentView(I)V

    .line 73
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/PickContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    const-string v2, "Selected contact"

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-direct {v1, p0, v2, v3}, Lio/appium/android/apis/content/PickContact$ResultDisplayer;-><init>(Lio/appium/android/apis/content/PickContact;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/PickContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    const-string v2, "Selected person"

    const-string v3, "vnd.android.cursor.item/person"

    invoke-direct {v1, p0, v2, v3}, Lio/appium/android/apis/content/PickContact$ResultDisplayer;-><init>(Lio/appium/android/apis/content/PickContact;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/PickContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    const-string v2, "Selected phone"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v1, p0, v2, v3}, Lio/appium/android/apis/content/PickContact$ResultDisplayer;-><init>(Lio/appium/android/apis/content/PickContact;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/PickContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    const-string v2, "Selected address"

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v1, p0, v2, v3}, Lio/appium/android/apis/content/PickContact$ResultDisplayer;-><init>(Lio/appium/android/apis/content/PickContact;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
