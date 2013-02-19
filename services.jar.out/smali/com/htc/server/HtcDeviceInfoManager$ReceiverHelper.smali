.class Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_SYSTEM_CRASH:Ljava/lang/String; = "com.android.updater.NOTIFY_SYSTEM_CRASH"

.field private static final FLUSH_CLIENT_INFO_ACTION:Ljava/lang/String; = "com.htc.CLIENT_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_CLIENT_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_INFO_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_USAGE_TIME_ACTION:Ljava/lang/String; = "com.htc.USE_TIME_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_USAGE_TIME_INTERVAL:J = 0x0L

.field private static final LOGHWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogHWInfoTime"

.field private static final LOGINSTALLEDAPP_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogInstalledApp"

.field private static LOGINSTALLEDAPP_INTERVAL:J = 0x0L

.field private static final LOGLOCATIONINFO_ACTION:Ljava/lang/String; = "com.htc.screen_capture_action"

.field private static final LOGSWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogSWInfoTime"

#the value of this static final field might be set in the static constructor
.field private static final MAX_USER_ACTIVITY_DURATION:J = 0x0L

.field private static final MEDIA_RECEIVER_ACTION:Ljava/lang/String; = "com.htc.HtcDeviceInfoManager.MediaReceiver"

.field private static final UPDATE_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 126
    const-wide/16 v3, 0x0

    .local v3, flushInfoIntervalForTest:J
    const-wide/16 v5, 0x0

    .local v5, flushUsageTimeInterval:J
    const-wide/16 v1, 0x0

    .local v1, flushClientInfoInterval:J
    const-wide/16 v7, 0x0

    .line 128
    .local v7, updateInterval:J
    const-string v9, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 130
    :try_start_0
    const-string v9, "htcdeviceinfo.flush_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 131
    const-string v9, "htcdeviceinfo.flush_usage_time"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 132
    const-string v9, "htcdeviceinfo.flush_client_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 133
    const-string v9, "htcdeviceinfo.update"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 139
    :cond_0
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_1

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    :goto_1
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    .line 140
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v5

    :goto_2
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    .line 141
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v1

    :goto_3
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    .line 142
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v7

    :goto_4
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    .line 163
    const-string v9, "persist.deviceinfo.idletime"

    const-wide/32 v10, 0xafc8

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    .line 172
    const-wide/32 v9, 0x5265c00

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "[Parse interval]"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-wide/32 v9, 0x1b7740

    goto :goto_1

    .line 140
    :cond_2
    const-wide/32 v9, 0x5265c00

    goto :goto_2

    .line 141
    :cond_3
    const-wide/32 v9, 0x240c8400

    goto :goto_3

    .line 142
    :cond_4
    const-wide/32 v9, 0xea60

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 411
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 118
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    return-wide v0
.end method

.method private static getFlushClientInfoInterval()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 188
    const-wide/16 v0, 0x0

    .line 189
    .local v0, flushClientInfoInterval:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfClientStatLogOutput()J

    move-result-wide v2

    .line 191
    .local v2, lastTimeOfClientStatLogOutput:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 192
    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long v0, v4, v6

    .line 194
    :cond_0
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 195
    :cond_1
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    .line 198
    :cond_2
    return-wide v0
.end method

.method private static getflushUsageTimeInterval()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 202
    const-wide/16 v0, 0x0

    .line 203
    .local v0, flushUsageTimeInterval:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfUseTimeLogOutput()J

    move-result-wide v2

    .line 205
    .local v2, lastTimeOfUseTimeLogOutput:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 206
    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long v0, v4, v6

    .line 208
    :cond_0
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 209
    :cond_1
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    .line 212
    :cond_2
    return-wide v0
.end method

.method public static registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.USE_TIME_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.htc.CLIENT_INFO_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    const-string v1, "com.htc.CLIENT_INFO_FLUSH"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFlushClientInfoInterval()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 181
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfClientStatLogOutput(J)V

    .line 183
    const-string v1, "com.htc.USE_TIME_FLUSH"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getflushUsageTimeInterval()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 184
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfUseTimeLogOutput(J)V

    .line 185
    return-void
.end method

.method public static registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 11
    .parameter "context"
    .parameter "handler"
    .parameter "infoOperators"

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 255
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 256
    .local v1, co:Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;
    const-string v8, "screen_off_timeout"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 259
    const-string v8, "screen_off_timeout"

    sget-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v2, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 261
    .local v3, duration:J
    move-object v0, p2

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .line 262
    .local v7, op:Lcom/htc/server/HtcInfoOperator;
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    .line 263
    invoke-virtual {v7, v3, v4}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    .line 261
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    :cond_0
    sget-wide v8, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 267
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method

.method public static registerDebugInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 224
    return-void
.end method

.method public static registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "com.htc.screen_capture_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 277
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 278
    return-void
.end method

.method public static registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "infoOperators"

    .prologue
    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;

    invoke-direct {v1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;-><init>([Lcom/htc/server/HtcInfoOperator;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method public static registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 227
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 229
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;

    invoke-direct {v1, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 237
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 239
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method public static setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "action"
    .parameter "interval"

    .prologue
    const/4 v6, 0x0

    .line 436
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 437
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 439
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v3, p2, v5

    .line 440
    .local v3, triggerTime:J
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 441
    return-void
.end method
