.class Lcom/htc/server/HtcReleaseInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcReleaseInfoOperator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final STR_DATA_PATH:Ljava/lang/String; = "/data"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final mAppCrash:Ljava/lang/String; = "app"

.field private static final mKernelCrash:Ljava/lang/String; = "kernel"

.field private static final mRadioCrash:Ljava/lang/String; = "radio"

.field private static final mReleaseInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_release"

.field private static final mSystemCrash:Ljava/lang/String; = "system"

.field private static mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo; = null

.field private static final mUseTimeDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_use_diff"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    .line 33
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 35
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 36
    const-string v0, "system"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 37
    const-string v0, "kernel"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 38
    const-string v0, "radio"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_use_diff"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 41
    sget-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 47
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 48
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 53
    :cond_1
    return-void
.end method

.method public static getFreeSize(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 217
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, dataFs:Landroid/os/StatFs;
    const-wide/16 v1, -0x1

    .line 219
    .local v1, freeDataSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 221
    return-wide v1
.end method

.method private update()V
    .locals 7

    .prologue
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 145
    .local v2, now:J
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v0, v2, v4

    .line 146
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 147
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 150
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    sub-long v0, v2, v4

    .line 151
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 152
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    .line 153
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 164
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 165
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 167
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 157
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 158
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 160
    :cond_0
    return-void
.end method

.method addKernelCrash()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "kernel"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 178
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 179
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 181
    :cond_0
    return-void
.end method

.method addRadioCrash()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 185
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 186
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 188
    :cond_0
    return-void
.end method

.method addSystemCrash()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 171
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 172
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 174
    :cond_0
    return-void
.end method

.method createCrashCountRecord(Ljava/lang/String;)V
    .locals 2
    .parameter "crashType"

    .prologue
    .line 56
    new-instance v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 57
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method flush()V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 130
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 131
    .local v0, diffInfo:Landroid/app/HtcDeviceInfo;
    sget-object v1, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 132
    sget-object v1, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v2, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 136
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v2, "/data/system/deviceinfo_release"

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 141
    return-void
.end method

.method flushClientStatistic()V
    .locals 11

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 64
    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v8, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v7, v8}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v1

    .line 65
    .local v1, diffInfo:Landroid/app/HtcDeviceInfo;
    sget-object v7, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v7, v1}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 66
    sget-object v7, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v8, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v7, v8}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 67
    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v7}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 69
    iget-object v7, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v8, "app"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 70
    .local v0, app:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v7, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v8, "system"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 71
    .local v5, sys:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v7, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v8, "kernel"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 72
    .local v3, kernel:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v7, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v8, "radio"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 75
    .local v4, radio:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v6

    .line 76
    .local v6, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v7, "sys_statistics"

    invoke-virtual {v6, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "device_error_count"

    invoke-interface {v7, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "app_crash_count"

    if-nez v0, :cond_0

    const-string v7, "0"

    :goto_0
    invoke-interface {v8, v9, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "system_crash_count"

    if-nez v5, :cond_1

    const-string v7, "0"

    :goto_1
    invoke-interface {v8, v9, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "anr_count"

    if-nez v0, :cond_2

    const-string v7, "0"

    :goto_2
    invoke-interface {v8, v9, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "kernel_crash_count"

    if-nez v3, :cond_3

    const-string v7, "0"

    :goto_3
    invoke-interface {v8, v9, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "radio_crash_count"

    if-nez v4, :cond_4

    const-string v7, "0"

    :goto_4
    invoke-interface {v8, v9, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "awake_time"

    iget-wide v9, v1, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "active_time"

    iget-wide v9, v1, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 86
    invoke-static {v6}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 87
    invoke-virtual {v6}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v6           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_5
    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v7}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 92
    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v8, "/data/system/deviceinfo_release"

    invoke-virtual {v7, v8}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 93
    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v7}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 94
    return-void

    .line 76
    .restart local v6       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    :try_start_1
    iget v7, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget v7, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget v7, v3, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    iget v7, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_4

    .line 88
    .end local v6           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "HtcDeviceInfoManager"

    const-string v8, "Flush usage time fail:"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method flushUsageTime()V
    .locals 9

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 99
    iget-object v5, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v2

    .line 100
    .local v2, diffInfo:Landroid/app/HtcDeviceInfo;
    iget-object v5, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5, v2}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 101
    iget-object v5, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v6, "/data/system/deviceinfo_release"

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 102
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v5}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 104
    :try_start_0
    const-string v5, "/data"

    invoke-static {v5}, Lcom/htc/server/HtcReleaseInfoOperator;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    .local v0, dataSize:J
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    .line 107
    .local v4, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v5, "sys_statistics"

    invoke-virtual {v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "device_use_time"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "awake_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "active_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "use_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "free_data_storage"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 114
    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 115
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #dataSize:J
    .end local v4           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 121
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v6, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 125
    return-void

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "HtcDeviceInfoManager"

    const-string v6, "Flush usage time fail:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 2
    .parameter "processName"

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method killAllProc()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 0
    .parameter "processName"

    .prologue
    .line 199
    return-void
.end method

.method logHWInfoTime()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method logInstalledApp()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method logLocationInfo()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method logLockscreenShortcutInfo()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method logSWInfoTime()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method logStatusbarInfo()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method logWallpaperInfo()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method screenOff()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method screenOn()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method setTop(Ljava/lang/String;)V
    .locals 0
    .parameter "processName"

    .prologue
    .line 197
    return-void
.end method

.method startProc(IILjava/lang/String;)V
    .locals 0
    .parameter "pid"
    .parameter "group"
    .parameter "processName"

    .prologue
    .line 198
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 0
    .parameter "processName"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 193
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 194
    return-void
.end method
