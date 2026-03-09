.class Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;
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
    .line 435
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->this$0:Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    iput-object p2, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 437
    const/16 v1, 0x5a

    .local v1, "c":C
    :goto_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_0

    .line 438
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Data "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 448
    const-wide/16 v3, 0xfa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    add-int/lit8 v3, v1, -0x1

    int-to-char v1, v3

    goto :goto_0

    .line 449
    :catch_0
    move-exception v3

    goto :goto_1
.end method
