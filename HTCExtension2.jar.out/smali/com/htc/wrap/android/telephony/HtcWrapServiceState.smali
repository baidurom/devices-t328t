.class public Lcom/htc/wrap/android/telephony/HtcWrapServiceState;
.super Landroid/telephony/ServiceState;
.source "HtcWrapServiceState.java"


# static fields
.field public static final APPENDIX_NONE:I = 0x0

.field public static final APPENDIX_POSTFIX:I = 0x2

.field public static final APPENDIX_PREFIX:I = 0x1

.field public static final RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final STATE_NETWORK_SEARCHING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    return-void
.end method

.method public static getOperatorAlphaLong(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "numeric"
    .parameter "context"

    .prologue
    .line 178
    invoke-static {p0, p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorAlphaShort(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "numeric"
    .parameter "context"

    .prologue
    .line 168
    invoke-static {p0, p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "m"

    .prologue
    .line 142
    invoke-static {p0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppendixType()I
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/telephony/ServiceState;->getAppendixType()I

    move-result v0

    return v0
.end method

.method public getGPRSState()I
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v0

    return v0
.end method

.method public getNetwrorkType()I
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaRadioPowerSaveMode()Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/telephony/ServiceState;->htcGetCdmaRadioPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public htcSetCdmaRadioPowerSaveMode(Z)V
    .locals 0
    .parameter "isPoweSaveMode"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->htcSetCdmaRadioPowerSaveMode(Z)V

    .line 57
    return-void
.end method

.method public setAppendixType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    .line 105
    return-void
.end method

.method public setGPRSState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    .line 125
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    .line 80
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 152
    invoke-super {p0}, Landroid/telephony/ServiceState;->getGPRSState()I

    .line 153
    return-void
.end method

.method public updateOperatorAlpha(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->updateOperatorAlpha(Landroid/content/Context;)V

    .line 187
    return-void
.end method
