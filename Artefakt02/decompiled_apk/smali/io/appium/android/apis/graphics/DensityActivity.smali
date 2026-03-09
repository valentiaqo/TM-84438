.class public Lio/appium/android/apis/graphics/DensityActivity;
.super Landroid/app/Activity;
.source "DensityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 196
    return-void
.end method

.method private addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "resource"    # I
    .param p3, "scale"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p2, p3}, Lio/appium/android/apis/graphics/DensityActivity;->loadAndPrintDpi(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 141
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 142
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method private addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "resource"    # I
    .param p3, "scale"    # Z

    .prologue
    const/4 v3, -0x2

    .line 162
    invoke-direct {p0, p2, p3}, Lio/appium/android/apis/graphics/DensityActivity;->loadAndPrintDpi(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;

    invoke-direct {v1, p0, p0, v0}, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;-><init>(Lio/appium/android/apis/graphics/DensityActivity;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 166
    .local v1, "view":Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method private addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "root"    # Landroid/widget/LinearLayout;
    .param p2, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 130
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method private addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 4
    .param p1, "root"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method

.method private addNinePatchResourceDrawable(Landroid/widget/LinearLayout;I)V
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "resource"    # I

    .prologue
    .line 172
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const-string v2, "foo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9-patch #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method private addResourceDrawable(Landroid/widget/LinearLayout;I)V
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "resource"    # I

    .prologue
    .line 150
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method private loadAndPrintDpi(IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I
    .param p2, "scale"    # Z

    .prologue
    .line 186
    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 189
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 191
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private scrollWrap(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 116
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "scroller":Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f02002a

    const v8, 0x7f020029

    const v7, 0x7f020028

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 51
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f0c020e

    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->setTitle(I)V

    .line 52
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v7, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 57
    invoke-direct {p0, v0, v8, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 58
    invoke-direct {p0, v0, v9, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 59
    const-string v3, "Prescaled bitmap in drawable"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v7, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 64
    invoke-direct {p0, v0, v8, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 65
    invoke-direct {p0, v0, v9, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addBitmapDrawable(Landroid/widget/LinearLayout;IZ)V

    .line 66
    const-string v3, "Autoscaled bitmap in drawable"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v7}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 71
    invoke-direct {p0, v0, v8}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 72
    invoke-direct {p0, v0, v9}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 73
    const-string v3, "Prescaled resource drawable"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 76
    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const-string v3, "Inflated layout"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 80
    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const-string v3, "Inflated styled layout"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v7, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 86
    invoke-direct {p0, v0, v8, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 87
    invoke-direct {p0, v0, v9, v5}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 88
    const-string v3, "Prescaled bitmap"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v7, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 93
    invoke-direct {p0, v0, v8, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 94
    invoke-direct {p0, v0, v9, v6}, Lio/appium/android/apis/graphics/DensityActivity;->addCanvasBitmap(Landroid/widget/LinearLayout;IZ)V

    .line 95
    const-string v3, "Autoscaled bitmap"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 98
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f02002b

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 100
    const v3, 0x7f02002c

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 101
    const v3, 0x7f02002d

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 102
    const-string v3, "No-dpi resource drawable"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f020056

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addNinePatchResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 107
    const v3, 0x7f020057

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addNinePatchResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 108
    const v3, 0x7f020058

    invoke-direct {p0, v0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addNinePatchResourceDrawable(Landroid/widget/LinearLayout;I)V

    .line 109
    const-string v3, "Prescaled 9-patch resource drawable"

    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/graphics/DensityActivity;->addLabelToRoot(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/graphics/DensityActivity;->addChildToRoot(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 112
    invoke-direct {p0, v2}, Lio/appium/android/apis/graphics/DensityActivity;->scrollWrap(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/DensityActivity;->setContentView(Landroid/view/View;)V

    .line 113
    return-void
.end method
