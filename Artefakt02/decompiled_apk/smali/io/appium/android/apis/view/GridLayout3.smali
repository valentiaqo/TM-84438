.class public Lio/appium/android/apis/view/GridLayout3;
.super Landroid/app/Activity;
.source "GridLayout3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/view/View;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v14, Landroid/widget/GridLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v14, "p":Landroid/widget/GridLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 42
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 44
    .local v6, "configuration":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 45
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V

    .line 50
    :goto_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v16

    .line 51
    .local v16, "titleRow":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    .line 52
    .local v11, "introRow":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x2

    sget-object v18, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v18}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    .line 53
    .local v8, "emailRow":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x3

    sget-object v18, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v18}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v15

    .line 54
    .local v15, "passwordRow":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 55
    .local v2, "button1Row":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    .line 57
    .local v3, "button2Row":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x0

    const/16 v18, 0x4

    sget-object v19, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v19}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    .line 58
    .local v5, "centerInAllColumns":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x0

    const/16 v18, 0x4

    sget-object v19, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v19}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v13

    .line 59
    .local v13, "leftAlignInAllColumns":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x0

    sget-object v18, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v18}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    .line 60
    .local v12, "labelColumn":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x1

    sget-object v18, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v18}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v9

    .line 61
    .local v9, "fieldColumn":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    .line 62
    .local v7, "defineLastColumn":Landroid/widget/GridLayout$Spec;
    const/16 v17, 0x3

    sget-object v18, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static/range {v17 .. v18}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    .line 65
    .local v10, "fillLastColumn":Landroid/widget/GridLayout$Spec;
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v4, "c":Landroid/widget/TextView;
    const/high16 v17, 0x42000000    # 32.0f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    const-string v17, "Email setup"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "c":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v4    # "c":Landroid/widget/TextView;
    const/high16 v17, 0x41800000    # 16.0f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    const-string v17, "You can configure email in a few simple steps:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v13}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "c":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v4    # "c":Landroid/widget/TextView;
    const-string v17, "Email address:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v12}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v4, Landroid/widget/EditText;

    .end local v4    # "c":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 83
    .local v4, "c":Landroid/widget/EditText;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEms(I)V

    .line 84
    const/16 v17, 0x21

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "c":Landroid/widget/EditText;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, "c":Landroid/widget/TextView;
    const-string v17, "Password:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v12}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v4, Landroid/widget/EditText;

    .end local v4    # "c":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v4    # "c":Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEms(I)V

    .line 95
    const/16 v17, 0x81

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 96
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v9}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v4, Landroid/widget/Button;

    .end local v4    # "c":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 100
    .local v4, "c":Landroid/widget/Button;
    const-string v17, "Manual setup"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v7}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Landroid/widget/Button;

    .end local v4    # "c":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v4    # "c":Landroid/widget/Button;
    const-string v17, "Next"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v10}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-object v14

    .line 47
    .end local v2    # "button1Row":Landroid/widget/GridLayout$Spec;
    .end local v3    # "button2Row":Landroid/widget/GridLayout$Spec;
    .end local v4    # "c":Landroid/widget/Button;
    .end local v5    # "centerInAllColumns":Landroid/widget/GridLayout$Spec;
    .end local v7    # "defineLastColumn":Landroid/widget/GridLayout$Spec;
    .end local v8    # "emailRow":Landroid/widget/GridLayout$Spec;
    .end local v9    # "fieldColumn":Landroid/widget/GridLayout$Spec;
    .end local v10    # "fillLastColumn":Landroid/widget/GridLayout$Spec;
    .end local v11    # "introRow":Landroid/widget/GridLayout$Spec;
    .end local v12    # "labelColumn":Landroid/widget/GridLayout$Spec;
    .end local v13    # "leftAlignInAllColumns":Landroid/widget/GridLayout$Spec;
    .end local v15    # "passwordRow":Landroid/widget/GridLayout$Spec;
    .end local v16    # "titleRow":Landroid/widget/GridLayout$Spec;
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p0}, Lio/appium/android/apis/view/GridLayout3;->create(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GridLayout3;->setContentView(Landroid/view/View;)V

    .line 115
    return-void
.end method
