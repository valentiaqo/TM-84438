.class public Lio/appium/android/apis/media/MediaPlayerDemo_Audio;
.super Landroid/app/Activity;
.source "MediaPlayerDemo_Audio.java"


# static fields
.field private static final LOCAL_AUDIO:I = 0x1

.field private static final LOCAL_VIDEO:I = 0x4

.field private static final MEDIA:Ljava/lang/String; = "media"

.field private static final RESOURCES_AUDIO:I = 0x3

.field private static final STREAM_AUDIO:I = 0x2

.field private static final STREAM_VIDEO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayerDemo"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private path:Ljava/lang/String;

.field private tx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private playAudio(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "media"    # Ljava/lang/Integer;

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->tx:Landroid/widget/TextView;

    const-string v2, "Playing audio..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_1
    return-void

    .line 58
    :pswitch_1
    const-string v1, ""

    iput-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->path:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->path:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 61
    const-string v1, "Please edit MediaPlayer_Audio Activity, and set the path variable to your audio file path. Your audio file must be stored on sdcard."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 73
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaPlayerDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const v1, 0x7f070011

    :try_start_1
    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->tx:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->tx:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->playAudio(Ljava/lang/Integer;)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 101
    :cond_0
    return-void
.end method
