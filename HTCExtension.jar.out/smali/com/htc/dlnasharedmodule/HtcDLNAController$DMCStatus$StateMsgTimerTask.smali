.class Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMsgTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR Request waiting..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const/16 v1, 0xb

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1302(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)I

    .line 635
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v1

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 637
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;->this$1:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    .line 639
    :cond_0
    return-void
.end method
