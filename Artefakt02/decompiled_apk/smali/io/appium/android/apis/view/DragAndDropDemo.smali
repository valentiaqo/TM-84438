.class public Lio/appium/android/apis/view/DragAndDropDemo;
.super Landroid/app/Activity;
.source "DragAndDropDemo.java"


# instance fields
.field mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

.field mResultText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v2, 0x7f03003c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->setContentView(I)V

    .line 36
    const v2, 0x7f090080

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/DraggableDot;

    .line 38
    .local v0, "dot":Lio/appium/android/apis/view/DraggableDot;
    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/DraggableDot;->setReportView(Landroid/widget/TextView;)V

    .line 39
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dot":Lio/appium/android/apis/view/DraggableDot;
    check-cast v0, Lio/appium/android/apis/view/DraggableDot;

    .line 40
    .restart local v0    # "dot":Lio/appium/android/apis/view/DraggableDot;
    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/DraggableDot;->setReportView(Landroid/widget/TextView;)V

    .line 41
    const v2, 0x7f09007d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dot":Lio/appium/android/apis/view/DraggableDot;
    check-cast v0, Lio/appium/android/apis/view/DraggableDot;

    .line 42
    .restart local v0    # "dot":Lio/appium/android/apis/view/DraggableDot;
    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/DraggableDot;->setReportView(Landroid/widget/TextView;)V

    .line 44
    const v2, 0x7f09007e

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/view/DraggableDot;

    iput-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    .line 45
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/DraggableDot;->setReportView(Landroid/widget/TextView;)V

    .line 47
    const v2, 0x7f09007f

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DragAndDropDemo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo;->mResultText:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo;->mResultText:Landroid/widget/TextView;

    new-instance v3, Lio/appium/android/apis/view/DragAndDropDemo$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/DragAndDropDemo$1;-><init>(Lio/appium/android/apis/view/DragAndDropDemo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 71
    return-void
.end method
