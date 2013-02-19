.class Lcom/htc/server/HtcDebugInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcDebugInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;,
        Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field private static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field private static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field private static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field private static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field private static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final URI_SHORTCUT_LIST:Landroid/net/Uri; = null

.field private static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri; = null

.field private static final mDebugInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_debug"


# instance fields
.field private keyguardManager:Landroid/app/KeyguardManager;

.field private final mContext:Landroid/content/Context;

.field private mForegroundProcess:Ljava/lang/String;

.field private mLastForegroundUpdateTime:J

.field private mProcessInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/os/ProcessStats;

.field private mScreenOn:Z

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/os/PowerManager;Landroid/content/Context;)V
    .locals 3
    .parameter "pm"
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcDebugInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 73
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 77
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 79
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 82
    :cond_1
    iput-object p2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/app/KeyguardManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/server/HtcDebugInfoOperator;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutVisibility(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 416
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    .line 417
    return-object v0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 573
    const/4 v1, -0x1

    .line 574
    .local v1, index:I
    const/4 v2, -0x1

    .line 575
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 576
    if-ltz v1, :cond_0

    .line 578
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 585
    :goto_0
    return v2

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 618
    const/4 v1, -0x1

    .line 619
    .local v1, index:I
    const/4 v2, 0x0

    .line 620
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 621
    if-ltz v1, :cond_0

    .line 623
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 630
    :goto_0
    return-object v2

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 590
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-object v2

    .line 593
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 594
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v10, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;>;"
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    :cond_1
    const-string v0, "shortcut_app_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, appName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, className:Ljava/lang/String;
    new-instance v0, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;

    invoke-direct {v0, v7, v6}, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 609
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_4

    .line 610
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_3
    :goto_1
    const/4 v8, 0x0

    :cond_4
    move-object v2, v10

    .line 614
    goto :goto_0

    .line 606
    :catch_0
    move-exception v9

    .line 607
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    if-eqz v8, :cond_4

    .line 610
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 609
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 610
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_5
    const/4 v8, 0x0

    .line 609
    :cond_6
    throw v0
.end method

.method private getShortcutVisibility(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return v9

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 556
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 558
    .local v8, visible:Z
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    const-string v0, "shortcut_visibility"

    invoke-direct {p0, v6, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 564
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_2
    :goto_2
    const/4 v6, 0x0

    :cond_3
    move v9, v8

    .line 569
    goto :goto_0

    :cond_4
    move v8, v9

    .line 559
    goto :goto_1

    .line 561
    :catch_0
    move-exception v7

    .line 562
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    if-eqz v6, :cond_3

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 564
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_5
    const/4 v6, 0x0

    .line 564
    :cond_6
    throw v0
.end method

.method private getSimState()I
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 164
    :cond_0
    return v0
.end method

.method private getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;
    .locals 3
    .parameter "context"

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Client statistic: context null, getWeatherRes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 409
    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    .line 410
    .local v0, mStateResources:Lcom/htc/weather/StateResources;
    invoke-virtual {v0, p1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateTimeInfo(Ljava/lang/String;)V
    .locals 14
    .parameter "processName"

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 94
    .local v8, now:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    .line 95
    .local v3, duration:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 96
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 98
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 99
    .local v7, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 100
    .local v6, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 102
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 104
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 105
    .local v1, CPUTime:J
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 106
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    .line 107
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 109
    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 127
    .end local v1           #CPUTime:J
    :goto_1
    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 128
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    .line 129
    if-eqz v6, :cond_2

    .line 130
    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 132
    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 110
    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 113
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    .line 114
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 116
    :cond_4
    iput-wide v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    goto :goto_1

    .line 119
    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 120
    .restart local v1       #CPUTime:J
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    .line 121
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    .line 122
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 124
    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 135
    .end local v1           #CPUTime:J
    .end local v6           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_7
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 138
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 141
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 142
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 143
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 146
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_CRASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 149
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 150
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 151
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 152
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v2

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKernelCrash()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method addRadioCrash()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method addSystemCrash()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method flush()V
    .locals 4

    .prologue
    .line 169
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "FLUSH, file path = /data/system/deviceinfo_debug"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->getSimState()I

    move-result v2

    iput v2, v1, Landroid/app/HtcDeviceInfo;->simState:I

    .line 172
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 173
    .local v0, diffInfo:Landroid/app/HtcDeviceInfo;
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logLocationInfo()V

    .line 174
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logStatusbarInfo()V

    .line 175
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logWallpaperInfo()V

    .line 176
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logLockscreenShortcutInfo()V

    .line 177
    sget-wide v1, Lcom/htc/server/HtcDebugInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    .line 178
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 180
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v3, "/data/system/deviceinfo_debug"

    invoke-virtual {v1, v3}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method flushClientStatistic()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method flushUsageTime()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 4
    .parameter "processName"

    .prologue
    .line 297
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 299
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 300
    iget-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    monitor-exit v3

    .line 303
    :goto_0
    return-wide v1

    .line 302
    :cond_0
    monitor-exit v3

    .line 303
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 302
    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method killAllProc()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 249
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "KILL_ALL_PROC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    const/4 v0, 0x0

    .line 253
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 255
    .restart local v0       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 256
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 257
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 5
    .parameter "processName"

    .prologue
    const/4 v4, -0x1

    .line 233
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL_PROC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 235
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 238
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 239
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v2

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logHWInfoTime()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method logInstalledApp()V
    .locals 11

    .prologue
    .line 307
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 308
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "Client statistic: context null, logInstalledApp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v6, plainText:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 315
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 319
    :try_start_0
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, j:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 323
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, label:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .end local v5           #label:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 327
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    const/4 v8, 0x0

    const-string v9, ";"

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .local v1, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_4

    .line 334
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 339
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const/4 v6, 0x0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 342
    .end local v0           #aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #cipherText:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #j:I
    :catch_1
    move-exception v2

    .line 343
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "logInstalledApp fail"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method logLocationInfo()V
    .locals 14

    .prologue
    .line 357
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v12, :cond_0

    .line 358
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "Client statistic: context null, logLocationInfo"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v11, "unknown"

    .local v11, weather:Ljava/lang/String;
    const-string v5, "unknown"

    .local v5, location:Ljava/lang/String;
    const-string v1, "unknown"

    .local v1, city:Ljava/lang/String;
    const-string v6, "unknown"

    .local v6, network:Ljava/lang/String;
    const-string v10, "unknown"

    .line 363
    .local v10, time:Ljava/lang/String;
    :try_start_0
    const-string v12, "gsm.operator.alpha"

    const-string v13, "unknown"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v8

    .line 365
    .local v8, req:Lcom/htc/util/weather/WSPRequest;
    if-eqz v8, :cond_3

    .line 366
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v2

    .line 367
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v2, :cond_3

    .line 368
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 369
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/htc/server/HtcDebugInfoOperator;->getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;

    move-result-object v9

    .line 370
    .local v9, res:Lcom/htc/weather/StateResources;
    if-eqz v9, :cond_5

    .line 371
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 372
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 373
    const-string v11, "unknown"

    .line 378
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 379
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_2
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 390
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_3
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    .local v7, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 393
    .local v0, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_4

    .line 395
    sget-object v12, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v12, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 376
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v7           #plainText:Ljava/lang/StringBuilder;
    .restart local v2       #data:Lcom/htc/util/weather/WSPPData;
    .restart local v8       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v9       #res:Lcom/htc/weather/StateResources;
    :cond_5
    :try_start_2
    const-string v11, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 386
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :catch_0
    move-exception v4

    .line 387
    .local v4, ex:Ljava/lang/Exception;
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "logLocationInfo occures exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 397
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v7       #plainText:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 398
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "encrypt exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 400
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    const/4 v7, 0x0

    throw v12
.end method

.method logLockscreenShortcutInfo()V
    .locals 4

    .prologue
    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 505
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "Client statistic: context null, logLockscreenShortcutInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v1

    .line 509
    .local v1, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v2, Lcom/htc/server/HtcDebugInfoOperator$2;

    invoke-direct {v2, p0}, Lcom/htc/server/HtcDebugInfoOperator$2;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    .end local v1           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "logLockscreenShortcutInfo exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logSWInfoTime()V
    .locals 2

    .prologue
    .line 349
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method logStatusbarInfo()V
    .locals 4

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v1

    .line 423
    .local v1, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v2, Lcom/htc/server/HtcDebugInfoOperator$1;

    invoke-direct {v2, p0}, Lcom/htc/server/HtcDebugInfoOperator$1;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "logStatusbarInfo exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logWallpaperInfo()V
    .locals 8

    .prologue
    .line 465
    :try_start_0
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 466
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "Client statistic: context null, logWallpaperInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 471
    .local v0, cipherText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 472
    .local v3, mWallpaperComponent:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 473
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 475
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 476
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 477
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 478
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v2           #label:Ljava/lang/CharSequence;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_1

    .line 490
    sget-object v6, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v6, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :cond_1
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 481
    .restart local v2       #label:Ljava/lang/CharSequence;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 497
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #mWallpaperComponent:Landroid/content/ComponentName;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v5           #plainText:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 498
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 484
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v3       #mWallpaperComponent:Landroid/content/ComponentName;
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v5       #plainText:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #mWallpaperComponent:Landroid/content/ComponentName;
    const-string v6, "android"

    const-string v7, "ImageWallpaper"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .restart local v3       #mWallpaperComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 492
    :catch_1
    move-exception v1

    .line 493
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 495
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v5, 0x0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "RESET "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 267
    return-void
.end method

.method screenOff()V
    .locals 8

    .prologue
    .line 285
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_OFF pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    .local v2, now_off:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 289
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 291
    .end local v0           #duration:J
    .end local v2           #now_off:J
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 292
    return-void

    .line 285
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method screenOn()V
    .locals 8

    .prologue
    .line 272
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_ON pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 274
    .local v2, now_on:J
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 276
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 278
    .end local v0           #duration:J
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 279
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 280
    return-void

    .line 272
    .end local v2           #now_on:J
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method setTop(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 195
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 197
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 198
    return-void
.end method

.method startProc(IILjava/lang/String;)V
    .locals 7
    .parameter "pid"
    .parameter "group"
    .parameter "processName"

    .prologue
    const-wide/16 v4, 0x0

    .line 203
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 204
    .local v1, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v1, :cond_1

    .line 205
    new-instance v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v1}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 206
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 207
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 208
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 209
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 210
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v1, v0

    .line 218
    if-eqz v1, :cond_0

    .line 219
    const-string v3, "HtcDeviceInfoManager"

    const-string v5, "process info already exist. why?"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_1
    iput-object p3, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 223
    iput p1, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 224
    iput p2, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 225
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 226
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    return-void

    .line 212
    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_1
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 213
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 214
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v2       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto :goto_1
.end method

.method update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 187
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 190
    return-void
.end method
