.class public Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;
.super Landroid/app/Activity;
.source "PresentationWithMediaRouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInfoTextView:Landroid/widget/TextView;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPaused:Z

.field private mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const-string v0, "PresentationWithMediaRouterActivity"

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->TAG:Ljava/lang/String;

    .line 217
    new-instance v0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;-><init>(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 241
    new-instance v0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;-><init>(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->updatePresentation()V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    return-object v0
.end method

.method static synthetic access$102(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;)Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;
    .param p1, "x1"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    .prologue
    .line 67
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    return-object p1
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->updateContents()V

    return-void
.end method

.method private updateContents()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004c

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v4}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 199
    iget-boolean v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->getSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->getSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004b

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 209
    iget-boolean v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPaused:Z

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method private updatePresentation()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 162
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 165
    .local v1, "presentationDisplay":Landroid/view/Display;
    :goto_0
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v4}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 166
    const-string v4, "PresentationWithMediaRouterActivity"

    const-string v5, "Dismissing presentation because the current route no longer has a presentation display."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v4}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->dismiss()V

    .line 169
    iput-object v3, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    .line 173
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 174
    const-string v4, "PresentationWithMediaRouterActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing presentation on display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v4, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-direct {v4, p0, v1}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    .line 176
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    iget-object v5, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    :try_start_0
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v4}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->updateContents()V

    .line 188
    return-void

    .end local v1    # "presentationDisplay":Landroid/view/Display;
    :cond_2
    move-object v1, v3

    .line 162
    goto :goto_0

    .line 179
    .restart local v1    # "presentationDisplay":Landroid/view/Display;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    const-string v4, "PresentationWithMediaRouterActivity"

    const-string v5, "Couldn\'t show presentation!  Display was removed in the meantime."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iput-object v3, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouter:Landroid/media/MediaRouter;

    .line 92
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 99
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mInfoTextView:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 147
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    const v2, 0x7f0901c6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 150
    .local v1, "mediaRouteMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/app/MediaRouteActionProvider;

    .line 152
    .local v0, "mediaRouteActionProvider":Landroid/app/MediaRouteActionProvider;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/MediaRouteActionProvider;->setRouteTypes(I)V

    .line 155
    const/4 v2, 0x1

    return v2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPaused:Z

    .line 125
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->updateContents()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x2

    iget-object v2, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPaused:Z

    .line 112
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->updatePresentation()V

    .line 113
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 134
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "PresentationWithMediaRouterActivity"

    const-string v1, "Dismissing presentation because the activity is no longer visible."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->dismiss()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->mPresentation:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    .line 139
    :cond_0
    return-void
.end method
