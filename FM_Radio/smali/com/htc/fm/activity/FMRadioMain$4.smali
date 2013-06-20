.class Lcom/htc/fm/activity/FMRadioMain$4;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 548
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 550
    const-string v0, "FMRadioMain"

    const-string v1, "+mBtnTuneDownClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->frequencyDown()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1300(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 552
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 554
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$4;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$1102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 556
    :cond_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mBtnTuneDownClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method
