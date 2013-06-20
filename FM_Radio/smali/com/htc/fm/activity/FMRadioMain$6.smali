.class Lcom/htc/fm/activity/FMRadioMain$6;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;


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
    .line 573
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$6;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JIZ)V
    .locals 3
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"
    .parameter "last"

    .prologue
    .line 575
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mBtnTuneDownRepeatListener.onRepeat() last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-wide/16 v0, 0x1f4

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$6;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->frequencyDown()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1300(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 579
    if-eqz p5, :cond_1

    .line 580
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$6;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$6;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 582
    :cond_1
    const-string v0, "FMRadioMain"

    const-string v1, "-mBtnTuneDownRepeatListener.onRepeat()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
