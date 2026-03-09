.class public Lio/appium/android/apis/view/RatingBar1;
.super Landroid/app/Activity;
.source "RatingBar1.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field mIndicatorRatingBar:Landroid/widget/RatingBar;

.field mRatingText:Landroid/widget/TextView;

.field mSmallRatingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0300a3

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->setContentView(I)V

    .line 40
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/RatingBar1;->mRatingText:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    .line 45
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lio/appium/android/apis/view/RatingBar1;->mSmallRatingBar:Landroid/widget/RatingBar;

    .line 48
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 49
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RatingBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 50
    return-void
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromTouch"    # Z

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    .line 54
    .local v0, "numStars":I
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mRatingText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0229

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RatingBar1;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 60
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 61
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mSmallRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 63
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 65
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mSmallRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getStepSize()F

    move-result v1

    .line 68
    .local v1, "ratingBarStepSize":F
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getStepSize()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mIndicatorRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 70
    iget-object v2, p0, Lio/appium/android/apis/view/RatingBar1;->mSmallRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 72
    :cond_2
    return-void
.end method
