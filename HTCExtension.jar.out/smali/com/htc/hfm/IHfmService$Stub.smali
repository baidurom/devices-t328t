.class public abstract Lcom/htc/hfm/IHfmService$Stub;
.super Landroid/os/Binder;
.source "IHfmService.java"

# interfaces
.implements Lcom/htc/hfm/IHfmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/IHfmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/hfm/IHfmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.hfm.IHfmService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_cancelReservation:I = 0x3

.field static final TRANSACTION_connect:I = 0xb

.field static final TRANSACTION_disconnect:I = 0xc

.field static final TRANSACTION_getAudioPower:I = 0xa

.field static final TRANSACTION_releaseService:I = 0x2

.field static final TRANSACTION_reserveService:I = 0x1

.field static final TRANSACTION_resetTimeout:I = 0xd

.field static final TRANSACTION_selectCommand:I = 0x5

.field static final TRANSACTION_speak:I = 0x4

.field static final TRANSACTION_startWakeUpMode:I = 0x7

.field static final TRANSACTION_stopWakeUpMode:I = 0x8

.field static final TRANSACTION_testWakeUpPhrase:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/hfm/IHfmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/hfm/IHfmService;
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
    const-string v1, "com.htc.hfm.IHfmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/hfm/IHfmService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/htc/hfm/IHfmService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/htc/hfm/IHfmService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/hfm/IHfmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 61
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 63
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/htc/hfm/IHfmService$Stub;->reserveService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v6

    .line 65
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_1

    .line 71
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->releaseService(Ljava/lang/String;)I

    move-result v6

    .line 75
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->cancelReservation(Ljava/lang/String;)I

    move-result v6

    .line 85
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_4
    const-string v8, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1       #_arg0:Ljava/lang/String;
    sget-object v8, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/hfm/Speech;

    .line 97
    .local v2, _arg1:[Lcom/htc/hfm/Speech;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v3, v7

    .line 98
    .local v3, _arg2:Z
    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/hfm/IHfmService$Stub;->speak(Ljava/lang/String;[Lcom/htc/hfm/Speech;Z)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v3           #_arg2:Z
    :cond_1
    move v3, v0

    .line 97
    goto :goto_2

    .line 104
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[Lcom/htc/hfm/Speech;
    :sswitch_5
    const-string v8, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #_arg0:Ljava/lang/String;
    sget-object v8, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/hfm/Speech;

    .line 110
    .restart local v2       #_arg1:[Lcom/htc/hfm/Speech;
    sget-object v8, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/hfm/Speech;

    .line 112
    .local v3, _arg2:[Lcom/htc/hfm/Speech;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v4, v7

    .line 113
    .local v4, _arg3:Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/hfm/IHfmService$Stub;->selectCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_2
    move v4, v0

    .line 112
    goto :goto_3

    .line 119
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[Lcom/htc/hfm/Speech;
    .end local v3           #_arg2:[Lcom/htc/hfm/Speech;
    :sswitch_6
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->abort(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    sget-object v0, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/hfm/Speech;

    .line 139
    .local v2, _arg1:Lcom/htc/hfm/Speech;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/hfm/IHfmService$Stub;->startWakeUpMode(Ljava/lang/String;Lcom/htc/hfm/Speech;I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v2           #_arg1:Lcom/htc/hfm/Speech;
    .end local v3           #_arg2:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/htc/hfm/Speech;
    goto :goto_4

    .line 146
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/hfm/Speech;
    :sswitch_8
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->stopWakeUpMode(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/htc/hfm/IHfmService$Stub;->testWakeUpPhrase(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/hfm/IHfmService$Stub;->getAudioPower()F

    move-result v6

    .line 168
    .local v6, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 174
    .end local v6           #_result:F
    :sswitch_b
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/hfm/IHfmServiceCallback;

    move-result-object v2

    .line 179
    .local v2, _arg1:Lcom/htc/hfm/IHfmServiceCallback;
    invoke-virtual {p0, v1, v2}, Lcom/htc/hfm/IHfmService$Stub;->connect(Ljava/lang/String;Lcom/htc/hfm/IHfmServiceCallback;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/htc/hfm/IHfmServiceCallback;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->disconnect(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.htc.hfm.IHfmService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/hfm/IHfmService$Stub;->resetTimeout(Ljava/lang/String;)V

    .line 199
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
