.class public Lcom/htc/net/wimax/Wimax4GConfiguration;
.super Lcom/htc/net/FourG/FourGConfiguration;
.source "Wimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private needPass:Z

.field private needUser:Z

.field private nspId:J

.field private nspName:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/htc/net/wimax/Wimax4GConfiguration$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GConfiguration$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGConfiguration;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 49
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration;-><init>(Landroid/os/Parcel;)V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 200
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration;-><init>(Lcom/htc/net/FourG/FourGConfiguration;)V

    .line 58
    iget-boolean v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 59
    iget-boolean v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 60
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 61
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkRequiresPassword()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    return v0
.end method

.method public getNetworkRequiresUsername()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    return v0
.end method

.method public getNspId()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    return-wide v0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    return-object v0
.end method

.method public setNetworkRequiresPassword(Z)V
    .locals 0
    .parameter "needPass"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 78
    return-void
.end method

.method public setNetworkRequiresUsername(Z)V
    .locals 0
    .parameter "needUser"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 92
    return-void
.end method

.method public setNspId(J)V
    .locals 0
    .parameter "nspId"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 111
    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .locals 0
    .parameter "nspName"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GConfiguration;

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

    .line 152
    invoke-super {p0}, Lcom/htc/net/FourG/FourGConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NeedPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NeedUsername: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NSP_Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NSP_Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 172
    goto :goto_1
.end method
