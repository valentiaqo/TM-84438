.class public Lio/appium/android/apis/accessibility/TaskListActivity;
.super Landroid/app/ListActivity;
.source "TaskListActivity.java"


# static fields
.field private static final sSettingsIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/appium/android/apis/accessibility/TaskListActivity;->sSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/appium/android/apis/accessibility/TaskListActivity;->sSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x7

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f0300ec

    invoke-virtual {p0, v4}, Lio/appium/android/apis/accessibility/TaskListActivity;->setContentView(I)V

    .line 42
    new-array v1, v5, [Z

    fill-array-data v1, :array_0

    .line 43
    .local v1, "checkboxes":[Z
    new-array v2, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Take out Trash"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Do Laundry"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "Conquer World"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "Nap"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "Do Taxes"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "Abolish IRS"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "Tea with Aunt Sharon"

    aput-object v5, v2, v4

    .line 47
    .local v2, "labels":[Ljava/lang/String;
    new-instance v3, Lio/appium/android/apis/accessibility/TaskAdapter;

    invoke-direct {v3, p0, v2, v1}, Lio/appium/android/apis/accessibility/TaskAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    .line 48
    .local v3, "myAdapter":Lio/appium/android/apis/accessibility/TaskAdapter;
    invoke-virtual {p0, v3}, Lio/appium/android/apis/accessibility/TaskListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lio/appium/android/apis/accessibility/TaskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 52
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v4, Lio/appium/android/apis/accessibility/TaskListActivity$1;

    invoke-direct {v4, p0}, Lio/appium/android/apis/accessibility/TaskListActivity$1;-><init>(Lio/appium/android/apis/accessibility/TaskListActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    .line 42
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
