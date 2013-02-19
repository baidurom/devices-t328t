.class public abstract Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.super Ljava/lang/Object;
.source "QosServiceFlowDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    }
.end annotation


# instance fields
.field protected description:Ljava/lang/String;

.field private destIp:Ljava/net/InetAddress;

.field private destIpMask:Ljava/net/InetAddress;

.field private direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

.field private ipPortHigh:I

.field private ipPortLow:I

.field private localId:I

.field private modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

.field private origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

.field private sfid:I

.field private state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field private trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 91
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 92
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 93
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 94
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 95
    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 96
    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 97
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 98
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 99
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 100
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 363
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 364
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 365
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 366
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 367
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 370
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 380
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 4
    .parameter "description"
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 106
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 107
    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 110
    :try_start_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    if-ne p2, v2, :cond_0

    .line 111
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 121
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 122
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 124
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 125
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 126
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 127
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 128
    return-void

    .line 113
    :cond_0
    const/4 v2, 0x4

    :try_start_1
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 114
    .local v1, ip:[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    .end local v1           #ip:[B
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getDestinationIpAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpAddrMask()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpPortHigh()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    return v0
.end method

.method public getDestinationIpPortLow()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    return v0
.end method

.method public getDirection()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-object v0
.end method

.method public getLocalID()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    return v0
.end method

.method public getModificationState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    return-object v0
.end method

.method public getOrigin()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-object v0
.end method

.method public getSFID()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return v0
.end method

.method public getState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-object v0
.end method

.method public getTrafficType()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-object v0
.end method

.method setDestination(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0
    .parameter "ipAddr"
    .parameter "ipAddrMask"
    .parameter "ipPortHigh"
    .parameter "ipPortLow"
    .parameter "trafficType"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 311
    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 312
    iput p3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 313
    iput p4, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 314
    iput-object p5, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 315
    return-void
.end method

.method public setDestinationIpAddr(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "destIp"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 168
    return-void
.end method

.method public setDestinationIpAddrMask(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "destIpMask"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 182
    return-void
.end method

.method public setDestinationIpPortHigh(I)V
    .locals 0
    .parameter "ipPortHigh"

    .prologue
    .line 197
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 198
    return-void
.end method

.method public setDestinationIpPortLow(I)V
    .locals 0
    .parameter "ipPortLow"

    .prologue
    .line 213
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 214
    return-void
.end method

.method public setDirection(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 256
    return-void
.end method

.method public setLocalID(I)V
    .locals 0
    .parameter "localId"

    .prologue
    .line 144
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 145
    return-void
.end method

.method public setModificationState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;)V
    .locals 0
    .parameter "modified"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 286
    return-void
.end method

.method public setOrigin(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;)V
    .locals 0
    .parameter "origin"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 242
    return-void
.end method

.method public setSFID(I)V
    .locals 0
    .parameter "sfid"

    .prologue
    .line 271
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 272
    return-void
.end method

.method public setState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 300
    return-void
.end method

.method public setTrafficType(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0
    .parameter "trafficType"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, ret:Ljava/lang/StringBuilder;
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LocalID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SFID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TrafficType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIPMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortHigh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortLow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 353
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 354
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    return-void
.end method
