.class Lio/appium/android/apis/view/List14$EfficientAdapter;
.super Landroid/widget/BaseAdapter;
.source "List14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EfficientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mIcon1:Landroid/graphics/Bitmap;

.field private mIcon2:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mIcon1:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mIcon2:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lio/appium/android/apis/view/List14;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    iget-object v1, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030086

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;

    invoke-direct {v0}, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;-><init>()V

    .line 111
    .local v0, "holder":Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;
    const v1, 0x7f09000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0900e6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    iget-object v1, v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Lio/appium/android/apis/view/List14;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mIcon1:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    return-object p2

    .line 118
    .end local v0    # "holder":Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;

    .restart local v0    # "holder":Lio/appium/android/apis/view/List14$EfficientAdapter$ViewHolder;
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/view/List14$EfficientAdapter;->mIcon2:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
