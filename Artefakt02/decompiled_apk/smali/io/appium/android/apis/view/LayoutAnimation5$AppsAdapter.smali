.class public Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LayoutAnimation5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/LayoutAnimation5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/LayoutAnimation5;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/LayoutAnimation5;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 69
    const/16 v0, 0x20

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-static {v1}, Lio/appium/android/apis/view/LayoutAnimation5;->access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-static {v0}, Lio/appium/android/apis/view/LayoutAnimation5;->access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-static {v1}, Lio/appium/android/apis/view/LayoutAnimation5;->access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v3, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-static {v3}, Lio/appium/android/apis/view/LayoutAnimation5;->access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-static {v4}, Lio/appium/android/apis/view/LayoutAnimation5;->access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-virtual {v4}, Lio/appium/android/apis/view/LayoutAnimation5;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    const/high16 v3, 0x42100000    # 36.0f

    iget-object v4, p0, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation5;

    invoke-virtual {v4}, Lio/appium/android/apis/view/LayoutAnimation5;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 63
    .local v2, "w":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-object v0
.end method
