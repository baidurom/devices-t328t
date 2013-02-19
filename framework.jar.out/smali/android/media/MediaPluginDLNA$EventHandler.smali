.class Landroid/media/MediaPluginDLNA$EventHandler;
.super Landroid/os/Handler;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method public constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 282
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    .line 283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 284
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 287
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 290
    :pswitch_0
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[msg handler connect to DLNAMiddleLayer]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 292
    const-string v3, "[MediaPluginDLNA]"

    const-string/jumbo v4, "mDLNAManager is null, can not start to play..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 296
    .local v1, extra:I
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v0

    .line 297
    .local v0, DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v0, :cond_3

    .line 298
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/media/MediaPluginDLNA;->access$1602(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare DMR id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaPluginDLNA;->access$1600(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v2, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 301
    .local v2, statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v3, 0x4

    iput v3, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 302
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1600(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    const/16 v1, 0x2081

    .line 314
    .end local v2           #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :goto_1
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1700(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mPreSeekSec:I
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$1800(Landroid/media/MediaPluginDLNA;)I

    move-result v3

    if-lez v3, :cond_1

    .line 316
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "do seek before play!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mPreSeekSec:I
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1800(Landroid/media/MediaPluginDLNA;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    .line 319
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v3

    const/16 v4, 0x2080

    invoke-interface {v3, v4, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto/16 :goto_0

    .line 305
    .restart local v2       #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_2
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "DLNAController prepare failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v1, 0x2082

    .line 307
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v4, 0x1008

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v3, v4}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    goto :goto_1

    .line 310
    .end local v2           #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_3
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "DLNAController get DMR id failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/16 v1, 0x2082

    goto :goto_1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
