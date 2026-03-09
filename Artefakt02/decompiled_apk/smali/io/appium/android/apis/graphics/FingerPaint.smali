.class public Lio/appium/android/apis/graphics/FingerPaint;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "FingerPaint.java"

# interfaces
.implements Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/FingerPaint$MyView;
    }
.end annotation


# static fields
.field private static final BLUR_MENU_ID:I = 0x3

.field private static final COLOR_MENU_ID:I = 0x1

.field private static final EMBOSS_MENU_ID:I = 0x2

.field private static final ERASE_MENU_ID:I = 0x4

.field private static final SRCATOP_MENU_ID:I = 0x5


# instance fields
.field private mBlur:Landroid/graphics/MaskFilter;

.field private mEmboss:Landroid/graphics/MaskFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/FingerPaint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/FingerPaint;

    .prologue
    .line 27
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lio/appium/android/apis/graphics/FingerPaint$MyView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;-><init>(Lio/appium/android/apis/graphics/FingerPaint;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/FingerPaint;->setContentView(Landroid/view/View;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 38
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    .line 47
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41000000    # 8.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    .line 48
    return-void

    .line 44
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x7a

    const/16 v4, 0x35

    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 150
    const-string v0, "Color"

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x33

    const/16 v2, 0x63

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 151
    const/4 v0, 0x2

    const-string v1, "Emboss"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x34

    const/16 v2, 0x73

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 152
    const/4 v0, 0x3

    const-string v1, "Blur"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 153
    const/4 v0, 0x4

    const-string v1, "Erase"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 154
    const/4 v0, 0x5

    const-string v1, "SrcATop"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 164
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    new-instance v1, Lio/appium/android/apis/graphics/ColorPickerDialog;

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-direct {v1, p0, p0, v2}, Lio/appium/android/apis/graphics/ColorPickerDialog;-><init>(Landroid/content/Context;Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {v1}, Lio/appium/android/apis/graphics/ColorPickerDialog;->show()V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    if-eq v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    if-eq v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 203
    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
