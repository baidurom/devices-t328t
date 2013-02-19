.class Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1564
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1564
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1568
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1571
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1580
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1575
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1576
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1577
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
