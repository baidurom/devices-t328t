.class public Lcom/htc/android/pim/eas/EASLoginConfig;
.super Ljava/lang/Object;
.source "EASLoginConfig.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/eas/EASLoginConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceID:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public domainName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public heartBeatInterval:I

.field public password:Ljava/lang/String;

.field public protocolVer:Ljava/lang/String;

.field public requireSSL:Z

.field public safeUserName:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/htc/android/pim/eas/EASLoginConfig$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASLoginConfig$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASLoginConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    .line 89
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    .line 339
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASLoginConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/android/pim/eas/EASLoginConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartBeatInterval()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    return-object v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    return v0
.end method

.method public getSafeUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setHeartBeatInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 221
    iput p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    .line 222
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "pwd"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setProtocolVer(Ljava/lang/String;)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setSSL(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    .line 188
    return-void
.end method

.method public setSafeUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    .line 289
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-boolean v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
