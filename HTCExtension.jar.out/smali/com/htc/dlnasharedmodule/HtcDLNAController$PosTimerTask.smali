.class Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1812
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1831
    :goto_0
    return-void

    .line 1815
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1824
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto :goto_0

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1819
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1820
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1821
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
