.class public abstract Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "OnMediaVTServiceEventListener.java"

# interfaces
.implements Lcom/htc/service/vt/OnMediaVTServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/OnMediaVTServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.vt.OnMediaVTServiceEventListener"

.field static final TRANSACTION_onMediaVTServiceEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.service.vt.OnMediaVTServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/vt/OnMediaVTServiceEventListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.service.vt.OnMediaVTServiceEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/vt/OnMediaVTServiceEventListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/service/vt/OnMediaVTServiceEventListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.htc.service.vt.OnMediaVTServiceEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.service.vt.OnMediaVTServiceEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;->onMediaVTServiceEvent(II)Z

    move-result v2

    .line 53
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
