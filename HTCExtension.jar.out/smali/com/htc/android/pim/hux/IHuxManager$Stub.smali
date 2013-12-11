.class public abstract Lcom/htc/android/pim/hux/IHuxManager$Stub;
.super Landroid/os/Binder;
.source "IHuxManager.java"

# interfaces
.implements Lcom/htc/android/pim/hux/IHuxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/pim/hux/IHuxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/pim/hux/IHuxManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.android.pim.hux.IHuxManager"

.field static final TRANSACTION_verifyDevice:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.android.pim.hux.IHuxManager"

    invoke-virtual {p0, p0, v0}, Lcom/htc/android/pim/hux/IHuxManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/android/pim/hux/IHuxManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.htc.android.pim.hux.IHuxManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/android/pim/hux/IHuxManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/android/pim/hux/IHuxManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/android/pim/hux/IHuxManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/android/pim/hux/IHuxManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v2, "com.htc.android.pim.hux.IHuxManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.htc.android.pim.hux.IHuxManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/android/pim/hux/IHuxManager$Stub;->verifyDevice()Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v0

    .line 52
    .local v0, _result:Lcom/htc/android/pim/hux/HuxProvResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v0, p3, v1}, Lcom/htc/android/pim/hux/HuxProvResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
