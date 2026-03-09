.class Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualDescendantsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
    .param p2, "x1"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 359
    const/4 v4, 0x0

    .line 360
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 365
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 366
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v6, v4}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 368
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v6}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$100(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 370
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 371
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 372
    .local v0, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    iget v7, v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    invoke-virtual {v4, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v6, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v5

    .line 377
    .local v5, "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-nez v5, :cond_1

    .line 378
    const/4 v6, 0x0

    .line 392
    .end local v5    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :goto_1
    return-object v6

    .line 382
    .restart local v5    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 383
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 384
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 385
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v6}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v4, v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 388
    iget-object v6, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 389
    iget-object v6, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 390
    iget-object v6, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :cond_2
    move-object v6, v4

    .line 392
    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 438
    :cond_0
    :goto_0
    return-object v4

    .line 404
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "searchedLowerCase":Ljava/lang/String;
    const/4 v4, 0x0

    .line 406
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v8, -0x1

    if-ne p2, v8, :cond_4

    .line 410
    iget-object v8, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v8}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$100(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 412
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 413
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 414
    .local v0, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v8, v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "textToLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 416
    if-nez v4, :cond_2

    .line 417
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    iget v8, v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    invoke-virtual {p0, v8}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    .end local v3    # "i":I
    .end local v6    # "textToLowerCase":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v8, p2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v7

    .line 427
    .local v7, "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-eqz v7, :cond_5

    .line 428
    iget-object v8, v7, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 429
    .restart local v6    # "textToLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v6    # "textToLowerCase":Ljava/lang/String;
    .end local v7    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :cond_5
    if-nez v4, :cond_0

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 448
    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 480
    :cond_1
    :goto_1
    return v1

    .line 450
    :sswitch_0
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v3}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setSelected(Z)V

    .line 452
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v1

    goto :goto_1

    .line 456
    :sswitch_1
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v3}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v3, v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setSelected(Z)V

    .line 458
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v3}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    .line 464
    :cond_2
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v3, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v0

    .line 465
    .local v0, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-nez v0, :cond_3

    move v1, v2

    .line 466
    goto :goto_1

    .line 469
    :cond_3
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 471
    :sswitch_2
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v2, v0, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$300(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V

    .line 472
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->invalidate()V

    goto :goto_1

    .line 475
    :sswitch_3
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v3, v0, v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$300(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V

    .line 476
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->invalidate()V

    goto :goto_1

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 469
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
    .end sparse-switch
.end method
