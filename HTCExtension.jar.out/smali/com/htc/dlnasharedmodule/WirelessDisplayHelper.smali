.class public Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$1;,
        Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;,
        Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

.field private mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 41
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 42
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    .line 46
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    .line 48
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 49
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->registerReceiver()V

    .line 50
    const-string v0, "WirelessDisplayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WirelessDisplayManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    return-object v0
.end method

.method public static getIPLong(Ljava/lang/String;)J
    .locals 11
    .parameter "ip"

    .prologue
    .line 122
    const-wide/16 v3, -0x1

    .line 125
    .local v3, num:J
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 127
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v5, 0x20

    .line 129
    .local v5, offset:I
    array-length v8, v0

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 134
    add-int/lit8 v5, v5, -0x8

    .line 135
    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 136
    .local v6, token:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x100

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    .line 138
    :cond_0
    const-wide/16 v3, -0x1

    .line 143
    .end local v6           #token:J
    :cond_1
    const-string v8, "WirelessDisplayHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "long value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #offset:I
    :cond_2
    :goto_1
    return-wide v3

    .line 141
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v5       #offset:I
    .restart local v6       #token:J
    :cond_3
    shl-long v8, v6, v5

    add-long/2addr v3, v8

    .line 129
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 146
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #offset:I
    .end local v6           #token:J
    :catch_0
    move-exception v1

    .line 148
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "WirelessDisplayHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to translate ip to long, ip ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public static getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 206
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v5

    .line 207
    .local v5, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v5}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v6

    .line 236
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return-object v1

    .line 209
    .restart local v5       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 210
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    if-nez v1, :cond_5

    .line 212
    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_1
    move-object v1, v6

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 218
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iget-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v7, :cond_3

    .line 220
    move-object v1, v0

    .line 224
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_4
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Found dongle via getDiscoveryDongleList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v2           #dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    .line 235
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 236
    goto :goto_0

    .line 228
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #dongleInfo:Lcom/htc/service/DongleInfo;
    .restart local v5       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_5
    :try_start_1
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Found dongle via getDefaultDongle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 248
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 249
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return-object v2

    .line 251
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 253
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getReadyDongleIP] Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 189
    :try_start_0
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WirelessDisplayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getWirelessDisplayManager] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isInMirrorMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_0
    const-string v3, "wireless_display"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 62
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v2

    .line 64
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 66
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 68
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isInMirrorMode] Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z
    .locals 2
    .parameter "mgr"

    .prologue
    .line 444
    if-nez p0, :cond_0

    .line 445
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[isWirelessDisplayManagerNull][mgr is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final pauseMirror(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 336
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 337
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v2

    .line 339
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 340
    .local v0, nRet:I
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[pauseMirror] nRet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const/4 v2, 0x1

    goto :goto_0

    .line 343
    .end local v0           #nRet:I
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 157
    new-instance v1, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$1;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method public static final resumeMirror(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 317
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return-void

    .line 319
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 320
    .local v0, nRet:I
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resumeMirror] nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v0           #nRet:I
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 463
    if-nez p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 465
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 466
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 469
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDefaultDongleMirrorEnabled(Landroid/content/Context;Z)Z
    .locals 7
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 268
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v2

    .line 269
    .local v2, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    .end local v2           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return v3

    .line 271
    .restart local v2       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 272
    .local v0, dongleInfo:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v2, p1}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 276
    .end local v0           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v2           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v1

    .line 278
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "WirelessDisplayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDefaultDongleMirrorEnabled] Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final shouldPlayOnTV(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 380
    :try_start_0
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 382
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return v2

    .line 385
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 386
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 391
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final startMirror(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 291
    :try_start_0
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 293
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v2

    .line 296
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror][mirrorNow]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->mirrorNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    const/4 v2, 0x1

    goto :goto_0

    .line 300
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 302
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror][mirrorNow]Exception!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final stopMirror(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 360
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 361
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return-void

    .line 363
    .restart local v1       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    move-result v0

    .line 364
    .local v0, bRet:Z
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stopMirror] bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v0           #bRet:Z
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final isInMirrorMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isInMirrorMode] Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMirrorRenderer(J)Z
    .locals 6
    .parameter "ip"

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v3, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 102
    .local v0, dongleIP:J
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 104
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isMirrorRenderer] Dongle found with matching IP, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMirrorRenderer] In mirror mode, not mataching with dongle IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", renderer IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->unregisterReceiver()V

    .line 175
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    .line 176
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mReceiver:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 177
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 178
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method public setDLNAPreloadFlag(Z)Z
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 456
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 459
    const/4 v1, 0x1

    goto :goto_0
.end method
