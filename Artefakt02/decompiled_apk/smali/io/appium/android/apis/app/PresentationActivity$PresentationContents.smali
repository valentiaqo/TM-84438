.class final Lio/appium/android/apis/app/PresentationActivity$PresentationContents;
.super Ljava/lang/Object;
.source "PresentationActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PresentationContents"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/appium/android/apis/app/PresentationActivity$PresentationContents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final colors:[I

.field final photo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents$1;

    invoke-direct {v0}, Lio/appium/android/apis/app/PresentationActivity$PresentationContents$1;-><init>()V

    sput-object v0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "photo"    # I

    .prologue
    const/high16 v6, -0x1000000

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->photo:I

    .line 464
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    or-int/2addr v2, v6

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    or-int/2addr v2, v6

    aput v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->colors:[I

    .line 467
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->photo:I

    .line 471
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->colors:[I

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/appium/android/apis/app/PresentationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lio/appium/android/apis/app/PresentationActivity$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 481
    iget v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->photo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->colors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    return-void
.end method
