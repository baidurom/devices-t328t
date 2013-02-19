.class public Lcom/htc/service/DeviceManager3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LM.java"


# static fields
.field public static final SETTINGS_SECURE_ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final SETTINGS_SECURE_EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"


# instance fields
.field private mService:Landroid/os/IDeviceManager3LM;


# direct methods
.method public constructor <init>(Landroid/os/IDeviceManager3LM;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    .line 36
    return-void
.end method

.method public static getNoEncryptionList(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1
    .parameter "res"

    .prologue
    .line 620
    if-eqz p0, :cond_0

    .line 621
    const v0, 0x1070031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blockAdb(Z)V
    .locals 3
    .parameter "block"

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "blockAdb: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppInstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppUninstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 3
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkUidPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkUidPermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "clear: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->clearApplicationUserData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 576
    :goto_0
    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "clearApplicationUserData: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "connectToVpn: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkgName"
    .parameter "delete_data"

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->deletePackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "deletePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "disablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectFromVpn(Z)Z
    .locals 3
    .parameter "doReset"

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disconnectFromVpn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->enablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "enablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->encryptPackage(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "encryptPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcState()I
    .locals 3

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getNfcState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    :goto_0
    return v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 527
    :goto_0
    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getPackageGids: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getVersion: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 3

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getWifiState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 556
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageURIAsString"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->installPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "installPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAdbBlocked()Z
    .locals 3

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isAdbBlocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    :goto_0
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isAdbBlocked: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncrypted()Z
    .locals 3

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :goto_0
    return v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isDataEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncryptionRequired()Z
    .locals 3

    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 478
    :goto_0
    return v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageDisabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncrypted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncryptionRequired(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncrypted()Z
    .locals 3

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 439
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncryptionRequired()Z
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    :goto_0
    return v1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSsidAllowed: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 408
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreChangePassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreContains(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreContains: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreDeleteKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 340
    :goto_0
    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreDeleteKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreGetKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetLastError()I
    .locals 3

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreGetLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreGetLastError: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreLock()Z
    .locals 3

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreLock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "key"

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStorePutKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreReset()Z
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 398
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreReset: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreSetPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreSetPassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public keyStoreTest()I
    .locals 3

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreTest: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreUnlock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreUnlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    :goto_0
    return v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "putSettingsSecureInt: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "putSettingsSecureString: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->restoreOriginalDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3
    .parameter "pkgNames"

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAllowedPackages(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAllowedPackages: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "permNameRegexPermMap"

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPermissionPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "pkgNameRegexPermMap"

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 230
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "pubkeyRegexPermMap"

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPubkeyPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppUninstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBluetoothEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootLock(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBootLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setBootLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 3
    .parameter "required"

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setDataEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNfcState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNotificationText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setNotificationText: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 3
    .parameter "required"

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSdEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSsidFilter(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setSsidFilter: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWifiState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setWifiState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setupVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setupVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "unlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
