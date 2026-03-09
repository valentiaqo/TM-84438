.class public abstract Lio/appium/android/apis/app/ISecondary$Stub;
.super Landroid/os/Binder;
.source "ISecondary.java"

# interfaces
.implements Lio/appium/android/apis/app/ISecondary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ISecondary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ISecondary$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.appium.android.apis.app.ISecondary"

.field static final TRANSACTION_basicTypes:I = 0x2

.field static final TRANSACTION_getPid:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-virtual {p0, p0, v0}, Lio/appium/android/apis/app/ISecondary$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/appium/android/apis/app/ISecondary;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "io.appium.android.apis.app.ISecondary"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/appium/android/apis/app/ISecondary;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lio/appium/android/apis/app/ISecondary;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lio/appium/android/apis/app/ISecondary$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ISecondary$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 47
    :sswitch_0
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lio/appium/android/apis/app/ISecondary$Stub;->getPid()I

    move-result v9

    .line 54
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v9    # "_result":I
    :sswitch_2
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v10

    .line 68
    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 70
    .local v5, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 72
    .local v6, "_arg4":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v8}, Lio/appium/android/apis/app/ISecondary$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":D
    .end local v8    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
