.class Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;
.super Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 498
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererAsReadyDongle][onDiscovered] renderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const/16 v1, 0x4e20

    const-string v2, "Discover DMR success"

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, p1, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 500
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-virtual {v0, p1, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 501
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 507
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setRendererAsReadyDongle][onTimeout]"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const/16 v1, -0x4000

    const-string v2, "Discover Timeout"

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I
    invoke-static {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;ILjava/lang/String;)I

    .line 509
    return-void
.end method
