.class Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;
.super Landroid/os/AsyncTask;
.source "LoaderThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;->this$0:Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    iput-object p2, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 464
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    return-object v2
.end method
