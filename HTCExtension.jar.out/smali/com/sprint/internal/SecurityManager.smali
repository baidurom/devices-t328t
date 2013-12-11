.class public Lcom/sprint/internal/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field public static final CONNECTIONMANAGER_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.CONNECTIONMANAGER"

.field public static final OMADM_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.OMADM"

.field public static final PLATFORM_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.PLATFORM"

.field public static final SLOT0_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.SLOT0"

.field public static final SYSTEMPROPERTIES_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES"

.field public static final SYSTEMPROPERTIES_WRITE_PERMISSION:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

.field private static final SignaturePermission:[Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private signaturePass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "SecurityManager"

    sput-object v0, Lcom/sprint/internal/SecurityManager;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sprint.internal.permission.OMADM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sprint.internal.permission.CONNECTIONMANAGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sprint.internal.permission.SLOT0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/internal/SecurityManager;->SignaturePermission:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SecurityManager;->signaturePass:Z

    .line 46
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/SecurityManager;->mContext:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/sprint/internal/SecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkPermission(Ljava/lang/String;)Z
    .locals 8
    .parameter "permission"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_0

    .line 69
    :goto_0
    return v3

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 59
    .local v0, Pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 60
    .local v1, Uid:I
    sget-object v5, Lcom/sprint/internal/SecurityManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p0, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_1

    .line 62
    sget-object v5, Lcom/sprint/internal/SecurityManager;->TAG:Ljava/lang/String;

    const-string v6, "checkPermission(): true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v0           #Pid:I
    .end local v1           #Uid:I
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    move v3, v4

    .line 69
    goto :goto_0

    .line 65
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #Pid:I
    .restart local v1       #Uid:I
    :cond_1
    sget-object v3, Lcom/sprint/internal/SecurityManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPermission():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p0, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 66
    goto :goto_0
.end method
