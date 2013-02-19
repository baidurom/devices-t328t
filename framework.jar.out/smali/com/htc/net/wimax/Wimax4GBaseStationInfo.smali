.class public Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.super Lcom/htc/net/FourG/FourGBaseStationInfo;
.source "Wimax4GBaseStationInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asnGatewayId:Ljava/lang/String;

.field protected dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field protected napId:J

.field protected preamble:J

.field protected realm:Ljava/lang/String;

.field protected ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field private vendorId:I

.field private vendorInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 53
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>()V

    .line 54
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 55
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 57
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 58
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 59
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 60
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 379
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 2
    .parameter "bsInfo"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V

    .line 68
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 69
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 70
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 71
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 72
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 73
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 74
    iget v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 75
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 76
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 287
    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->clear()V

    .line 288
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 289
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 290
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 291
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 292
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 293
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 294
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 295
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 296
    return-void
.end method

.method public getASNGatewayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, ""

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getNapId()J
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-wide/16 v0, -0x1

    .line 140
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    goto :goto_0
.end method

.method public getPreamble()J
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-wide/16 v0, -0x1

    .line 116
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getVendorID()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    return v0
.end method

.method public getVendorSpecificInformation()[B
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 393
    return-void
.end method

.method public setASNGatewayId(Ljava/lang/String;)V
    .locals 0
    .parameter "asnGatewayId"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "dlModulation"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 226
    return-void
.end method

.method public setNapId(J)V
    .locals 0
    .parameter "napId"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 145
    return-void
.end method

.method public setPreamble(J)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 122
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "ulModulation"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 254
    return-void
.end method

.method public setVendorID(I)V
    .locals 0
    .parameter "vendorId"

    .prologue
    .line 186
    iput p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 187
    return-void
.end method

.method public setVendorSpecificInformation([B)V
    .locals 0
    .parameter "vendorInfo"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

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

    .line 268
    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ASNGetewayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Preamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Realm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorSpecificInformation {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 343
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 351
    return-void
.end method
