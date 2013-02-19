.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
.super Ljava/lang/Object;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcWrapHotspotProfile"
.end annotation


# instance fields
.field hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V
    .locals 2
    .parameter "hotspotProfile"

    .prologue
    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 270
    if-nez p1, :cond_0

    .line 271
    const-string v0, "HtcWrapHotspotProfile"

    const-string v1, "hotspotProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V

    return-void
.end method


# virtual methods
.method public getBlocklist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 379
    const/4 v0, -0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto :goto_0
.end method

.method public getConnectionArray()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, -0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto :goto_0
.end method

.method public getDhcpEnable()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 392
    const/4 v0, -0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto :goto_0
.end method

.method public getDhcpSubnetMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnableMacFilter()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto :goto_0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxConns()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 349
    const/4 v0, -0x1

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSleepPolicy()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, -0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto :goto_0
.end method

.method public getStartingIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWhitelist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setChannel(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 387
    return-void
.end method

.method public setConnectionArray(I)V
    .locals 1
    .parameter "connectionArray"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 374
    return-void
.end method

.method public setDhcpEnable(I)V
    .locals 1
    .parameter "dhcpEnable"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 400
    return-void
.end method

.method public setDhcpSubnetMask(Ljava/lang/String;)V
    .locals 1
    .parameter "dhcpSubnetMask"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setEnableMacFilter(I)V
    .locals 1
    .parameter "enableMacFilter"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 326
    return-void
.end method

.method public setHiddenSSID(Z)V
    .locals 1
    .parameter "hiddenSSID"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 461
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "ipAddress"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setMaxConns(I)V
    .locals 1
    .parameter "maxConns"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 357
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 1
    .parameter "SSID"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setSecureType(Ljava/lang/String;)V
    .locals 1
    .parameter "secureType"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setSleepPolicy(I)V
    .locals 1
    .parameter "sleepPolicy"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 448
    return-void
.end method

.method public setStartingIP(Ljava/lang/String;)V
    .locals 1
    .parameter "startingIP"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 436
    return-void
.end method
