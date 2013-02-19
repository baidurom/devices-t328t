.class Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PgTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1846
    return-void
.end method
