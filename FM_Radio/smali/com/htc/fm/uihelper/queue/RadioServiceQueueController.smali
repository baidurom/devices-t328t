.class public Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
.super Ljava/lang/Object;
.source "RadioServiceQueueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;,
        Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    }
.end annotation


# static fields
.field private static final NOTHING_TO_DO:I = -0x1

.field public static final SEND_COMMAND_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RadioServiceQueueController"

.field public static final TIMEOUT_DEFAULT:I = 0x1e

.field public static final TIMEOUT_SEEK_UP_DOWN:I = 0x1e

.field public static final TIMEOUT_TUNE:I = 0x5

.field public static final TIMEOUT_TURN_ON_OFF:I = 0x1e


# instance fields
.field private mCommandProcessing:I

.field private mCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mUIService:Lcom/htc/fm/uihelper/service/UIService;


# direct methods
.method public constructor <init>(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 1
    .parameter "uiService"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    .line 34
    iput-object p1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mUIService:Lcom/htc/fm/uihelper/service/UIService;

    .line 35
    return-void
.end method

.method private matchProcessingOrQueue(I)Z
    .locals 4
    .parameter "pCommand"

    .prologue
    const/4 v2, 0x1

    .line 75
    iget v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-ne v3, p1, :cond_0

    .line 83
    :goto_0
    return v2

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;

    .line 79
    .local v1, queueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getCommand()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .line 83
    .end local v1           #queueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private pullQueueToProcess()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 87
    const-string v0, "RadioServiceQueueController"

    const-string v4, "+pullQueueToProcess()"

    invoke-static {v0, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "RadioServiceQueueController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  pullQueueToProcess() info commandQueue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "RadioServiceQueueController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  pullQueueToProcess() info commandProcessing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const/4 v0, -0x1

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-ne v0, v4, :cond_1

    .line 92
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;

    .line 93
    .local v6, tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    invoke-virtual {v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getCommand()I

    move-result v0

    iput v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    .line 95
    const-string v0, "RadioServiceQueueController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  pullQueueToProcess() sendServiceWhat what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getIntentCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getIntentFreq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mUIService:Lcom/htc/fm/uihelper/service/UIService;

    invoke-virtual {v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/fm/uihelper/service/UIService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    const/4 v0, 0x1

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x2

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x5

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x3

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x4

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    if-eq v0, v4, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->nextCommand()V

    .line 117
    .end local v6           #tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :goto_0
    const-string v0, "RadioServiceQueueController"

    const-string v2, "-pullQueueToProcess()"

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 106
    .restart local v6       #tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :cond_0
    const-string v0, "RadioServiceQueueController"

    const-string v4, "Timer for processing command start"

    invoke-static {v0, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    .line 108
    new-instance v1, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;

    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    invoke-direct {v1, p0, v0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;-><init>(Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;Ljava/util/Timer;)V

    .line 109
    .local v1, timerTask:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 112
    .end local v1           #timerTask:Ljava/util/TimerTask;
    .end local v6           #tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :cond_1
    const-string v0, "RadioServiceQueueController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  pullQueueToProcess() Intent is working what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "RadioServiceQueueController"

    const-string v2, "  pullQueueToProcess() Queue is empty!"

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/content/Intent;)V
    .locals 9
    .parameter "pIntent"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 38
    const-string v2, "RadioServiceQueueController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+add() intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_4

    .line 40
    const-string v2, "command"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, tCommand:I
    new-instance v1, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;

    invoke-direct {v1, v0, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;-><init>(ILandroid/content/Intent;)V

    .line 43
    .local v1, tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    const-string v2, "RadioServiceQueueController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  add() info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "RadioServiceQueueController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  add() info commandQueue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "RadioServiceQueueController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  add() info commandProcessing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v5}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v6, v0, :cond_3

    :cond_0
    invoke-direct {p0, v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v5, v0, :cond_3

    :cond_1
    invoke-direct {p0, v7}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v8, v0, :cond_3

    :cond_2
    invoke-direct {p0, v8}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v7, v0, :cond_5

    .line 53
    :cond_3
    const-string v2, "RadioServiceQueueController"

    const-string v3, "  add() It is the wrong state."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->unlockStateMachineFlag(I)V

    .line 71
    .end local v0           #tCommand:I
    .end local v1           #tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :cond_4
    :goto_0
    const-string v2, "RadioServiceQueueController"

    const-string v3, "-add()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 56
    .restart local v0       #tCommand:I
    .restart local v1       #tQueueData:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
    :cond_5
    invoke-direct {p0, v6}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eq v5, v0, :cond_8

    :cond_6
    invoke-direct {p0, v7}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eq v5, v0, :cond_8

    :cond_7
    invoke-direct {p0, v8}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->matchProcessingOrQueue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne v5, v0, :cond_9

    .line 61
    :cond_8
    const-string v2, "RadioServiceQueueController"

    const-string v3, "  add() Ignore the irrational command."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->unlockStateMachineFlag(I)V

    goto :goto_0

    .line 64
    :cond_9
    const-string v2, "RadioServiceQueueController"

    const-string v3, "  add() Add to queue."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-direct {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->pullQueueToProcess()V

    goto :goto_0
.end method

.method public callbackReceived(I)V
    .locals 3
    .parameter "pCommand"

    .prologue
    .line 121
    const-string v0, "RadioServiceQueueController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+callbackReceived() command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", commandProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mTimer:Ljava/util/Timer;

    .line 125
    const-string v0, "RadioServiceQueueController"

    const-string v1, "Timer for processing command end"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->nextCommand()V

    .line 128
    const-string v0, "RadioServiceQueueController"

    const-string v1, "-callbackReceived()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getCommandProcessing()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    return v0
.end method

.method public nextCommand()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    .line 133
    invoke-direct {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->pullQueueToProcess()V

    .line 134
    return-void
.end method

.method public setRIVALocked(Z)V
    .locals 3
    .parameter "pIsLocked"

    .prologue
    .line 154
    const-string v0, "RadioServiceQueueController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setRIVALocked() isLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    .line 159
    :cond_0
    const-string v0, "RadioServiceQueueController"

    const-string v1, "-setRIVALocked()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public timeoutEvent()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "RadioServiceQueueController"

    const-string v1, "+timeoutEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mUIService:Lcom/htc/fm/uihelper/service/UIService;

    iget v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mCommandProcessing:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->timeoutEvent(I)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->nextCommand()V

    .line 140
    const-string v0, "RadioServiceQueueController"

    const-string v1, "-timeoutEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public unlockStateMachineFlag(I)V
    .locals 3
    .parameter "pCommand"

    .prologue
    .line 144
    const-string v0, "RadioServiceQueueController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+unlockStateMachineFlag() command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->mUIService:Lcom/htc/fm/uihelper/service/UIService;

    invoke-virtual {v0, p1}, Lcom/htc/fm/uihelper/service/UIService;->unlockStateMachineFlag(I)V

    .line 146
    const-string v0, "RadioServiceQueueController"

    const-string v1, "-unlockStateMachineFlag()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
