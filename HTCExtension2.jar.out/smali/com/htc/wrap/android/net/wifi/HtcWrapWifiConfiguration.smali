.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.super Landroid/net/wifi/WifiConfiguration;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$EapType;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$KeyMgmt;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 10
    return-void
.end method

.method public static getEapolFlags(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 174
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public static getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3
    .parameter "wifiConfig"

    .prologue
    .line 170
    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public static getLimited(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, result:I
    if-eqz p0, :cond_0

    .line 516
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 518
    :cond_0
    return v0
.end method

.method public static getPhase1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiAsCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPskHex(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 237
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 248
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 259
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public static setEapolFlags(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "eapol_flags"

    .prologue
    .line 182
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 183
    return-void
.end method

.method public static setLimited(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "config"
    .parameter "value"

    .prologue
    .line 528
    if-eqz p0, :cond_0

    .line 529
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 531
    :cond_0
    return-void
.end method

.method public static setPhase1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "phase1"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static setWapiAsCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_as_cert"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static setWapiCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_cert"

    .prologue
    .line 219
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public static setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_psk"

    .prologue
    .line 230
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public static setWapiPskHex(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_psk_hex"

    .prologue
    .line 241
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public static setWapiUserCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_user_cert"

    .prologue
    .line 252
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public static setWapiUserKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_user_key"

    .prologue
    .line 263
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 264
    return-void
.end method


# virtual methods
.method public getEapolFlags()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public getHtcWrapWifiApProfile()Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-super {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public getPhase1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiAsCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPsk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPskHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public setEapolFlags(I)V
    .locals 0
    .parameter "eapol_flags"

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 34
    return-void
.end method

.method public setPhase1(Ljava/lang/String;)V
    .locals 0
    .parameter "phase1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setWapiAsCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_as_cert"

    .prologue
    .line 71
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWapiCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_cert"

    .prologue
    .line 90
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWapiPsk(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_psk"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setWapiPskHex(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_psk_hex"

    .prologue
    .line 128
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setWapiUserCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_user_cert"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setWapiUserKey(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_user_key"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 167
    return-void
.end method
