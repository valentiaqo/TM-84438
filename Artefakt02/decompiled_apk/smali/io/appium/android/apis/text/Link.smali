.class public Lio/appium/android/apis/text/Link;
.super Landroid/app/Activity;
.source "Link.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x21

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v4, 0x7f030080

    invoke-virtual {p0, v4}, Lio/appium/android/apis/text/Link;->setContentView(I)V

    .line 49
    const v4, 0x7f0900df

    invoke-virtual {p0, v4}, Lio/appium/android/apis/text/Link;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "t2":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    const v4, 0x7f0900e0

    invoke-virtual {p0, v4}, Lio/appium/android/apis/text/Link;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "t3":Landroid/widget/TextView;
    const-string v4, "<b>text3: Constructed from HTML programmatically.</b>  Text with a <a href=\"http://www.google.com\">link</a> created in the Java source code using HTML."

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    new-instance v0, Landroid/text/SpannableString;

    const-string v4, "text4: Manually created spans. Click here to dial the phone."

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 77
    new-instance v4, Landroid/text/style/URLSpan;

    const-string v5, "tel:4155551212"

    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x25

    const/16 v6, 0x29

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 80
    const v4, 0x7f0900e1

    invoke-virtual {p0, v4}, Lio/appium/android/apis/text/Link;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "t4":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    return-void
.end method
