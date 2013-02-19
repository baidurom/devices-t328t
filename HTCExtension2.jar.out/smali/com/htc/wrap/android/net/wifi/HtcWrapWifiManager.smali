.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;
.super Landroid/net/wifi/WifiManager;
.source "HtcWrapWifiManager.java"


# static fields
.field public static final ACTION_MANAGEMENT_WIFI_CLIENT:Ljava/lang/String; = "android.net.hotspot.management_wifi_client"

.field public static final AKA_INVALID_SIM_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.AKA_INVALID_SIM"

.field public static final ASSOC_LIST_CHANGE_ACTION:Ljava/lang/String; = "android.net.hotspot.ASSOCLIST"

.field public static final EAP_NOTIFICATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.EAP_NOTIFICATION"

.field public static final EXTRA_BLOCK_MAC:Ljava/lang/String; = "hotspot_block_mac"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_LATEST_TIME_CONNECTION_REQUEST:Ljava/lang/String; = "hotspot_lastest_time_of_request"

.field public static final EXTRA_TYPE_DATA:Ljava/lang/String; = "typeData"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final HOTSPOT_CONNECTION_REQUEST_NOTIFY:Ljava/lang/String; = "android.net.hotspot.connecitonrequest"

.field public static final L2PE_FAIL:Ljava/lang/String; = "android.net.hotspot.L2PE_FAIL"

.field public static final L2PE_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.L2PE_SUCCESSFUL"

.field public static final SMART_WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SMART_WIFI_STATE_CHANGED"

.field public static final SMART_WIFI_STATE_START:I = 0x1

.field public static final SMART_WIFI_STATE_STOP:I = 0x0

.field public static final SMART_WIFI_STATUS_IDEL:I = 0x0

.field public static final SMART_WIFI_STATUS_READY:I = 0x1

.field public static final SMART_WIFI_STATUS_RUNNING:I = 0x2

.field public static final WIFIDISPLAY_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WPS_FAIL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_FAIL"

.field public static final WPS_OVERLAP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_OVERLAP"

.field public static final WPS_REGISTRAR_FAIL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_FAIL"

.field public static final WPS_REGISTRAR_START:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_START"

.field public static final WPS_REGISTRAR_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

.field public static final WPS_SUCCESS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_SUCCESS"


# direct methods
.method private constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager;-><init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V

    .line 14
    return-void
.end method

.method public static NotifyWifiPhoneCallComeIn(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->NotifyWifiPhoneCallComeIn()Z

    move-result v0

    .line 358
    :cond_0
    return v0
.end method

.method public static NotifyWifiPhoneCallEnd(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->NotifyWifiPhoneCallEnd()Z

    move-result v0

    .line 368
    :cond_0
    return v0
.end method

.method public static asyncConnect(Landroid/net/wifi/WifiManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "wifiManager"
    .parameter "srcContext"
    .parameter "srcHandler"

    .prologue
    .line 379
    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 383
    :cond_0
    return-void
.end method

.method public static calculateSignalLevel(III)I
    .locals 1
    .parameter "rssi"
    .parameter "numLevels"
    .parameter "frequency"

    .prologue
    .line 239
    invoke-static {p0, p1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public static checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    return v0
.end method

.method public static disableSsdpPacket(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disableSsdpPacket()Z

    move-result v0

    return v0
.end method

.method public static enableAutoIP(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "state"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enableAutoIP(I)Z

    move-result v0

    return v0
.end method

.method public static enablePowerActiveForFotaDownload(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enablePowerActiveForFotaDownload(Z)Z

    move-result v0

    return v0
.end method

.method public static enablePowerActiveMode(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enablePowerActiveMode(Z)Z

    move-result v0

    return v0
.end method

.method public static enableSsdpPacket(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->enableSsdpPacket()Z

    move-result v0

    return v0
.end method

.method public static getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssociationManual(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, result:I
    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getAssociationManual()I

    move-result v0

    .line 320
    :cond_0
    return v0
.end method

.method public static getClientInfo(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public static getDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDockWifiApAutoEnabled()Z

    move-result v0

    return v0
.end method

.method public static getDockWifiAutoEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDockWifiAutoEnabled()Z

    move-result v0

    .line 348
    :cond_0
    return v0
.end method

.method public static getHotspotNumAllowedChannels(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getHotspotNumAllowedChannels()I

    move-result v0

    return v0
.end method

.method public static getMostPreferredNetwork(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMostPreferredNetwork()I

    move-result v0

    return v0
.end method

.method public static getRequestedList(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSmartWifiState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSmartWifiState()I

    move-result v0

    return v0
.end method

.method public static getWagAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWagAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWagAsUserDefined(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWagAsUserDefined()Z

    move-result v0

    return v0
.end method

.method public static getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiApState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    return v0
.end method

.method public static getWifiOffloadEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiOffloadEnabled()Z

    move-result v0

    return v0
.end method

.method public static getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v0

    return v0
.end method

.method public static getWifidisplayApState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifidisplayApState()I

    move-result v0

    return v0
.end method

.method public static isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWifiPowerModeNormal(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPowerModeNormal()Z

    move-result v0

    return v0
.end method

.method public static resetDhcpConfig(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "wifiManager"

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->resetDhcpConfig()V

    .line 228
    return-void
.end method

.method public static setAssociationManual(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "isManual"

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setAssociationManual(I)Z

    move-result v0

    .line 312
    :cond_0
    return v0
.end method

.method public static setConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setConnectionPolicyEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enabled"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setDockWifiApAutoEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setDockWifiAutoEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enabled"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setDockWifiAutoEnabled(Z)Z

    move-result v0

    .line 338
    :cond_0
    return v0
.end method

.method public static setMostPreferredNetwork(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "networkId"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setMostPreferredNetwork(I)Z

    move-result v0

    return v0
.end method

.method public static setWagAddress(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "addr"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWagAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWagAsUserDefined(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "set"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWagAsUserDefined(Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiManager"
    .parameter "config"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public static setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 255
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiApMacList(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiManager"
    .parameter "config"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public static setWifiDisplayConfigure(Landroid/net/wifi/WifiManager;ILjava/lang/String;)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v0

    .line 444
    :cond_0
    return v0
.end method

.method public static setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "disabled"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    move-result v0

    .line 464
    :cond_0
    return v0
.end method

.method public static setWifiOffloadEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enabled"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiOffloadEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiPowerSavingMode(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "status"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiPowerSavingMode(I)Z

    move-result v0

    return v0
.end method

.method public static setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "wifiApConfig"
    .parameter "status"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    .line 304
    :cond_0
    return v0
.end method

.method public static setWifidisplayEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "status"

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifidisplayEnabled(Z)Z

    move-result v0

    .line 295
    :cond_0
    return v0
.end method

.method public static setWpsPbcMode(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->setWpsPbcMode()Z

    move-result v0

    return v0
.end method

.method public static setWpsPinMode(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"
    .parameter "bssid"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWpsPinMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startDongleScan(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startDongleScan()Z

    move-result v0

    .line 424
    :cond_0
    return v0
.end method

.method public static startDongleSingleCscan(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "channel"

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    move-result v0

    .line 413
    :cond_0
    return v0
.end method

.method public static startScanActive(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    .line 403
    :cond_0
    return v0
.end method

.method public static startWpsRegistrar(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WpsInfo;)V
    .locals 0
    .parameter "wifiManager"
    .parameter "wpsConfig"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 325
    return-void
.end method

.method public static stopWps(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "wifiManager"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopWps()V

    .line 184
    return-void
.end method

.method public static stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "wifiManager"

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopWpsRegistrar()V

    .line 329
    return-void
.end method
