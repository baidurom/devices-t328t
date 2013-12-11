.class public abstract Lcom/htc/net/FourG/FourGInfo;
.super Ljava/lang/Object;
.source "FourGInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;,
        Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    }
.end annotation


# static fields
.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field private static final TAG:Ljava/lang/String; = "FourGInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/FourG/FourGSupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dlLinkSpeed:I

.field private ipAddr:I

.field private linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field private linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field private macAddr:Ljava/lang/String;

.field private net4gState:I

.field private networkId:I

.field protected txPower:F

.field private ulLinkSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    .line 50
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    .line 134
    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    .line 135
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    .line 136
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    .line 137
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 141
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    .line 142
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 459
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/FourGInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 461
    return-void
.end method

.method constructor <init>(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;)V
    .locals 2
    .parameter "linkStateReason"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    .line 121
    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    .line 122
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    .line 123
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    .line 124
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 128
    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    .line 129
    return-void
.end method

.method public static getDetailedStateOf(Lcom/htc/net/FourG/FourGSupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "suppState"

    .prologue
    .line 178
    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    .line 427
    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    .line 428
    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    .line 429
    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 436
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public abstract get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;
.end method

.method public get4GState()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getBSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCinr()I
    .locals 3

    .prologue
    const/16 v1, 0x3f

    .line 161
    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getCINR()I

    move-result v2

    add-int/lit8 v0, v2, 0xa

    .line 163
    .local v0, cinr:I
    if-le v0, v1, :cond_1

    move v0, v1

    .line 168
    .end local v0           #cinr:I
    :cond_0
    :goto_0
    return v0

    .line 165
    .restart local v0       #cinr:I
    :cond_1
    if-gez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDlLinkSpeed()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 219
    iget v5, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 220
    .local v4, intAddress:I
    new-array v1, v6, [B

    .line 221
    .local v1, byteAddress:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 222
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 223
    shr-int/lit8 v4, v4, 0x8

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_1
    return-object v0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIpAddress()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    return v0
.end method

.method public getLinkStateDetailed()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    return-object v0
.end method

.method public getLinkStateReason()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    return v0
.end method

.method public getRssi()I
    .locals 3

    .prologue
    const/16 v1, 0x53

    .line 336
    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getRSSI()I

    move-result v2

    add-int/lit8 v0, v2, 0x7b

    .line 338
    .local v0, rssi:I
    if-le v0, v1, :cond_1

    move v0, v1

    .line 343
    .end local v0           #rssi:I
    :cond_0
    :goto_0
    return v0

    .line 340
    .restart local v0       #rssi:I
    :cond_1
    if-gez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getSupplicantState()Lcom/htc/net/FourG/FourGSupplicantState;
.end method

.method public getTxPower()I
    .locals 3

    .prologue
    .line 361
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 363
    .local v0, power:F
    const/high16 v1, -0x3d58

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 364
    const/high16 v0, -0x3d58

    .line 371
    :cond_0
    :goto_0
    const/high16 v1, 0x42a8

    add-float/2addr v1, v0

    const/high16 v2, 0x4000

    mul-float v0, v1, v2

    .line 373
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1

    .line 365
    :cond_1
    const/high16 v1, 0x422e

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 366
    const/high16 v0, 0x422e

    goto :goto_0

    .line 367
    :cond_2
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 368
    const/high16 v0, -0x3d58

    goto :goto_0
.end method

.method public getUlLinkSpeed()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    .line 475
    return-void
.end method

.method public set4GState(I)V
    .locals 0
    .parameter "net4gState"

    .prologue
    .line 399
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    .line 400
    return-void
.end method

.method public setDlLinkSpeed(I)V
    .locals 0
    .parameter "linkSpeed"

    .prologue
    .line 252
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    .line 253
    return-void
.end method

.method public setIpAddress(I)V
    .locals 0
    .parameter "ipAddr"

    .prologue
    .line 202
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    .line 203
    return-void
.end method

.method public setLinkStateDetailed(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;)V
    .locals 0
    .parameter "linkStateDetail"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    .line 280
    return-void
.end method

.method public setLinkStateReason(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;)V
    .locals 0
    .parameter "linkStateReason"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    .line 296
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddr"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .parameter "networkId"

    .prologue
    .line 325
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    .line 326
    return-void
.end method

.method public setTxPower(F)V
    .locals 0
    .parameter "txPower"

    .prologue
    .line 378
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    .line 379
    return-void
.end method

.method public setUlLinkSpeed(I)V
    .locals 0
    .parameter "linkSpeed"

    .prologue
    .line 263
    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LinkStateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DlLinkSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UlLinkSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NetworkID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TxPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Net4GState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 455
    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return-void
.end method
