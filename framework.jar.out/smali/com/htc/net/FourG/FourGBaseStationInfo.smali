.class public abstract Lcom/htc/net/FourG/FourGBaseStationInfo;
.super Ljava/lang/Object;
.source "FourGBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;,
        Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    }
.end annotation


# instance fields
.field protected altitude:F

.field protected bsid:Ljava/lang/String;

.field protected cinr:I

.field protected connected:Z

.field protected dlFrequency:J

.field protected latitude:F

.field protected longitude:F

.field protected nspId:J

.field protected nspName:Ljava/lang/String;

.field protected nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

.field protected rssi:I

.field protected rtd:I

.field protected rtdMeasurementAge:I

.field protected rtdMeasurementError:I

.field protected ulFrequency:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 90
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 91
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 92
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 93
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 94
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 96
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 97
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 98
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 99
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 100
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 101
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 102
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 103
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 457
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 473
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V
    .locals 2
    .parameter "bsInfo"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 111
    iget-boolean v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 112
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 113
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 114
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 115
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 116
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 117
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 118
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 119
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 120
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 121
    iget-object v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 122
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 123
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 124
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    .line 400
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 402
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 403
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 404
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 405
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 406
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 408
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 409
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 410
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 411
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 412
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 413
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 414
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 415
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    return-object v0
.end method

.method public getCINR()I
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 208
    const/high16 v0, -0x8000

    .line 210
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    goto :goto_0
.end method

.method public abstract getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public getFrequencyDownlink()J
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 174
    const-wide/16 v0, 0x0

    .line 176
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    goto :goto_0
.end method

.method public getFrequencyUplink()J
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 159
    const-wide/16 v0, 0x0

    .line 161
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    goto :goto_0
.end method

.method public getLatitude()F
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    return v0
.end method

.method public getNetworkType()Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    goto :goto_0
.end method

.method public getNspId()J
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 245
    const-wide/16 v0, -0x1

    .line 247
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    goto :goto_0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 264
    const-string v0, ""

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 191
    const/high16 v0, -0x8000

    .line 193
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    goto :goto_0
.end method

.method public getRTD()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    return v0
.end method

.method public getRTDMeasurementAge()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    return v0
.end method

.method public getRTDMeasurementError()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return v0
.end method

.method public abstract getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 492
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAltitude(F)V
    .locals 0
    .parameter "altitude"

    .prologue
    .line 311
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 312
    return-void
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0
    .parameter "bsid"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCINR(I)V
    .locals 0
    .parameter "cinr"

    .prologue
    .line 214
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 215
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 150
    return-void
.end method

.method public setFrequencyDownlink(J)V
    .locals 0
    .parameter "dlFrequency"

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 181
    return-void
.end method

.method public setFrequencyUplink(J)V
    .locals 0
    .parameter "ulFrequency"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 166
    return-void
.end method

.method public setLatitude(F)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 296
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 297
    return-void
.end method

.method public setLongitude(F)V
    .locals 1
    .parameter "longtitude"

    .prologue
    .line 283
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 284
    return-void
.end method

.method public setNetworkType(Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;)V
    .locals 0
    .parameter "nspNetworkType"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 330
    return-void
.end method

.method public setNspId(J)V
    .locals 0
    .parameter "nspId"

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 252
    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .locals 0
    .parameter "nspName"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 197
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 198
    return-void
.end method

.method public setRTD(I)V
    .locals 0
    .parameter "rtd"

    .prologue
    .line 342
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 343
    return-void
.end method

.method public setRTDMeasurementAge(I)V
    .locals 0
    .parameter "rtdMeasurementAge"

    .prologue
    .line 355
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 356
    return-void
.end method

.method public setRTDMeasurementError(I)V
    .locals 0
    .parameter "rtdMeasurementError"

    .prologue
    .line 368
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGBaseStationInfo;

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

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CINR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Altitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMeasurementAge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMEasurementError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 433
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 434
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 435
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
