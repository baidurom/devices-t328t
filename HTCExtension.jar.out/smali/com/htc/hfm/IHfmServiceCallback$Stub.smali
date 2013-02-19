.class public abstract Lcom/htc/hfm/IHfmServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IHfmServiceCallback.java"

# interfaces
.implements Lcom/htc/hfm/IHfmServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/IHfmServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/hfm/IHfmServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.hfm.IHfmServiceCallback"

.field static final TRANSACTION_onAbortComplete:I = 0x4

.field static final TRANSACTION_onHfmShutdown:I = 0x7

.field static final TRANSACTION_onInterrupt:I = 0x6

.field static final TRANSACTION_onReserveServiceComplete:I = 0x1

.field static final TRANSACTION_onSelectCommandComplete:I = 0x3

.field static final TRANSACTION_onSpeakComplete:I = 0x2

.field static final TRANSACTION_onStartRecording:I = 0xa

.field static final TRANSACTION_onStopRecording:I = 0xb

.field static final TRANSACTION_onTestWakeUpPhraseComplete:I = 0x9

.field static final TRANSACTION_onTimeout:I = 0x5

.field static final TRANSACTION_onWakeUpModeComplete:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/hfm/IHfmServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.htc.hfm.IHfmServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/hfm/IHfmServiceCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/htc/hfm/IHfmServiceCallback;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/htc/hfm/IHfmServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onReserveServiceComplete(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onSpeakComplete(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onSelectCommandComplete(ILjava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onAbortComplete(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onTimeout()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_6
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onInterrupt()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onHfmShutdown()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_8
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onWakeUpModeComplete(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 116
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onTestWakeUpPhraseComplete(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onStartRecording()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    :sswitch_b
    const-string v3, "com.htc.hfm.IHfmServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->onStopRecording()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
