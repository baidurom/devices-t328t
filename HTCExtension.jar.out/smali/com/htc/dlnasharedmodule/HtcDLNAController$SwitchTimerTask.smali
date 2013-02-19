.class Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1894
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1903
    return-void
.end method
