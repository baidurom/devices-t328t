.class Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;
    }
.end annotation


# instance fields
.field PgTimer:Ljava/util/Timer;

.field public StateMsgTimer:Ljava/util/Timer;

.field public StateTimer:Ljava/util/Timer;

.field bCanToastR:Z

.field bCanToastS:Z

.field public bMuteState:Z

.field public bShuffleState:Z

.field private bStateSynced:Z

.field public lDuration:J

.field public lPosition:J

.field public lPositionDyn:J

.field protected lUserPosition:J

.field public mbIsLiveRenderer:Z

.field public mbIsLiveServer:Z

.field public nPlayState:I

.field public nRepeatState:I

.field public nUserShuffleState:I

.field public nUserState:I

.field public nUserVolume:I

.field public nVolume:I

.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 507
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 539
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 540
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 545
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 550
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 660
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveServer:Z

    .line 665
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveRenderer:Z

    .line 696
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    .line 729
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 758
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 759
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V

    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    .line 644
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_1

    .line 645
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "isPlaying() state:YES(0)"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x1

    .line 649
    :goto_0
    return v0

    .line 648
    :cond_1
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPosUI(I)V
    .locals 0
    .parameter "nProgress"

    .prologue
    .line 752
    return-void
.end method

.method private setVolUI(I)V
    .locals 0
    .parameter "nVol"

    .prologue
    .line 756
    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 573
    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 582
    .local v0, nUserStateMap:[I
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 583
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 584
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 586
    :cond_0
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-gez v1, :cond_2

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    aget v1, v0, v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-ne v1, v2, :cond_3

    .line 590
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 592
    :cond_3
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 594
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V

    .line 597
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 598
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    goto :goto_0

    .line 573
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected refreshRS(I)V
    .locals 0
    .parameter "nRef"

    .prologue
    .line 812
    return-void
.end method

.method protected refreshTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 704
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 706
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    .line 708
    :cond_1
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 709
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onUpdateCurrentPosition(J)V

    .line 727
    :cond_2
    :goto_0
    return-void

    .line 715
    :cond_3
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    goto :goto_0
.end method

.method protected refreshVolume()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 819
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR volume had been set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 821
    :cond_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-lt v0, v3, :cond_1

    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onVolumeChanged(I)V

    .line 825
    :cond_2
    return-void
.end method

.method protected setUserState(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 558
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 559
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 560
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    .line 565
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x61a8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    goto :goto_0
.end method
