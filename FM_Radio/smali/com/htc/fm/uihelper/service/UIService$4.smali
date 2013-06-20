.class Lcom/htc/fm/uihelper/service/UIService$4;
.super Ljava/lang/Object;
.source "UIService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 433
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x1

    .line 435
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onAudioFocusChange() focusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    packed-switch p1, :pswitch_data_0

    .line 455
    :goto_0
    :pswitch_0
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onAudioFocusChange() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 438
    :pswitch_1
    const-string v0, "UIService"

    const-string v1, "  onAudioFocusChange() AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 443
    :pswitch_2
    const-string v0, "UIService"

    const-string v1, "  onAudioFocusChange() AUDIOFOCUS_LOSS_TRANSIENT_xxx_xxxx"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 447
    :pswitch_3
    const-string v0, "UIService"

    const-string v1, "  onAudioFocusChange() AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 449
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1902(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 450
    const-string v0, "UIService"

    const-string v1, "  onAudioFocusChange() disableAudioPath()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3900(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 452
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$4;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
