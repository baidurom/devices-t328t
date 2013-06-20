.class Lcom/htc/fm/uihelper/service/UIService$1;
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
    .line 94
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler handlerMessage() WHAT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  +handleMessage() FMRadioIntent.WHAT_POWER_STATE isTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$100(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->load()Z

    move-result v0

    .line 102
    .local v0, tIsTurnOn:Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->onTurnOn()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$200(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 106
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$300(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 107
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -handleMessage() FMRadioIntent.WHAT_POWER_STATE isTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0           #tIsTurnOn:Z
    :pswitch_1
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_SPEAKER"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchSpeaker()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$400(Lcom/htc/fm/uihelper/service/UIService;)V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_SWITCH_TURN"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 117
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto/16 :goto_0

    .line 120
    :pswitch_3
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_SCAN"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->scan()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$700(Lcom/htc/fm/uihelper/service/UIService;)V

    goto/16 :goto_0

    .line 124
    :pswitch_4
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_CANCEL_SCAN"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$802(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 126
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$900(Lcom/htc/fm/uihelper/service/UIService;)V

    goto/16 :goto_0

    .line 129
    :pswitch_5
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_WIDGET_FOREGROUND"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$1002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 132
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "UIService"

    const-string v2, "  handleMessage() register Media Button receiver"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->registerMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 135
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRDSToUi()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1200(Lcom/htc/fm/uihelper/service/UIService;)V

    goto/16 :goto_0

    .line 139
    :pswitch_6
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_WIDGET_BACKGROUND"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$1002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    goto/16 :goto_0

    .line 143
    :pswitch_7
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_APP_FOREGROUND"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "UIService"

    const-string v2, "  handleMessage() register Media Button receiver"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->registerMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 148
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRDSToUi()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1200(Lcom/htc/fm/uihelper/service/UIService;)V

    goto/16 :goto_0

    .line 153
    :pswitch_8
    const-string v1, "UIService"

    const-string v2, "  handleMessage() FMRadioIntent.WHAT_APP_BACKGROUND"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "UIService"

    const-string v2, "  handleMessage() unregister Media Button receiver"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$1;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->unregisterMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
