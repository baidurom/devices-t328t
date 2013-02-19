.class public abstract Lcom/htc/opensense/social/ISocialService$Stub;
.super Landroid/os/Binder;
.source "ISocialService.java"

# interfaces
.implements Lcom/htc/opensense/social/ISocialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/ISocialService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.opensense.social.ISocialService"

.field static final TRANSACTION_addAlbum:I = 0x7

.field static final TRANSACTION_addAttachment:I = 0x12

.field static final TRANSACTION_addFeed:I = 0x16

.field static final TRANSACTION_deleteAlbum:I = 0x9

.field static final TRANSACTION_deleteAttachment:I = 0x13

.field static final TRANSACTION_deleteFeed:I = 0x17

.field static final TRANSACTION_deleteMedium:I = 0xe

.field static final TRANSACTION_editAlbum:I = 0x8

.field static final TRANSACTION_editFeed:I = 0x18

.field static final TRANSACTION_editMedium:I = 0xd

.field static final TRANSACTION_getActiveUser:I = 0x15

.field static final TRANSACTION_getAlbums:I = 0x5

.field static final TRANSACTION_getAlbumsOf:I = 0x4

.field static final TRANSACTION_getAllFeeds:I = 0x3

.field static final TRANSACTION_getAttachments:I = 0x11

.field static final TRANSACTION_getEvent:I = 0x20

.field static final TRANSACTION_getFeedComments:I = 0x1d

.field static final TRANSACTION_getFeedsOf:I = 0x2

.field static final TRANSACTION_getFriendList:I = 0x1

.field static final TRANSACTION_getInfo:I = 0x1b

.field static final TRANSACTION_getMedia:I = 0xf

.field static final TRANSACTION_getMediaOf:I = 0xa

.field static final TRANSACTION_getMediaTagOf:I = 0xc

.field static final TRANSACTION_getPageInfo:I = 0x1c

.field static final TRANSACTION_getPeople:I = 0x6

.field static final TRANSACTION_getRecentMedia:I = 0xb

.field static final TRANSACTION_isFanForPage:I = 0x1a

.field static final TRANSACTION_likePage:I = 0x19

.field static final TRANSACTION_refreshProfiles:I = 0x14

.field static final TRANSACTION_setFeedLike:I = 0x1e

.field static final TRANSACTION_setMethod:I = 0x1f

