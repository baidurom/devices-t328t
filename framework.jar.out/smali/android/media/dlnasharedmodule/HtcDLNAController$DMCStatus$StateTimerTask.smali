.class Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR Request timeout"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const/16 v1, 0xc

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1302(Landroid/media/dlnasharedmodule/HtcDLNAController;I)I

    .line 499
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v1

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 501
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;->this$1:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    .line 503
    :cond_0
    return-void
.end method
