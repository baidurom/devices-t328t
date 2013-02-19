.class public abstract Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field static final TRANSACTION_albumArtDownload:I = 0xb

.field static final TRANSACTION_browse:I = 0x8

.field static final TRANSACTION_browseCancel:I = 0x9

.field static final TRANSACTION_cancelContentThumbnail:I = 0x32

.field static final TRANSACTION_changeDuration:I = 0x20

.field static final TRANSACTION_changePushPlaylistItem:I = 0x10

.field static final TRANSACTION_changeRemotePlaylistItem:I = 0xf

.field static final TRANSACTION_changeRendererOutput:I = 0x1f

.field static final TRANSACTION_continueBrowseDown:I = 0x3c

.field static final TRANSACTION_createMediaController:I = 0x23

.field static final TRANSACTION_destroyMediaController:I = 0x24

.field static final TRANSACTION_getContentThumbnail:I = 0x7

.field static final TRANSACTION_getControllingRendererID:I = 0x3b

.field static final TRANSACTION_getDMCContentItemDetails:I = 0x25

.field static final TRANSACTION_getDMCControlItemInfo:I = 0x28

.field static final TRANSACTION_getDMCControlStatus:I = 0x1e

.field static final TRANSACTION_getDMCCurrentContainerID:I = 0x2a

.field static final TRANSACTION_getDMCCurrentContentID:I = 0x29

.field static final TRANSACTION_getDMCCurrentLocalPlayId:I = 0x2b

.field static final TRANSACTION_getDMCCurrentLocalPlayIndex:I = 0x2f

.field static final TRANSACTION_getDMCLocalContentItemDetails:I = 0x3a

.field static final TRANSACTION_getDMCMuteControlSupport:I = 0x34

.field static final TRANSACTION_getDMCPhotoSlideshowState:I = 0x31

.field static final TRANSACTION_getDMCVolumeControlSupport:I = 0x33

.field static final TRANSACTION_getDMPContentItemDetails:I = 0xc

.field static final TRANSACTION_getMirrorRenderer:I = 0x3f

.field static final TRANSACTION_getPlayPosition:I = 0x1b

.field static final TRANSACTION_getPlaylistPlayIndex:I = 0x1c

.field static final TRANSACTION_getPlaylistTotalCount:I = 0x1d

.field static final TRANSACTION_getRendererIdData:I = 0x43

.field static final TRANSACTION_getRendererList:I = 0x4

.field static final TRANSACTION_getRendererThumbnail:I = 0x6

.field static final TRANSACTION_getServerList:I = 0x3

.field static final TRANSACTION_getServerThumbnail:I = 0x5

.field static final TRANSACTION_imageDownload:I = 0xa

.field static final TRANSACTION_isBrowsingCmdDone:I = 0x27

.field static final TRANSACTION_lockPlayingContents:I = 0x38

.field static final TRANSACTION_newInternetPushList:I = 0x41

.field static final TRANSACTION_newInternetPushSingle:I = 0x40

.field static final TRANSACTION_newPushEncryptSingle:I = 0x3d

.field static final TRANSACTION_newPushPlaylist:I = 0xe

.field static final TRANSACTION_newPushSingle:I = 0x22

.field static final TRANSACTION_newPushSingle2:I = 0x42

.field static final TRANSACTION_newRemotePlaylist:I = 0xd

.field static final TRANSACTION_newRemoteSingle:I = 0x21

.field static final TRANSACTION_newSingleURI:I = 0x3e

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_reArrangePushPlaylist:I = 0x39

.field static final TRANSACTION_reSearchDevices:I = 0x26

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_serverSubscribed:I = 0x2d

.field static final TRANSACTION_serverUnsubscribed:I = 0x2e

.field static final TRANSACTION_setBrowseThumbSize:I = 0x35

.field static final TRANSACTION_setControllingTimeout:I = 0x2c

.field static final TRANSACTION_setDMCPhotoSlideshowState:I = 0x30

.field static final TRANSACTION_setDMCThumbSize:I = 0x37

.field static final TRANSACTION_setDMPAlbumArtSize:I = 0x36

.field static final TRANSACTION_setMute:I = 0x15

.field static final TRANSACTION_setOutputPath:I = 0x44

.field static final TRANSACTION_setRepeat:I = 0x18

.field static final TRANSACTION_setSeek:I = 0x16

.field static final TRANSACTION_setShuffle:I = 0x17

.field static final TRANSACTION_setVolume:I = 0x14

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_switchPlaylistNextItem:I = 0x19

