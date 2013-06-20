.class Lcom/htc/fm/activity/FMRadioMain$1;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioMain;->onResume()V
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
    .line 166
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$000(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v2, v4}, Lcom/htc/fm/activity/FMRadioMain;->access$102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 171
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V
    invoke-static {v2, v4}, Lcom/htc/fm/activity/FMRadioMain;->access$200(Lcom/htc/fm/activity/FMRadioMain;Z)V

    .line 173
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/fm/activity/FMRadioMain;->showDialog(I)V

    .line 191
    :goto_0
    return v4

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsPreviousForeground:Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$400(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showPowerOnDialog()V
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$500(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 177
    new-instance v0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct {v0, v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, tAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v3

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z
    invoke-static {v2, v3}, Lcom/htc/fm/activity/FMRadioMain;->access$602(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 180
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->turnOn()V
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$700(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 182
    .end local v0           #tAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mHasInitial:Z
    invoke-static {v2, v5}, Lcom/htc/fm/activity/FMRadioMain;->access$802(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 184
    new-instance v1, Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct {v1, v2}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, tLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->load()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 187
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 189
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$1;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v3

    #calls: Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V
    invoke-static {v2, v3}, Lcom/htc/fm/activity/FMRadioMain;->access$200(Lcom/htc/fm/activity/FMRadioMain;Z)V

    goto :goto_0
.end method
