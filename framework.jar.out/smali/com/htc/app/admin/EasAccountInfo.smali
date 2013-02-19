.class public Lcom/htc/app/admin/EasAccountInfo;
.super Ljava/lang/Object;
.source "EasAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/app/admin/EasAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mDomainName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mServerAddress:Ljava/lang/String;

.field private mUseSsl:Z

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/htc/app/admin/EasAccountInfo$1;

    invoke-direct {v0}, Lcom/htc/app/admin/EasAccountInfo$1;-><init>()V

    sput-object v0, Lcom/htc/app/admin/EasAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 210
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/htc/app/admin/EasAccountInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/app/admin/EasAccountInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/app/admin/EasAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "serverAddress"
    .parameter "domainName"
    .parameter "userName"
    .parameter "password"
    .parameter "useSsl"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 35
    invoke-virtual/range {p0 .. p7}, Lcom/htc/app/admin/EasAccountInfo;->setEasAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUseSsl()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 196
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 197
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .parameter "domainName"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setEasAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "serverAddress"
    .parameter "domainName"
    .parameter "userName"
    .parameter "password"
    .parameter "useSsl"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 55
    iput-boolean p7, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 56
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "serverAddress"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setUseSsl(Z)V
    .locals 0
    .parameter "bUseSsl"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    .line 165
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/app/admin/EasAccountInfo;

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

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mEmailAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServerAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mDomainName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mPassword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSslEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/htc/app/admin/EasAccountInfo;->mUseSsl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
