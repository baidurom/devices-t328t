.class public final Lcom/android/internal/telephony/gsm/SimCard;
.super Lcom/android/internal/telephony/IccCard;
.source "SimCard.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    :cond_1
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    const-string v0, "GSM"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 53
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->resetIccDetailStatus()V

    .line 63
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 112
    :cond_1
    return-void
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reReadISimRecords()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 148
    .local v0, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 150
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 151
    const/4 v1, 0x1

    .line 153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateStateProperty()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 129
    .local v0, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 134
    :cond_0
    return-void
.end method

.method protected updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "iccState"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 138
    .local v0, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 144
    :cond_0
    return-void
.end method