.field static final TRANSACTION_switchPlaylistPrevItem:I = 0x1a

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;
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
    const-string v1, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 967
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 55
    .local v5, _arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v3, 0x1

    goto :goto_0

    .line 61
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_2
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 66
    .restart local v5       #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v3, 0x1

    goto :goto_0

    .line 72
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_3
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerList(I)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    .end local v4           #_arg0:I
    :sswitch_4
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererList(I)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v3, 0x1

    goto :goto_0

    .line 90
    .end local v4           #_arg0:I
    :sswitch_5
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerThumbnail(ILjava/lang/String;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 101
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererThumbnail(ILjava/lang/String;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 112
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 121
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    :sswitch_8
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 137
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 139
    .local v9, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, _arg5:J
    move-object/from16 v3, p0

    .line 140
    invoke-virtual/range {v3 .. v11}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 146
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    :sswitch_9
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg3:J
    move-object/from16 v3, p0

    .line 155
    invoke-virtual/range {v3 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 161
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 174
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 178
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 187
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    sget-object v3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    .line 212
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v26

    .line 213
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v26, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 210
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    goto :goto_1

    .line 214
    .restart local v26       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 219
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :sswitch_e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 229
    .local v7, _arg3:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 231
    .restart local v9       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .restart local v10       #_arg5:J
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-wide/from16 v18, v10

    .line 232
    invoke-virtual/range {v12 .. v19}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v26

    .line 233
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v26, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 234
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 239
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    .end local v26           #_result:Z
    :sswitch_f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 252
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_10
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 256
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 259
    .local v24, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 265
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_11
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->play(ILjava/lang/String;)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 276
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->pause(ILjava/lang/String;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->stop(ILjava/lang/String;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 298
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 305
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setVolume(ILjava/lang/String;I)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 311
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_15
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .line 318
    .local v6, _arg2:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setMute(ILjava/lang/String;Z)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 317
    .end local v6           #_arg2:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 324
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_16
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 328
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 330
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 331
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setSeek(ILjava/lang/String;J)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 337
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_17
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 341
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 344
    .restart local v6       #_arg2:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setShuffle(ILjava/lang/String;Z)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 343
    .end local v6           #_arg2:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 350
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_18
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 354
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 357
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setRepeat(ILjava/lang/String;I)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_19
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 367
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 368
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 374
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 378
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 379
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 389
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 390
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v26

    .line 391
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 393
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 397
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 401
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 402
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v26

    .line 403
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 405
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 409
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 413
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 414
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v26

    .line 415
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 421
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 425
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 426
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v26

    .line 427
    .local v26, _result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v26, :cond_5

    .line 429
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 433
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 439
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :sswitch_1f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 443
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 445
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeRendererOutput(ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 452
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_20
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 456
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 458
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 459
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeDuration(ILjava/lang/String;J)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 465
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_21
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 469
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 471
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 473
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg4:Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    .line 476
    invoke-virtual/range {v12 .. v17}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 482
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_22
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 486
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 495
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 499
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 501
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 502
    sget-object v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 507
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v26

    .line 508
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 505
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    .end local v26           #_result:I
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    goto :goto_7

    .line 514
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :sswitch_24
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 518
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 519
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 525
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_25
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 529
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 534
    .restart local v7       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v26

    .line 535
    .local v26, _result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v26, :cond_7

    .line 537
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 541
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 547
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :sswitch_26
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reSearchDevices(I)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 556
    .end local v4           #_arg0:I
    :sswitch_27
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 562
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 563
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 564
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v26, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 565
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 570
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_28
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 574
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 575
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 581
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 585
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 586
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 587
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 593
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 598
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 599
    .restart local v26       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 605
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 609
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 610
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v26

    .line 611
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 617
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_2c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 620
    .local v22, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setControllingTimeout(J)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 626
    .end local v22           #_arg0:J
    :sswitch_2d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 630
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 631
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverSubscribed(ILjava/lang/String;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 637
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 642
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverUnsubscribed(ILjava/lang/String;)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 648
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 652
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 653
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I

    move-result v26

    .line 654
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 660
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_30
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 664
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 666
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 667
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    move-result v26

    .line 668
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v26, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 669
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 674
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v26           #_result:Z
    :sswitch_31
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 678
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 679
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v26

    .line 680
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 686
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_32
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 690
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 691
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->cancelContentThumbnail(II)V

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 697
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_33
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 701
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 703
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v26, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 704
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 709
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_34
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 713
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCMuteControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 715
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v26, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 716
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 721
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_35
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 725
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setBrowseThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 727
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v26, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 728
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 733
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_36
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 737
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 738
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMPAlbumArtSize(ILjava/lang/String;)Z

    move-result v26

    .line 739
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v26, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 740
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 745
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_37
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 750
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 751
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v26, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 752
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 757
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_38
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 761
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 763
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 765
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 767
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v9, 0x1

    .line 769
    .local v9, _arg4:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg5:I
    move-object/from16 v3, p0

    .line 770
    invoke-virtual/range {v3 .. v10}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->lockPlayingContents(ILjava/lang/String;Ljava/lang/String;JZI)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 767
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:I
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    .line 776
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_39
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 780
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 782
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 784
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 785
    .local v7, _arg3:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    move-result v26

    .line 786
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v26, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 787
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 792
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v26           #_result:Z
    :sswitch_3a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 796
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 798
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 799
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCLocalContentItemDetails(III)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 805
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_3b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 808
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v26

    .line 809
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 815
    .end local v4           #_arg0:I
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 819
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 825
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 827
    .local v18, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 829
    .restart local v10       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, _arg6:I
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-wide/from16 v16, v7

    move/from16 v20, v10

    .line 830
    invoke-virtual/range {v12 .. v21}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 836
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v10           #_arg5:I
    .end local v18           #_arg4:J
    .end local v21           #_arg6:I
    :sswitch_3d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 840
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 842
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 843
    sget-object v3, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 848
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 846
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    goto :goto_12

    .line 854
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :sswitch_3e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 858
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 860
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg4:Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    .line 865
    invoke-virtual/range {v12 .. v17}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 871
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_3f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 874
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v26

    .line 875
    .local v26, _result:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    if-eqz v26, :cond_12

    .line 877
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 883
    :goto_13
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 881
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 887
    .end local v4           #_arg0:I
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_40
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 891
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 893
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 894
    sget-object v3, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 899
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 897
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_14

    .line 905
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_41
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 909
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 911
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 912
    sget-object v3, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 917
    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 915
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_14
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_15

    .line 923
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_42
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 927
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 929
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 930
    sget-object v3, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 935
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 933
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    goto :goto_16

    .line 941
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :sswitch_43
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererIdData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v26

    .line 945
    .restart local v26       #_result:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v26, :cond_16

    .line 947
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 953
    :goto_17
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 951
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 957
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_44
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 961
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 962
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setOutputPath(ILjava/lang/String;)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 41
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
