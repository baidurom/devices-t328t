.class public Lcom/baidu/security/bm/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final TAG:Ljava/lang/String; = "BroadcastManager"

.field private static mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

.field private static mInstance:Lcom/baidu/security/bm/BroadcastManager;


# instance fields
.field private mService:Lcom/baidu/security/bm/IBroadcastManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    .line 28
    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 223
    const/16 v0, 0xa

    .line 225
    .local v0, i:I
    :cond_0
    const-string v1, "BroadcastManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 226
    add-int/lit8 v0, v0, -0x1

    .line 228
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-nez v1, :cond_1

    if-gtz v0, :cond_0

    .line 230
    :cond_1
    invoke-static {}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getInstance()Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    move-result-object v1

    sput-object v1, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    .line 231
    return-void
.end method

.method public static getInstance()Lcom/baidu/security/bm/BroadcastManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/security/bm/BroadcastManager;

    invoke-direct {v0}, Lcom/baidu/security/bm/BroadcastManager;-><init>()V

    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    return-object v0
.end method


# virtual methods
.method public autolaunchSettingEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 130
    const/4 v1, 0x1

    .line 132
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->packageInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 4

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2}, Lcom/baidu/security/bm/IBroadcastManagerService;->getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    sget-object v2, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    invoke-virtual {v2, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getAutoLaunchApps([Lcom/baidu/security/bm/AutoLaunchAppInfo;)[Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v1

    .line 65
    return-object v1

    .line 57
    :cond_0
    :try_start_1
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPackageStopped(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->isPackageStopped(Ljava/lang/String;)Z

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 192
    :cond_0
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isTrustedApp(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordCleanedApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addCleanedApp(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordCleanedApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addCleanedApps([Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 3
    .parameter "appInfo"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v1, :cond_1

    .line 80
    sget-object v1, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    iget-boolean v2, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V

    .line 84
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->updateBlackListItem(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateAutoLaunchAppInfo([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 7
    .parameter "newPart"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    move-object v1, p1

    .local v1, arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 107
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget-object v5, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 108
    sget-object v5, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    iget-boolean v6, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    invoke-virtual {v5, v0, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V

    .line 106
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v5, :cond_4

    .line 114
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v5, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->updateBlackList([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v5, "BroadcastManager"

    const-string v6, "BroadcastManagerService has not been started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
