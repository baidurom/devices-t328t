.class public Lcom/baidu/security/sysop/YiProcessManager;
.super Ljava/lang/Object;
.source "YiProcessManager.java"


# static fields
.field public static final FETCH_TYPE_ALL:I = 0x0

.field public static final FETCH_TYPE_CLEANABLE:I = 0x1

.field static final KILL_BACKGROUND_MAX_RETRY_TIMES:I = 0x5

.field static final KILL_BACKGROUND_RETRY_PERIOD:I = 0x64

.field static final MAX_SERVICES:I = 0x96

.field public static final PROTECT_TYPE_NO_PROTECTION:I = 0x0

.field public static final PROTECT_TYPE_SYSTEM_DEPENDENCE:I = 0x1

.field public static final PROTECT_TYPE_USER_KEEP:I = 0x2

.field private static final SERVICE_TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "YiProcessManager"

.field private static mInstance:Lcom/baidu/security/sysop/YiProcessManager;


# instance fields
.field private final mAm:Landroid/app/ActivityManager;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mContext:Landroid/content/Context;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSecondaryServerMem:J

.field private mService:Lcom/baidu/security/bm/IBroadcastManagerService;

.field private final mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 617
    const/16 v1, 0xa

    .line 619
    .local v1, i:I
    :cond_0
    const-string v6, "BroadcastManagerService"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 620
    add-int/lit8 v1, v1, -0x1

    .line 622
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-nez v6, :cond_1

    if-gtz v1, :cond_0

    .line 624
    :cond_1
    iput-object p1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    .line 625
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    .line 627
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 628
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    .line 631
    :goto_0
    new-instance v6, Lcom/baidu/security/sysop/YiRunningState;

    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0}, Lcom/baidu/security/sysop/YiRunningState;-><init>(Landroid/content/Context;Lcom/baidu/security/sysop/YiProcessManager;)V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    .line 633
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    .line 634
    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 635
    sget-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 636
    .local v5, pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 630
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    goto :goto_0

    .line 640
    :cond_3
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 641
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 642
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 643
    .local v4, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 644
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mSecondaryServerMem:J

    .line 645
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/baidu/security/sysop/YiProcessManager;

    invoke-direct {v0, p0}, Lcom/baidu/security/sysop/YiProcessManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    return-object v0
.end method

.method private procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 238
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :goto_0
    return-object v5

    .line 241
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 242
    .local v3, mergedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 243
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 244
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-nez v0, :cond_3

    .line 245
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, ptype:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 247
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/baidu/security/sysop/CleanableAppInfo;

    invoke-direct {v6, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;-><init>(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 251
    .end local v4           #ptype:I
    :cond_3
    invoke-virtual {v0, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;->addItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_1

    .line 255
    .end local v0           #appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public appIsLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->appIsLocked(Ljava/lang/String;)Z

    move-result v1

    .line 482
    :goto_0
    return v1

    .line 476
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 272
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v2, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 270
    .local v1, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_0
.end method

.method public cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    :cond_2
    iget-boolean v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mBackground:Z

    if-nez v8, :cond_7

    .line 290
    :cond_3
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 291
    iget-object v5, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 293
    .local v5, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 294
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 295
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 299
    .local v6, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_4
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_6

    .line 312
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    .line 314
    new-array v4, v11, [I

    .line 315
    .local v4, pids:[I
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    aput v8, v4, v10

    .line 316
    const/4 v0, 0x5

    .line 317
    .local v0, count:I
    :goto_2
    if-lez v0, :cond_0

    .line 321
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 322
    .local v3, memInfos:[Landroid/os/Debug$MemoryInfo;
    aget-object v8, v3, v10

    if-eqz v8, :cond_0

    aget-object v8, v3, v10

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v8

    if-lez v8, :cond_0

    .line 328
    if-gt v0, v11, :cond_5

    .line 332
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    .line 347
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 348
    goto :goto_2

    .line 336
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_4
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto :goto_3

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 354
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #memInfos:[Landroid/os/Debug$MemoryInfo;
    .end local v4           #pids:[I
    :cond_6
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    .end local v2           #i:I
    .end local v5           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v7           #size:I
    :cond_7
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 363
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 160
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCleanableApps()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v12}, Lcom/baidu/security/sysop/YiRunningState;->reset()V

    .line 184
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 185
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    iget-object v13, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v12, v13, v14}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    .line 188
    :goto_0
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v12}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredMergedItems()Ljava/util/ArrayList;

    move-result-object v10

    .line 189
    .local v10, procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v12}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 190
    .local v3, backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-nez v10, :cond_1

    const/4 v11, 0x0

    .line 191
    .local v11, pwsLen:I
    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x0

    .line 194
    .local v4, bgpLen:I
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getLockedApps()[Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, lockedAppsArray:[Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    array-length v12, v9

    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 196
    .local v8, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v0, v2, v5

    .line 197
    .local v0, app:Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 187
    .end local v0           #app:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v4           #bgpLen:I
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9           #lockedAppsArray:[Ljava/lang/String;
    .end local v10           #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v11           #pwsLen:I
    :cond_0
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    iget-object v13, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v12, v13, v14}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    goto :goto_0

    .line 190
    .restart local v3       #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v10       #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_1

    .line 191
    .restart local v11       #pwsLen:I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_2

    .line 200
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #bgpLen:I
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9       #lockedAppsArray:[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    add-int v12, v11, v4

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v1, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-lez v11, :cond_5

    .line 202
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 203
    .local v6, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 204
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 209
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 212
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_5
    if-lez v4, :cond_b

    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 215
    .restart local v6       #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_7

    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_6

    .line 219
    :cond_7
    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v12, :cond_8

    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v12, v12, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v12, :cond_9

    .line 220
    :cond_8
    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v13, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 221
    iget-object v12, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 223
    :cond_9
    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_a

    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_a

    iget-object v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 224
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 229
    :cond_a
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 233
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_b
    invoke-direct {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    return-object v12
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, retVal:[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2}, Lcom/baidu/security/bm/IBroadcastManagerService;->getLockedApps()[Ljava/lang/String;

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 452
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMemFreeSize()J
    .locals 6

    .prologue
    .line 502
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 505
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 515
    .local v0, freeMem:J
    return-wide v0
.end method

.method public getMemTotalSize()J
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getProtectionType(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 605
    if-nez p1, :cond_1

    .line 606
    const/4 v0, 0x0

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 609
    :cond_1
    const/4 v0, 0x0

    .line 610
    .local v0, retVal:I
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getRunningAppProcesses(I)Ljava/util/List;
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 570
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 571
    .local v6, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    .line 572
    const/4 v6, 0x0

    .line 593
    .end local v6           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    return-object v6

    .line 575
    .restart local v6       #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    if-ne p1, v9, :cond_0

    .line 576
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 577
    .local v2, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 578
    .local v7, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 580
    .local v5, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 581
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v7

    .line 585
    if-eq v7, v9, :cond_3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 586
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 580
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getRunningServices(I)Ljava/util/List;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 529
    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 530
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 531
    const/4 v3, 0x0

    .line 557
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    return-object v3

    .line 534
    .restart local v3       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    if-ne p1, v6, :cond_0

    .line 535
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 536
    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 537
    .local v1, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 539
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 543
    if-nez v1, :cond_3

    .line 544
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 545
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 551
    :cond_3
    if-eq v1, v6, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 552
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public lockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApp(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApps([Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAppServices(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 115
    :cond_0
    return-void
.end method

.method public stopBackgroundAppProcess(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cmpName"

    .prologue
    .line 88
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public unlockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApp(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApps([Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
