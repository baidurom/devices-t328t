.class Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;
.super Ljava/lang/Object;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNADiscoverRendererHelper"


# instance fields
.field private mDiscoverTimer:Ljava/util/Timer;

.field private mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

.field private mRendererID:Ljava/lang/String;

.field private mRendererIP:J

.field mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

.field private mTimeoutFlag:Z

.field private mTimerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 20
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 21
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 23
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return p1
.end method


# virtual methods
.method public checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z
    .locals 5
    .parameter "renderer"

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 108
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 109
    monitor-exit v2

    .line 125
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    if-eqz v3, :cond_1

    .line 112
    monitor-exit v2

    goto :goto_0

    .line 123
    .end local v0           #listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    .restart local v0       #listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    :cond_1
    :try_start_1
    iget-wide v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->ipAddress:J

    invoke-virtual {p0, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->isRendererFound(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->isRendererFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 119
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 120
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;->onDiscovered(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 123
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isRendererFound(J)Z
    .locals 2
    .parameter "ip"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererIP:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRendererFound(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setRendererIP(Ljava/lang/String;)V
    .locals 4
    .parameter "ip"

    .prologue
    .line 78
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererIP] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 80
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 41
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 42
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 43
    return-void
.end method

.method public startDiscover(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 136
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->refreshRendererList()V

    .line 137
    return-void
.end method
