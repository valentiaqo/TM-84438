.class public Lio/appium/android/apis/view/RotatingButton;
.super Landroid/app/Activity;
.source "RotatingButton.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0xa

    const/16 v3, 0x168

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f0300bc

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->setContentView(I)V

    .line 40
    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "rotatingButton":Landroid/widget/Button;
    const v2, 0x7f090136

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 43
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 44
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$1;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    const v2, 0x7f090137

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 57
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$2;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$2;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    const v2, 0x7f090138

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 72
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$3;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$3;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    const v2, 0x7f090139

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 88
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$4;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$4;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    const v2, 0x7f09013a

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 104
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 105
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$5;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$5;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    const v2, 0x7f09013b

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 120
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 121
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$6;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$6;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    const v2, 0x7f09013c

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    check-cast v1, Landroid/widget/SeekBar;

    .line 136
    .restart local v1    # "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 137
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$7;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$7;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 151
    return-void
.end method
