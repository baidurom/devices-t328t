.class public Lcom/htc/service/HtcHardwareManager;
.super Ljava/lang/Object;
.source "HtcHardwareManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcHardwareManager"


# instance fields
.field private mService:Landroid/os/IHtcHardwareService;


# direct methods
.method public constructor <init>(Landroid/os/IHtcHardwareService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    .line 20
    return-void
.end method


# virtual methods
.method public UsbMiscControl_IPT(I)I
    .locals 3
    .parameter "iMode"

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "UsbMiscControl_IPT: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCapsLedState()I
    .locals 3

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getCapsLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 28
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getCapsLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFnLedState()I
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getFnLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getFnLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHeadsetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getHeadsetType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const-string v1, "error_state"

    goto :goto_0
.end method

.method public isSupportBeats()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public setBeatsState(ZZLjava/lang/String;)V
    .locals 0
    .parameter "effectOn"
    .parameter "appPlay"
    .parameter "appName"

    .prologue
    .line 116
    return-void
.end method

.method public setHeadsetTTYType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->setHeadsetTTYType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string/jumbo v2, "setHeadsetTTYType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
