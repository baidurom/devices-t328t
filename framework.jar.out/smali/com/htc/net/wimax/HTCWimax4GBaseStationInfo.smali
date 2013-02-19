.class public Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
.super Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.source "HTCWimax4GBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bandId:I

.field private cinr1:I

.field private cinr3:I

.field private cinrCh0:F

.field private cinrCh0Dev:F

.field private cinrCh1:F

.field private cinrCh1Dev:F

.field private diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private dlPermBase:I

.field private fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private freqId:I

.field private rssiCh0:F

.field private rssiCh0Dev:F

.field private rssiCh1:F

.field private rssiCh1Dev:F

.field private uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private ulPermBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>()V

    .line 128
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 129
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 130
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 131
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 134
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 135
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 136
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 137
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 138
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 139
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 140
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 141
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 142
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 143
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 144
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 145
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 146
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 147
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 542
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V
    .locals 1
    .parameter "bsInfo"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    .line 156
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 162
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 163
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 164
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 167
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 168
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 169
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 170
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 171
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 172
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 173
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 175
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 176
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 177
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 178
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 179
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 180
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 181
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x1

    .line 447
    invoke-super {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->clear()V

    .line 448
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 449
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 450
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 451
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 454
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 455
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 456
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 457
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 458
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 459
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 460
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 461
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 462
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 463
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 464
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 465
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 466
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 467
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 469
    return-void
.end method

.method public getBandId()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    return v0
.end method

.method public getCINR1()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    return v0
.end method

.method public getCINR3()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    return v0
.end method

.method public getCinrCh0()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    return v0
.end method

.method public getCinrCh0Dev()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    return v0
.end method

.method public getCinrCh1()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    return v0
.end method

.method public getCinrCh1Dev()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    return v0
.end method

.method public getDiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getDlPermBase()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    return v0
.end method

.method public getFecDlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFecUlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFreqId()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    return v0
.end method

.method public getMeanCINR()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    return v0
.end method

.method public getMeanRSSI()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    return v0
.end method

.method public getRssiCh0()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    return v0
.end method

.method public getRssiCh0Dev()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    return v0
.end method

.method public getRssiCh1()F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    return v0
.end method

.method public getRssiCh1Dev()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    return v0
.end method

.method public getUiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getUlPermBase()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 547
    invoke-super {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 572
    return-void
.end method

.method public setBandId(I)V
    .locals 0
    .parameter "bandId"

    .prologue
    .line 409
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 410
    return-void
.end method

.method public setCINR1(I)V
    .locals 0
    .parameter "cinr1"

    .prologue
    .line 234
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 235
    return-void
.end method

.method public setCINR3(I)V
    .locals 0
    .parameter "cinr3"

    .prologue
    .line 397
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 398
    return-void
.end method

.method public setCinrCh0(F)V
    .locals 0
    .parameter "cinrCh0"

    .prologue
    .line 317
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 318
    return-void
.end method

.method public setCinrCh0Dev(F)V
    .locals 0
    .parameter "cinrCh0Dev"

    .prologue
    .line 337
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 338
    return-void
.end method

.method public setCinrCh1(F)V
    .locals 0
    .parameter "cinrCh1"

    .prologue
    .line 322
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 323
    return-void
.end method

.method public setCinrCh1Dev(F)V
    .locals 0
    .parameter "cinrCh1Dev"

    .prologue
    .line 342
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 343
    return-void
.end method

.method public setDiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "diuc"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 383
    return-void
.end method

.method public setDlPermBase(I)V
    .locals 0
    .parameter "dlPermBase"

    .prologue
    .line 362
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 363
    return-void
.end method

.method public setFecDlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "fecDlModulation"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 373
    return-void
.end method

.method public setFecUlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "fecUlModulation"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 368
    return-void
.end method

.method public setFreqId(I)V
    .locals 0
    .parameter "freqId"

    .prologue
    .line 421
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 422
    return-void
.end method

.method public setRssiCh0(F)V
    .locals 0
    .parameter "rssiCh0"

    .prologue
    .line 327
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 328
    return-void
.end method

.method public setRssiCh0Dev(F)V
    .locals 0
    .parameter "rssiCh0Dev"

    .prologue
    .line 347
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 348
    return-void
.end method

.method public setRssiCh1(F)V
    .locals 0
    .parameter "rssiCh1"

    .prologue
    .line 332
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 333
    return-void
.end method

.method public setRssiCh1Dev(F)V
    .locals 0
    .parameter "rssiCh1Dev"

    .prologue
    .line 352
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 353
    return-void
.end method

.method public setUiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "uiuc"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 378
    return-void
.end method

.method public setUlPermBase(I)V
    .locals 0
    .parameter "ulPermBase"

    .prologue
    .line 357
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 358
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 474
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 484
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 485
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 486
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 487
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 488
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 489
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    return-void
.end method
