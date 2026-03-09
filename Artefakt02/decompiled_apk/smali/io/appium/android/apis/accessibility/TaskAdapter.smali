.class final Lio/appium/android/apis/accessibility/TaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskListView.java"


# instance fields
.field private mCheckboxes:[Z

.field private mContext:Landroid/content/Context;

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "labels"    # [Ljava/lang/String;
    .param p3, "checkboxes"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    .line 69
    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v4, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 90
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300ed

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f09017b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 94
    .local v0, "checkbox":Landroid/widget/CheckBox;
    iget-object v4, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    const v4, 0x7f09017a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    .line 97
    .local v3, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c03aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    return-object p2
.end method
