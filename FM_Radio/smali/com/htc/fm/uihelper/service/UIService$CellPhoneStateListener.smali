.class Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "UIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/service/UIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/uihelper/service/UIService;


# direct methods
.method private constructor <init>(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/uihelper/service/UIService;Lcom/htc/fm/uihelper/service/UIService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "phoneNumber"

    .prologue
    .line 810
    const-string v0, "UIService"

    const-string v1, "+CellPhoneStateListener.onCallStateChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    packed-switch p1, :pswitch_data_0

    .line 827
    :goto_0
    const-string v0, "UIService"

    const-string v1, "-CellPhoneStateListener.onCallStateChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void

    .line 813
    :pswitch_0
    const-string v0, "UIService"

    const-string v1, "  TelephonyManager.CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 815
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 816
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->unregisterPhoneStateListener()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$4100(Lcom/htc/fm/uihelper/service/UIService;)V

    goto :goto_0

    .line 819
    :pswitch_1
    const-string v0, "UIService"

    const-string v1, "  TelephonyManager.CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :pswitch_2
    const-string v0, "UIService"

    const-string v1, "  TelephonyManager.CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
