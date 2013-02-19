.class public Lcom/htc/service/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private mService:Landroid/os/IDisplayService;


# direct methods
.method public constructor <init>(Landroid/os/IDisplayService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    .line 16
    return-void
.end method


# virtual methods
.method public IsHDMIConnected()Z
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsHDMIEnable()Z
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3
    .parameter "appname"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "clearBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get3DMode()I
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->Get3DMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "get3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 3
    .parameter "Mode3D"
    .parameter "appname"

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string/jumbo v2, "set3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHDMI(ZLjava/lang/String;)I
    .locals 3
    .parameter "enable"
    .parameter "appname"

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string/jumbo v2, "setHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3
    .parameter "ModeTV"
    .parameter "appname"

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string/jumbo v2, "setTVMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "appname"
    .parameter "file"

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string/jumbo v2, "showBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method
