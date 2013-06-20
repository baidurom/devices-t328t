.class Lcom/htc/fm/uihelper/service/UIService$3;
.super Landroid/os/Handler;
.source "UIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/service/UIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/uihelper/service/UIService;


# direct methods
.method constructor <init>(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 402
    const-string v1, "UIService"

    const-string v2, "+mAudioHandler.handleMessage()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    const-string v1, "UIService"

    const-string v2, "-mAudioHandler.handleMessage()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void

    .line 405
    :pswitch_0
    const-string v1, "UIService"

    const-string v2, "  ENABLE_AUDIO_PATH"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->useHeadsetOrSpeaker()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3800(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 408
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v2, 0x0

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMuteStateToUi(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2900(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_0

    .line 411
    :pswitch_1
    const-string v1, "UIService"

    const-string v2, "  DISABLE_AUDIO_PATH"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3900(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 414
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v2, 0x1

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMuteStateToUi(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2900(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_0

    .line 417
    :pswitch_2
    const-string v1, "UIService"

    const-string v2, "  REQUEST_AUDIO_FOCUS"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->enable()Z

    move-result v0

    .line 419
    .local v0, tGetAudioFocusResult:Z
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  get audio focus result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-nez v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 425
    .end local v0           #tGetAudioFocusResult:Z
    :pswitch_3
    const-string v1, "UIService"

    const-string v2, "  SWITCH_AUDIO_PATH"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$3;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->useHeadsetOrSpeaker()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3800(Lcom/htc/fm/uihelper/service/UIService;)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
