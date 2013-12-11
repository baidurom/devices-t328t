.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# instance fields
.field private mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 1
    .parameter "phoneSubInfo"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 32
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public getActivePhoneSubInfoPhoneType()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActivePhoneSubInfoPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 286
    return-void
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter "phoneSubInfo"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 39
    return-void
.end method