.field static final TRANSACTION_supports:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.opensense.social.ISocialService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/opensense/social/ISocialService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;
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
    const-string v1, "com.htc.opensense.social.ISocialService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense/social/ISocialService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense/social/ISocialService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 973
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 57
    .local v4, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getFriendList(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;

    move-result-object v18

    .line 58
    .local v18, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 60
    if-eqz v4, :cond_1

    .line 61
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1

    .line 65
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 71
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Person;
    :sswitch_2
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .line 77
    .local v4, _arg1:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 83
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->getFeedsOf(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;

    move-result-object v18

    .line 84
    .local v18, _result:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 86
    if-eqz v5, :cond_4

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 75
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 81
    .restart local v4       #_arg1:Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_4

    .line 91
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 97
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Feed;
    :sswitch_3
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    .line 103
    .restart local v4       #_arg1:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 107
    .local v6, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 109
    .local v8, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/RemoteError;

    .local v10, _arg5:Lcom/htc/opensense/social/RemoteError;
    :goto_7
    move-object/from16 v2, p0

    .line 115
    invoke-virtual/range {v2 .. v10}, Lcom/htc/opensense/social/ISocialService$Stub;->getAllFeeds(Ljava/lang/String;ZIJJLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;

    move-result-object v18

    .line 116
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 118
    if-eqz v10, :cond_7

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v6           #_arg3:J
    .end local v8           #_arg4:J
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 113
    .restart local v4       #_arg1:Z
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:J
    .restart local v8       #_arg4:J
    :cond_6
    const/4 v10, 0x0

    .restart local v10       #_arg5:Lcom/htc/opensense/social/RemoteError;
    goto :goto_7

    .line 123
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 129
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v6           #_arg3:J
    .end local v8           #_arg4:J
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Feed;
    :sswitch_4
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 134
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 139
    .local v4, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getAlbumsOf(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;

    move-result-object v18

    .line 140
    .local v18, _result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 142
    if-eqz v4, :cond_9

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_9

    .line 147
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 153
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Album;
    :sswitch_5
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, _arg0:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 163
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getAlbums([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;

    move-result-object v18

    .line 164
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 166
    if-eqz v4, :cond_b

    .line 167
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    :goto_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 161
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_b

    .line 171
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 177
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Album;
    :sswitch_6
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #_arg0:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 187
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getPeople([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;

    move-result-object v18

    .line 188
    .local v18, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 190
    if-eqz v4, :cond_d

    .line 191
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 197
    :goto_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_d

    .line 195
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 201
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Person;
    :sswitch_7
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 206
    sget-object v2, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Album;

    .line 212
    .local v4, _arg1:Lcom/htc/opensense/social/data/Album;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 213
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 218
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/data/Album;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Album;

    move-result-object v18

    .line 219
    .local v18, _result:Lcom/htc/opensense/social/data/Album;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v18, :cond_10

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_11
    if-eqz v5, :cond_11

    .line 228
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Album;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Album;
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/data/Album;
    goto :goto_f

    .line 216
    :cond_f
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_10

    .line 225
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Album;
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 232
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 238
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Album;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Album;
    :sswitch_8
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 243
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 249
    .local v4, _arg1:Landroid/os/Bundle;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 250
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 255
    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->editAlbum(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;

    move-result-object v18

    .line 256
    .local v18, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v18, :cond_14

    .line 258
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_15
    if-eqz v5, :cond_15

    .line 265
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 271
    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/Bundle;
    goto :goto_13

    .line 253
    :cond_13
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_14

    .line 262
    .restart local v18       #_result:Landroid/os/Bundle;
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 269
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 275
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :sswitch_9
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 280
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 285
    .local v4, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteAlbum(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v4, :cond_17

    .line 288
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    :goto_18
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :cond_16
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_17

    .line 292
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 298
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :sswitch_a
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 301
    sget-object v2, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Album;

    .line 307
    .local v3, _arg0:Lcom/htc/opensense/social/data/Album;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 309
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 311
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 313
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 314
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/RemoteError;

    .local v8, _arg4:Lcom/htc/opensense/social/RemoteError;
    :goto_1a
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v8

    .line 319
    invoke-virtual/range {v11 .. v16}, Lcom/htc/opensense/social/ISocialService$Stub;->getMediaOf(Lcom/htc/opensense/social/data/Album;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v18

    .line 320
    .local v18, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 322
    if-eqz v8, :cond_1a

    .line 323
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_1b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 304
    .end local v3           #_arg0:Lcom/htc/opensense/social/data/Album;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v8           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg0:Lcom/htc/opensense/social/data/Album;
    goto :goto_19

    .line 317
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    :cond_19
    const/4 v8, 0x0

    .restart local v8       #_arg4:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1a

    .line 327
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 333
    .end local v3           #_arg0:Lcom/htc/opensense/social/data/Album;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v8           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_b
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 339
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 341
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 343
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 345
    .local v8, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 346
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/RemoteError;

    .restart local v10       #_arg5:Lcom/htc/opensense/social/RemoteError;
    :goto_1c
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 351
    invoke-virtual/range {v11 .. v17}, Lcom/htc/opensense/social/ISocialService$Stub;->getRecentMedia(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v18

    .line 352
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 354
    if-eqz v10, :cond_1c

    .line 355
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 349
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1b
    const/4 v10, 0x0

    .restart local v10       #_arg5:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1c

    .line 359
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 365
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v8           #_arg4:I
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_c
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 371
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 373
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 375
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 377
    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 378
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/RemoteError;

    .restart local v10       #_arg5:Lcom/htc/opensense/social/RemoteError;
    :goto_1e
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 383
    invoke-virtual/range {v11 .. v17}, Lcom/htc/opensense/social/ISocialService$Stub;->getMediaTagOf(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v18

    .line 384
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 386
    if-eqz v10, :cond_1e

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_1f
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 381
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1d
    const/4 v10, 0x0

    .restart local v10       #_arg5:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1e

    .line 391
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 397
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v8           #_arg4:I
    .end local v10           #_arg5:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_d
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 403
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 404
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 410
    .local v5, _arg2:Landroid/os/Bundle;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 411
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .line 416
    .local v6, _arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/opensense/social/ISocialService$Stub;->editMedium(Ljava/lang/String;ILandroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;

    move-result-object v18

    .line 417
    .local v18, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v18, :cond_21

    .line 419
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 425
    :goto_22
    if-eqz v6, :cond_22

    .line 426
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    :goto_23
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 407
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :cond_1f
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/Bundle;
    goto :goto_20

    .line 414
    :cond_20
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_21

    .line 423
    .restart local v18       #_result:Landroid/os/Bundle;
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 430
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 436
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :sswitch_e
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 440
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 442
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    .line 443
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 448
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteMedium(Ljava/lang/String;ILcom/htc/opensense/social/RemoteError;)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v5, :cond_24

    .line 451
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    :goto_25
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 446
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_23
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_24

    .line 455
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 461
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_f
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, _arg0:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 467
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 471
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 472
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/RemoteError;

    .local v8, _arg4:Lcom/htc/opensense/social/RemoteError;
    :goto_26
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v8

    .line 477
    invoke-virtual/range {v11 .. v16}, Lcom/htc/opensense/social/ISocialService$Stub;->getMedia([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;

    move-result-object v18

    .line 478
    .local v18, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 480
    if-eqz v8, :cond_26

    .line 481
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 487
    :goto_27
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 475
    .end local v8           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_25
    const/4 v8, 0x0

    .restart local v8       #_arg4:Lcom/htc/opensense/social/RemoteError;
    goto :goto_26

    .line 485
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 491
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v8           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Medium;
    :sswitch_10
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->supports(Ljava/lang/String;)Z

    move-result v18

    .line 495
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v18, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 496
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 501
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_11
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 505
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 508
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 513
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->getAttachments(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;

    move-result-object v18

    .line 514
    .local v18, _result:[Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 516
    if-eqz v5, :cond_29

    .line 517
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 523
    :goto_2a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 511
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_28
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_29

    .line 521
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 527
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :sswitch_12
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 531
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 534
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 540
    .local v5, _arg2:Landroid/os/Bundle;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 541
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .line 546
    .local v6, _arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/opensense/social/ISocialService$Stub;->addAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v6, :cond_2c

    .line 549
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 555
    :goto_2d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 537
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :cond_2a
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/Bundle;
    goto :goto_2b

    .line 544
    :cond_2b
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_2c

    .line 553
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 559
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :sswitch_13
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 565
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 568
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .line 573
    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v6, :cond_2e

    .line 576
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 582
    :goto_2f
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 571
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :cond_2d
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_2e

    .line 580
    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 586
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    :sswitch_14
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    sget-object v2, Lcom/htc/opensense/social/data/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense/social/data/Profile;

    .line 590
    .local v3, _arg0:[Lcom/htc/opensense/social/data/Profile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 591
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 596
    .local v4, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->refreshProfiles([Lcom/htc/opensense/social/data/Profile;Lcom/htc/opensense/social/RemoteError;)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 599
    if-eqz v4, :cond_30

    .line 600
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 606
    :goto_31
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 594
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :cond_2f
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_30

    .line 604
    :cond_30
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 610
    .end local v3           #_arg0:[Lcom/htc/opensense/social/data/Profile;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    :sswitch_15
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    .line 613
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/RemoteError;

    .line 618
    .local v3, _arg0:Lcom/htc/opensense/social/RemoteError;
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/opensense/social/ISocialService$Stub;->getActiveUser(Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;

    move-result-object v18

    .line 619
    .local v18, _result:Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v18, :cond_32

    .line 621
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Person;->writeToParcel(Landroid/os/Parcel;I)V

    .line 627
    :goto_33
    if-eqz v3, :cond_33

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    :goto_34
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 616
    .end local v3           #_arg0:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Person;
    :cond_31
    const/4 v3, 0x0

    .restart local v3       #_arg0:Lcom/htc/opensense/social/RemoteError;
    goto :goto_32

    .line 625
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Person;
    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 632
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 638
    .end local v3           #_arg0:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Person;
    :sswitch_16
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    .line 643
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 649
    .local v4, _arg1:Landroid/os/Bundle;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    .line 650
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 655
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;

    move-result-object v18

    .line 656
    .local v18, _result:Lcom/htc/opensense/social/data/Feed;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v18, :cond_36

    .line 658
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 664
    :goto_37
    if-eqz v5, :cond_37

    .line 665
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 671
    :goto_38
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 646
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_34
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/Bundle;
    goto :goto_35

    .line 653
    :cond_35
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_36

    .line 662
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_36
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 669
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 675
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Feed;
    :sswitch_17
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 679
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    .line 680
    sget-object v2, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Feed;

    .line 686
    .local v4, _arg1:Lcom/htc/opensense/social/data/Feed;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    .line 687
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 692
    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->deleteFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Lcom/htc/opensense/social/RemoteError;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v5, :cond_3a

    .line 695
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    :goto_3b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 683
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_38
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/data/Feed;
    goto :goto_39

    .line 690
    :cond_39
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_3a

    .line 699
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 705
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_18
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 710
    sget-object v2, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Feed;

    .line 716
    .restart local v4       #_arg1:Lcom/htc/opensense/social/data/Feed;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 717
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 723
    .local v5, _arg2:Landroid/os/Bundle;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 724
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/RemoteError;

    .line 729
    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/opensense/social/ISocialService$Stub;->editFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;

    move-result-object v18

    .line 730
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Feed;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v18, :cond_3e

    .line 732
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 738
    :goto_3f
    if-eqz v6, :cond_3f

    .line 739
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_40
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 713
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_3b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/data/Feed;
    goto :goto_3c

    .line 720
    :cond_3c
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/Bundle;
    goto :goto_3d

    .line 727
    :cond_3d
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/htc/opensense/social/RemoteError;
    goto :goto_3e

    .line 736
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_3e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 743
    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 749
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/data/Feed;
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Feed;
    :sswitch_19
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    .line 754
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 759
    .local v4, _arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->likePage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z

    move-result v18

    .line 760
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v18, :cond_41

    const/4 v2, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    if-eqz v4, :cond_42

    .line 763
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 769
    :goto_43
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 757
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :cond_40
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_41

    .line 761
    .restart local v18       #_result:Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_42

    .line 767
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43

    .line 773
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :sswitch_1a
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 777
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    .line 778
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 783
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->isFanForPage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z

    move-result v18

    .line 784
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v18, :cond_44

    const/4 v2, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    if-eqz v4, :cond_45

    .line 787
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_46
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 781
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :cond_43
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_44

    .line 785
    .restart local v18       #_result:Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .line 791
    :cond_45
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    .line 797
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :sswitch_1b
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 801
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    .line 802
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 807
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getInfo(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;

    move-result-object v18

    .line 808
    .local v18, _result:Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v18, :cond_47

    .line 810
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Person;->writeToParcel(Landroid/os/Parcel;I)V

    .line 816
    :goto_48
    if-eqz v4, :cond_48

    .line 817
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_49
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 805
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Person;
    :cond_46
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_47

    .line 814
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Person;
    :cond_47
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 821
    :cond_48
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 827
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Person;
    :sswitch_1c
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 831
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    .line 832
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 837
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getPageInfo(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Page;

    move-result-object v18

    .line 838
    .local v18, _result:Lcom/htc/opensense/social/data/Page;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    if-eqz v18, :cond_4a

    .line 840
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Page;->writeToParcel(Landroid/os/Parcel;I)V

    .line 846
    :goto_4b
    if-eqz v4, :cond_4b

    .line 847
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 853
    :goto_4c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 835
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Page;
    :cond_49
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_4a

    .line 844
    .restart local v18       #_result:Lcom/htc/opensense/social/data/Page;
    :cond_4a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4b

    .line 851
    :cond_4b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 857
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Lcom/htc/opensense/social/data/Page;
    :sswitch_1d
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 861
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 862
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/RemoteError;

    .line 867
    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/social/ISocialService$Stub;->getFeedComments(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;

    move-result-object v18

    .line 868
    .local v18, _result:[Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 870
    if-eqz v4, :cond_4d

    .line 871
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 877
    :goto_4e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 865
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_4c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/htc/opensense/social/RemoteError;
    goto :goto_4d

    .line 875
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_4d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 881
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :sswitch_1e
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 885
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v4, 0x1

    .line 887
    .local v4, _arg1:Z
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    .line 888
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 893
    .local v5, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->setFeedLike(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)Z

    move-result v18

    .line 894
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    if-eqz v18, :cond_50

    const/4 v2, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    if-eqz v5, :cond_51

    .line 897
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 903
    :goto_52
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 885
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :cond_4e
    const/4 v4, 0x0

    goto :goto_4f

    .line 891
    .restart local v4       #_arg1:Z
    :cond_4f
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_50

    .line 895
    .restart local v18       #_result:Z
    :cond_50
    const/4 v2, 0x0

    goto :goto_51

    .line 901
    :cond_51
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52

    .line 907
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Z
    :sswitch_1f
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    .line 912
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 918
    .local v4, _arg1:Landroid/os/Bundle;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    .line 919
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/RemoteError;

    .line 924
    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/social/ISocialService$Stub;->setMethod(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;

    move-result-object v18

    .line 925
    .local v18, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    if-eqz v18, :cond_54

    .line 927
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 933
    :goto_55
    if-eqz v5, :cond_55

    .line 934
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 940
    :goto_56
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 915
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :cond_52
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/Bundle;
    goto :goto_53

    .line 922
    :cond_53
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_54

    .line 931
    .restart local v18       #_result:Landroid/os/Bundle;
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 938
    :cond_55
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_56

    .line 944
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:Landroid/os/Bundle;
    :sswitch_20
    const-string v2, "com.htc.opensense.social.ISocialService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 948
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 952
    .local v14, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 954
    .local v6, _arg3:[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    .line 955
    sget-object v2, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/RemoteError;

    .restart local v8       #_arg4:Lcom/htc/opensense/social/RemoteError;
    :goto_57
    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    .line 960
    invoke-virtual/range {v11 .. v17}, Lcom/htc/opensense/social/ISocialService$Stub;->getEvent(Ljava/lang/String;Ljava/lang/String;J[JLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Event;

    move-result-object v18

    .line 961
    .local v18, _result:[Lcom/htc/opensense/social/data/Event;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 963
    if-eqz v8, :cond_57

    .line 964
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 970
    :goto_58
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 958
    .end local v8           #_arg4:Lcom/htc/opensense/social/RemoteError;
    .end local v18           #_result:[Lcom/htc/opensense/social/data/Event;
    :cond_56
    const/4 v8, 0x0

    .restart local v8       #_arg4:Lcom/htc/opensense/social/RemoteError;
    goto :goto_57

    .line 968
    .restart local v18       #_result:[Lcom/htc/opensense/social/data/Event;
    :cond_57
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58

    .line 38
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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
