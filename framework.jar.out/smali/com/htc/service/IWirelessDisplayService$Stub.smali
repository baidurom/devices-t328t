.class public abstract Lcom/htc/service/IWirelessDisplayService$Stub;
.super Landroid/os/Binder;
.source "IWirelessDisplayService.java"

# interfaces
.implements Lcom/htc/service/IWirelessDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/IWirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.IWirelessDisplayService"

.field static final TRANSACTION_getConnectedDongleIP:I = 0x9

.field static final TRANSACTION_getConnectedDongleIPLong:I = 0xa

.field static final TRANSACTION_getDLNAPreloadEnable:I = 0x14

.field static final TRANSACTION_getDefaultDongle:I = 0x6

.field static final TRANSACTION_getDiscoveryDongleList:I = 0x4

.field static final TRANSACTION_getFingerGestureEnable:I = 0x12

.field static final TRANSACTION_getInterface:I = 0xf

.field static final TRANSACTION_getMirrorDisplayStatus:I = 0x3

.field static final TRANSACTION_getMirrorModeState:I = 0xb

.field static final TRANSACTION_getunConfigDongleList:I = 0x5

.field static final TRANSACTION_mirrorModeStartStop:I = 0xc

.field static final TRANSACTION_mirrorNow:I = 0x15

.field static final TRANSACTION_notifyUserUnConfigDoneleResult:I = 0x16

.field static final TRANSACTION_playOnTV:I = 0x2

.field static final TRANSACTION_popDialog:I = 0x10

.field static final TRANSACTION_requestWivuDiscovery:I = 0x7

.field static final TRANSACTION_selectDongle:I = 0xd

.field static final TRANSACTION_setDLNAPreloadEnable:I = 0x13

.field static final TRANSACTION_setFingerGestureEnable:I = 0x11

.field static final TRANSACTION_setInterface:I = 0xe

.field static final TRANSACTION_setL2peApInfo:I = 0x17

.field static final TRANSACTION_setMirrorDisplayOnOff:I = 0x1

.field static final TRANSACTION_stopWivuDiscovery:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWirelessDisplayService;
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
    const-string v1, "com.htc.service.IWirelessDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/IWirelessDisplayService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/service/IWirelessDisplayService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 53
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setMirrorDisplayOnOff(Z)I

    move-result v3

    .line 54
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_0
    move v0, v7

    .line 52
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 63
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->playOnTV(Z)I

    move-result v3

    .line 64
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_1
    move v0, v7

    .line 62
    goto :goto_2

    .line 70
    :sswitch_3
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getMirrorDisplayStatus()Z

    move-result v3

    .line 72
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v3           #_result:Z
    :sswitch_4
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v5

    .line 80
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 86
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :sswitch_5
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getunConfigDongleList()Ljava/util/List;

    move-result-object v5

    .line 88
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 94
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :sswitch_6
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v3

    .line 96
    .local v3, _result:Lcom/htc/service/DongleInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v3, p3, v6}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v3           #_result:Lcom/htc/service/DongleInfo;
    :sswitch_7
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    .line 115
    .local v2, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/service/IWirelessDisplayService$Stub;->requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg2:Z
    :cond_4
    move v2, v7

    .line 114
    goto :goto_3

    .line 121
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->stopWivuDiscovery()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    :sswitch_9
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getConnectedDongleIPLong()J

    move-result-wide v3

    .line 138
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 144
    .end local v3           #_result:J
    :sswitch_b
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getMirrorModeState()I

    move-result v3

    .line 146
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v3           #_result:I
    :sswitch_c
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v6

    .line 155
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->mirrorModeStartStop(Z)Z

    move-result v3

    .line 156
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_5

    move v7, v6

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_6
    move v0, v7

    .line 154
    goto :goto_4

    .line 162
    :sswitch_d
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->selectDongle(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 180
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->popDialog()Z

    move-result v3

    .line 190
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v3, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v3           #_result:Z
    :sswitch_11
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 199
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setFingerGestureEnable(Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v7

    .line 198
    goto :goto_5

    .line 205
    :sswitch_12
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getFingerGestureEnable()Z

    move-result v3

    .line 207
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v3, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v3           #_result:Z
    :sswitch_13
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v0, v6

    .line 216
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setDLNAPreloadEnable(Z)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v7

    .line 215
    goto :goto_6

    .line 222
    :sswitch_14
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDLNAPreloadEnable()Z

    move-result v3

    .line 224
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v3, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v3           #_result:Z
    :sswitch_15
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->mirrorNow()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    :sswitch_16
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v0, v6

    .line 240
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->notifyUserUnConfigDoneleResult(Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_c
    move v0, v7

    .line 239
    goto :goto_7

    .line 246
    :sswitch_17
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setL2peApInfo(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    nop

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
