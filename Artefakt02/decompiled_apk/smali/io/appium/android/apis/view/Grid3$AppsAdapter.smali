.class public Lio/appium/android/apis/view/Grid3$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "Grid3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/Grid3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Grid3;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/Grid3;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-static {v0}, Lio/appium/android/apis/view/Grid3;->access$000(Lio/appium/android/apis/view/Grid3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-static {v0}, Lio/appium/android/apis/view/Grid3;->access$000(Lio/appium/android/apis/view/Grid3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x32

    const/4 v5, -0x2

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "i":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v2, Lio/appium/android/apis/view/Grid3$CheckableLayout;

    iget-object v3, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    iget-object v4, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-direct {v2, v3, v4}, Lio/appium/android/apis/view/Grid3$CheckableLayout;-><init>(Lio/appium/android/apis/view/Grid3;Landroid/content/Context;)V

    .line 80
    .local v2, "l":Lio/appium/android/apis/view/Grid3$CheckableLayout;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {v2, v0}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->addView(Landroid/view/View;)V

    .line 88
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-static {v3}, Lio/appium/android/apis/view/Grid3;->access$000(Lio/appium/android/apis/view/Grid3;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lio/appium/android/apis/view/Grid3$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid3;

    invoke-virtual {v4}, Lio/appium/android/apis/view/Grid3;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-object v2

    .end local v0    # "i":Landroid/widget/ImageView;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "l":Lio/appium/android/apis/view/Grid3$CheckableLayout;
    :cond_0
    move-object v2, p2

    .line 84
    check-cast v2, Lio/appium/android/apis/view/Grid3$CheckableLayout;

    .line 85
    .restart local v2    # "l":Lio/appium/android/apis/view/Grid3$CheckableLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "i":Landroid/widget/ImageView;
    goto :goto_0
.end method
