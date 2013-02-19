.class public Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "connectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    const-string v1, "HtcDLNADiscoverRendererHelper"

    const-string v2, "Renderer discoverer timeout!!!"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const/4 v3, 0x1

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z
    invoke-static {v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->access$102(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;Z)Z

    .line 54
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 55
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 56
    monitor-exit v2

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;->onTimeout()V

    .line 58
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 59
    monitor-exit v2

    goto :goto_0

    .end local v0           #listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
