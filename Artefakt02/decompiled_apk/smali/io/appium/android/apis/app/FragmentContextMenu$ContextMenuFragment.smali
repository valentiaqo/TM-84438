.class public Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;
.super Landroid/app/Fragment;
.source "FragmentContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextMenuFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Item 1a was chosen"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Item 1b was chosen"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0901c8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 61
    const v0, 0x7f0901c8

    const-string v1, "Menu A"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 62
    const v0, 0x7f0901c9

    const-string v1, "Menu B"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 55
    return-object v0
.end method
