.class Lcom/htc/fm/activity/FMRadioMain$9;
.super Landroid/os/Handler;
.source "FMRadioMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/activity/FMRadioMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioMain;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 679
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    const-wide/16 v0, 0x0

    .line 687
    .local v0, lastTimeStampOfUIStartingAdjust:J
    const-string v3, "FMRadioMain"

    const-string v4, "[FMRadio] ACION_DO_UPDATE_FREROLLBAR"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/fm/ui/widget/RotateSeed;

    .line 690
    .local v2, seed:Lcom/htc/fm/ui/widget/RotateSeed;
    if-eqz v2, :cond_0

    .line 693
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$1500(Lcom/htc/fm/activity/FMRadioMain;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$1500(Lcom/htc/fm/activity/FMRadioMain;)J

    move-result-wide v0

    .line 696
    :cond_1
    const-string v3, "FMRadioMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seed.TimeStampOfUIStartingAdjust:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-wide v3, v2, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    cmp-long v3, v3, v0

    if-ltz v3, :cond_0

    .line 698
    const-string v3, "FMRadioMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFreq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v5}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FreRollBra freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;
    invoke-static {v5}, Lcom/htc/fm/activity/FMRadioMain;->access$1600(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/FreqRollBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fm/ui/widget/FreqRollBar;->getFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-wide v4, v2, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J
    invoke-static {v3, v4, v5}, Lcom/htc/fm/activity/FMRadioMain;->access$1502(Lcom/htc/fm/activity/FMRadioMain;J)J

    .line 700
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$1600(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/FreqRollBar;

    move-result-object v3

    iget v4, v2, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    iget v5, v2, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    iget v6, v2, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    iget v7, v2, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/fm/ui/widget/FreqRollBar;->RotateSwitcher(IIII)Z

    .line 701
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$1700(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/MirrorFace;

    move-result-object v3

    iget v4, v2, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    iget v5, v2, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    iget v6, v2, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    iget v7, v2, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/fm/ui/widget/MirrorFace;->RotateSwitcher(IIII)Z

    goto/16 :goto_0

    .line 709
    .end local v0           #lastTimeStampOfUIStartingAdjust:J
    .end local v2           #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    :pswitch_1
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$9;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->startPresetsActivity()V
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$1800(Lcom/htc/fm/activity/FMRadioMain;)V

    goto/16 :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
