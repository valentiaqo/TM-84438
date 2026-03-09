.class public Lio/appium/android/apis/view/SplitTouchView;
.super Landroid/app/Activity;
.source "SplitTouchView.java"


# instance fields
.field private final itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private responseIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    .line 54
    new-instance v0, Lio/appium/android/apis/view/SplitTouchView$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/SplitTouchView$1;-><init>(Lio/appium/android/apis/view/SplitTouchView;)V

    iput-object v0, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$008(Lio/appium/android/apis/view/SplitTouchView;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/view/SplitTouchView;

    .prologue
    .line 35
    iget v0, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f0300d7

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/SplitTouchView;->setContentView(I)V

    .line 41
    const v3, 0x7f090162

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/SplitTouchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 42
    .local v1, "list1":Landroid/widget/ListView;
    const v3, 0x7f090163

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/SplitTouchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 43
    .local v2, "list2":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    sget-object v4, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 45
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object v3, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object v3, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void
.end method
