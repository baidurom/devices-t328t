.class public Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;
.super Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
.source "Wimax4GManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WimaxConnectionStatistics"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field private ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;-><init>()V

    .line 58
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 59
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;-><init>(Landroid/os/Parcel;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-object v0
.end method

.method public getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 120
    return-void
.end method

.method public setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "dlModulation"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 72
    return-void
.end method

.method public setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "ulModulation"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;

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

    .line 92
    invoke-super {p0}, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownloadModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UploadModulation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return-void
.end method
