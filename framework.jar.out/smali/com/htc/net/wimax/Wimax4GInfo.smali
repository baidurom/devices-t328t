.class public Lcom/htc/net/wimax/Wimax4GInfo;
.super Lcom/htc/net/FourG/FourGInfo;
.source "Wimax4GInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

.field private supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/htc/net/wimax/Wimax4GInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGInfo;-><init>()V

    .line 50
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    .line 51
    new-instance v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGInfo;-><init>(Landroid/os/Parcel;)V

    .line 156
    new-instance v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGSupplicantState;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGSupplicantState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    .line 159
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 160
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/htc/net/FourG/FourGInfo;->clear()V

    .line 120
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    .line 121
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->clear()V

    .line 123
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v1, "persist.wimax.0.MAC"

    const-string v2, "00:00:00:00:00:00"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, mac:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 61
    const-string v0, "00:00:00:00:00:00"

    .line 63
    :cond_0
    return-object v0
.end method

.method public getSupplicantState()Lcom/htc/net/FourG/FourGSupplicantState;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/htc/net/FourG/FourGInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGSupplicantState;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGSupplicantState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    .line 168
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 169
    return-void
.end method

.method public set4GBaseStationInfoServing(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 0
    .parameter "bsInfo"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 99
    return-void
.end method

.method public setSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V
    .locals 0
    .parameter "supplicantState"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GInfo;

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

    .line 107
    invoke-super {p0}, Lcom/htc/net/FourG/FourGInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SupplicantState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ServingBS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->supplicantState:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGSupplicantState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    return-void
.end method
