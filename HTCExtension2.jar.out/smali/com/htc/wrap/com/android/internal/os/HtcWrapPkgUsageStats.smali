.class public Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;
.super Lcom/android/internal/os/PkgUsageStats;
.source "HtcWrapPkgUsageStats.java"


# instance fields
.field public HtclaunchCount:I

.field public HtcpackageName:Ljava/lang/String;

.field public HtcusageTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/util/Map;)V
    .locals 2
    .parameter "pkgName"
    .parameter "count"
    .parameter "time"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p5, lastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    .line 9
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->HtcpackageName:Ljava/lang/String;

    .line 10
    iget v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->launchCount:I

    iput v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->HtclaunchCount:I

    .line 11
    iget-wide v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->usageTime:J

    iput-wide v0, p0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;->HtcusageTime:J

    .line 15
    return-void
.end method
