.class final Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PresentationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lio/appium/android/apis/app/PresentationActivity;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/PresentationActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    .line 331
    const v0, 0x7f03009a

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 332
    iput-object p2, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->mContext:Landroid/content/Context;

    .line 333
    return-void
.end method

.method private getDisplayCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationActivity;->access$400(Lio/appium/android/apis/app/PresentationActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.hardware.display.category.PRESENTATION"

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 338
    if-nez p2, :cond_1

    .line 339
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f03009a

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 345
    .local v5, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 346
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 348
    .local v3, "displayId":I
    const v6, 0x7f090106

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 349
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v6}, Lio/appium/android/apis/app/PresentationActivity;->access$100(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_0

    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v6}, Lio/appium/android/apis/app/PresentationActivity;->access$200(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_2

    :cond_0
    move v6, v8

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    const v6, 0x7f090107

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 355
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c0045

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v8

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const v6, 0x7f090108

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 359
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-object v5

    .line 342
    .end local v0    # "b":Landroid/widget/Button;
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayId":I
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_0

    .restart local v1    # "cb":Landroid/widget/CheckBox;
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v3    # "displayId":I
    :cond_2
    move v6, v7

    .line 351
    goto :goto_1
.end method

.method public updateContents()V
    .locals 9

    .prologue
    .line 370
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->clear()V

    .line 372
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getDisplayCategory()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "displayCategory":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v6}, Lio/appium/android/apis/app/PresentationActivity;->access$300(Lio/appium/android/apis/app/PresentationActivity;)Landroid/hardware/display/DisplayManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 374
    .local v3, "displays":[Landroid/view/Display;
    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->addAll([Ljava/lang/Object;)V

    .line 376
    const-string v6, "PresentationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displays connected."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object v0, v3

    .local v0, "arr$":[Landroid/view/Display;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 378
    .local v1, "display":Landroid/view/Display;
    const-string v6, "PresentationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    return-void
.end method
