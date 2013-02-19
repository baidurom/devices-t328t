.class public abstract Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginNotify.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginNotify"

.field static final TRANSACTION_albumArtDownloadedNotify:I = 0xf

.field static final TRANSACTION_contentAddedNotify:I = 0xa

.field static final TRANSACTION_contentBrowsingDoneNotify:I = 0xb

.field static final TRANSACTION_contentBrowsingErrorNotify:I = 0xc

.field static final TRANSACTION_contentThumbnailUpdateNotify:I = 0x9

.field static final TRANSACTION_contentUpdatedNotify:I = 0xd

.field static final TRANSACTION_controllerErrorNotify:I = 0x14

.field static final TRANSACTION_controllerResponseNotify:I = 0x15

.field static final TRANSACTION_getContentItemDetailsNotify:I = 0x16

.field static final TRANSACTION_imageDownloadedNotify:I = 0xe

.field static final TRANSACTION_mirrorRendererAddedNotify:I = 0x18

.field static final TRANSACTION_playlistCreatedResultNotify:I = 0x10

.field static final TRANSACTION_rendererAddedNotify:I = 0x4

.field static final TRANSACTION_rendererListUpdateNotify:I = 0x6

.field static final TRANSACTION_rendererRemovedNotify:I = 0x5

.field static final TRANSACTION_rendererThumbnailUpdateNotify:I = 0x8

.field static final TRANSACTION_serverAddedNotify:I = 0x1

.field static final TRANSACTION_serverListUpdateNotify:I = 0x3

.field static final TRANSACTION_serverRemovedNotify:I = 0x2

.field static final TRANSACTION_serverThumbnailUpdateNotify:I = 0x7

.field static final TRANSACTION_updateControlItemInfo:I = 0x12

.field static final TRANSACTION_updateControlItemThumbnail:I = 0x13

.field static final TRANSACTION_updateControllerStatus:I = 0x11

.field static final TRANSACTION_updateDownloadStoreAlbumArtNotify:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
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
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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

    .line 340
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/htc/dlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNAServerData;

    .line 75
    .local v2, _arg0:[Lcom/htc/dlnainterface/DLNAServerData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    .end local v2           #_arg0:[Lcom/htc/dlnainterface/DLNAServerData;
    :sswitch_4
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNARendererData;

    .line 88
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V

    .line 89
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    goto :goto_1

    .line 93
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_5
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 105
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNARendererData;

    .line 108
    .local v2, _arg0:[Lcom/htc/dlnainterface/DLNARendererData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V

    .line 109
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 113
    .end local v2           #_arg0:[Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_7
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 123
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 133
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 153
    .local v4, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, _arg3:J
    move-object/from16 v1, p0

    .line 154
    invoke-virtual/range {v1 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:J
    :sswitch_b
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 167
    .restart local v4       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 169
    .restart local v6       #_arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .local v8, _arg4:Z
    :goto_2
    move-object/from16 v1, p0

    .line 170
    invoke-virtual/range {v1 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 169
    .end local v8           #_arg4:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 175
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:J
    :sswitch_c
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 183
    .restart local v4       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 185
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move v14, v6

    move-object v15, v8

    .line 186
    invoke-virtual/range {v9 .. v15}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:I
    .end local v8           #_arg4:Ljava/lang/String;
    :sswitch_d
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 196
    .local v11, _arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentUpdatedNotify(Ljava/lang/String;J)V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_arg1:J
    :sswitch_e
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 213
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_f
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 231
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg2:J
    move-object/from16 v9, p0

    move-object v10, v2

    move-wide v13, v4

    .line 232
    invoke-virtual/range {v9 .. v14}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->playlistCreatedResultNotify(Ljava/lang/String;JJ)V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v11           #_arg1:J
    :sswitch_11
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    sget-object v1, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControllerStatus;

    .line 245
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 246
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 243
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    goto :goto_3

    .line 250
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :sswitch_12
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    sget-object v1, Lcom/htc/dlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControlItemData;

    .line 258
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V

    .line 259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 256
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    goto :goto_4

    .line 263
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :sswitch_13
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 269
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V

    .line 271
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 275
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v11           #_arg1:J
    :sswitch_14
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 287
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_15
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 299
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_16
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    sget-object v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 311
    .local v4, _arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 312
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 309
    .end local v4           #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    goto :goto_5

    .line 316
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :sswitch_17
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 322
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 328
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v11           #_arg1:J
    :sswitch_18
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNARendererData;

    .line 336
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V

    .line 337
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 334
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    goto :goto_6

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
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
