.class public Lcom/htc/wrap/com/android/internal/app/HtcWrapIUsageStats;
.super Ljava/lang/Object;
.source "HtcWrapIUsageStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/htc/wrap/com/android/internal/app/HtcWrapIUsageStats;->getIUsageStats()Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private static getIUsageStats()Lcom/android/internal/app/IUsageStats;
    .locals 1

    .prologue
    .line 11
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    return-object v0
.end method
