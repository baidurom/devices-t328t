.class Lcom/android/internal/telephony/SMSDispatcher$8;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2866
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO Intent Received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2872
    const-string v6, "SMS"

    const-string v7, "Receive intent ACTION_BOOT_COMPLETED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2875
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 2876
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/SMSDispatcher$8$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/SMSDispatcher$8$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$8;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2892
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 2930
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 2896
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2898
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    goto :goto_0

    .line 2903
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2905
    const-string v6, "phoneinECMState"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2906
    .local v2, isECM:Z
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v8, 0x16

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2912
    .end local v2           #isECM:Z
    :cond_3
    const-string v7, "cmas"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2913
    .local v1, isCmas:Z
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCmas: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCmasAckReturnEnable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2915
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprint()V

    goto :goto_0

    .line 2922
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$8;->getResultCode()I

    move-result v3

    .line 2923
    .local v3, rc:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_5

    if-ne v3, v6, :cond_6

    :cond_5
    move v4, v6

    .line 2928
    .local v4, success:Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v3, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
