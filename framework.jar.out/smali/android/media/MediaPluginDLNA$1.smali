.class Landroid/media/MediaPluginDLNA$1;
.super Ljava/lang/Object;
.source "MediaPluginDLNA.java"

# interfaces
.implements Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected => mDLNAManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Landroid/media/MediaPluginDLNA$ControllerListener;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    #setter for: Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$102(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 127
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$100(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 128
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Landroid/media/MediaPluginDLNA$RendererListener;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$RendererListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    #setter for: Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$302(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;

    .line 129
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    .line 130
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$500(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$502(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;

    .line 132
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$500(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xc350

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onServiceConnected=> getMirrorRenderer() return valid object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v1, 0x0

    #setter for: Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;Z)Z

    .line 137
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 139
    :cond_2
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onServiceConnected=> getMirrorRenderer() return null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->refreshRendererList()V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onServiceError()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method
