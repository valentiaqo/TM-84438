.class public Lio/appium/android/apis/graphics/SurfaceViewOverlay;
.super Landroid/app/Activity;
.source "SurfaceViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;
    }
.end annotation


# instance fields
.field mGoneListener:Landroid/view/View$OnClickListener;

.field mInvisibleListener:Landroid/view/View$OnClickListener;

.field mVictim1:Landroid/view/View;

.field mVictim2:Landroid/view/View;

.field mVictimContainer:Landroid/view/View;

.field mVisibleListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$1;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVisibleListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mInvisibleListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$3;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mGoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v4, 0x7f0300db

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->setContentView(I)V

    .line 44
    const v4, 0x7f090170

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 46
    .local v0, "glSurfaceView":Landroid/opengl/GLSurfaceView;
    new-instance v4, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v4}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 49
    const v4, 0x7f090171

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictimContainer:Landroid/view/View;

    .line 50
    const v4, 0x7f090172

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    .line 51
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    new-instance v5, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;

    iget-object v6, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    invoke-direct {v5, p0, v6}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    .line 53
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    new-instance v5, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;

    iget-object v6, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    invoke-direct {v5, p0, v6}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0x7f090174

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 57
    .local v3, "visibleButton":Landroid/widget/Button;
    const v4, 0x7f090175

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 58
    .local v2, "invisibleButton":Landroid/widget/Button;
    const v4, 0x7f090176

    invoke-virtual {p0, v4}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, "goneButton":Landroid/widget/Button;
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mInvisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mGoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    return-void
.end method
