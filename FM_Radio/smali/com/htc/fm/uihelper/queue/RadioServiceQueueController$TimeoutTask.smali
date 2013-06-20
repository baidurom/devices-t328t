.class Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;
.super Ljava/util/TimerTask;
.source "RadioServiceQueueController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutTask"
.end annotation


# instance fields
.field private mRadioServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

.field private mStartTime:J

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;Ljava/util/Timer;)V
    .locals 2
    .parameter "radioServiceQueueController"
    .parameter "timer"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mStartTime:J

    .line 215
    iput-object p2, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mTimer:Ljava/util/Timer;

    .line 216
    iput-object p1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mRadioServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    .line 217
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 222
    .local v0, tSpendTime:J
    const/16 v2, 0x1e

    .line 223
    .local v2, tTimeout:I
    iget-object v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mRadioServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 236
    const/16 v2, 0x1e

    .line 238
    :goto_0
    const-string v3, "RadioServiceQueueController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeoutTask wait Cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mRadioServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v5}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v5

    invoke-static {v5}, Lcom/htc/fm/components/FMLog;->getFMCommandById(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 241
    const-string v3, "RadioServiceQueueController"

    const-string v4, "TimeoutTask.cancel()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mRadioServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->timeoutEvent()V

    .line 243
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->cancel()Z

    .line 244
    iget-object v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 245
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$TimeoutTask;->mTimer:Ljava/util/Timer;

    .line 247
    :cond_0
    return-void

    .line 226
    :pswitch_0
    const/16 v2, 0x1e

    .line 227
    goto :goto_0

    .line 230
    :pswitch_1
    const/16 v2, 0x1e

    .line 231
    goto :goto_0

    .line 233
    :pswitch_2
    const/4 v2, 0x5

    .line 234
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
