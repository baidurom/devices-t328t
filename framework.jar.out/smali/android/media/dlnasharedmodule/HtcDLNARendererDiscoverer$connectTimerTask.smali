.class public Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "connectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;


# direct methods
.method public constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    const-string v1, "HtcDLNADiscoverRendererHelper"

    const-string v2, "Renderer discoverer timeout!!!"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->access$000(Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const/4 v3, 0x1

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z
    invoke-static {v1, v3}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->access$102(Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;Z)Z

    .line 46
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v0, v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 47
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 48
    monitor-exit v2

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;->onTimeout()V

    .line 50
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer$connectTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 51
    monitor-exit v2

    goto :goto_0

    .end local v0           #listener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
