.class Lcom/android/server/ConnectivityService$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 7238
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.internal.telephony.dualgsm_readytoswitch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7243
    const-string v7, "phone_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 7244
    .local v5, phoneType:I
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getMobileDataType(I)I
    invoke-static {v7, v5}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)I

    move-result v4

    .line 7245
    .local v4, mobileType:I
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRecieve: phoneType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mobileType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7246
    const/16 v7, 0x1c

    if-ne v4, v7, :cond_1

    .line 7247
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x77

    const/16 v10, 0x1e

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7328
    .end local v4           #mobileType:I
    .end local v5           #phoneType:I
    :cond_0
    :goto_0
    return-void

    .line 7249
    .restart local v4       #mobileType:I
    .restart local v5       #phoneType:I
    :cond_1
    const/16 v7, 0x1e

    if-ne v4, v7, :cond_2

    .line 7250
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x77

    const/16 v10, 0x1c

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7253
    :cond_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpect mobile type= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_0

    .line 7261
    .end local v4           #mobileType:I
    .end local v5           #phoneType:I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7262
    const-string v7, "cw_ssid_key"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7263
    .local v1, cw_ssid_key_value:I
    const/4 v0, -0x1

    .line 7264
    .local v0, ctcw_state_change_key:I
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: android.net.wifi.WIFI_STATE_CHANGED, cw_ssid_key_value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7267
    const/4 v7, 0x1

    if-ne v7, v1, :cond_4

    .line 7268
    const/16 v0, 0xa

    .line 7271
    :cond_4
    const/4 v7, -0x1

    if-eq v7, v0, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v8, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v9, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v7, v8, v9, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7273
    .end local v0           #ctcw_state_change_key:I
    .end local v1           #cw_ssid_key_value:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7274
    const-string v7, "cw_uw_reg_state_key"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7275
    .local v2, cw_uw_reg_state_key_value:I
    const/4 v0, -0x1

    .line 7276
    .restart local v0       #ctcw_state_change_key:I
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED, cw_uw_reg_state_key_value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7281
    const/16 v7, 0x65

    if-ne v7, v2, :cond_7

    .line 7282
    const/16 v0, 0xc

    .line 7287
    :cond_6
    :goto_1
    const/4 v7, -0x1

    if-eq v7, v0, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v8, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v9, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v7, v8, v9, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 7283
    :cond_7
    const/16 v7, 0x66

    if-ne v7, v2, :cond_6

    .line 7284
    const/16 v0, 0xb

    goto :goto_1

    .line 7289
    .end local v0           #ctcw_state_change_key:I
    .end local v2           #cw_uw_reg_state_key_value:I
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7290
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 7292
    .local v6, state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    :try_start_0
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .end local v6           #state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    check-cast v6, Lcom/android/internal/telephony/Phone$DataState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7297
    .restart local v6       #state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    if-eqz v6, :cond_0

    .line 7298
    const/4 v0, -0x1

    .line 7299
    .restart local v0       #ctcw_state_change_key:I
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: android.intent.action.CW_ANY_DATA_STATE, state_key_value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7304
    sget-object v7, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v7, v6, :cond_a

    .line 7305
    const/16 v0, 0xe

    .line 7310
    :cond_9
    :goto_2
    const/4 v7, -0x1

    if-eq v7, v0, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v8, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v9, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v7, v8, v9, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 7293
    .end local v0           #ctcw_state_change_key:I
    .end local v6           #state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    :catch_0
    move-exception v3

    .line 7294
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    const-string v8, "Exception happen on android.intent.action.CW_ANY_DATA_STATE"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7306
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #ctcw_state_change_key:I
    .restart local v6       #state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v7, v6, :cond_9

    .line 7307
    const/16 v0, 0xd

    goto :goto_2

    .line 7312
    .end local v0           #ctcw_state_change_key:I
    .end local v6           #state_key_value:Lcom/android/internal/telephony/Phone$DataState;
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7313
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPhoneReady:Z
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7314
    monitor-enter p0

    .line 7315
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mPhoneReady:Z
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$5602(Lcom/android/server/ConnectivityService;Z)Z

    .line 7317
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/16 v8, 0xd

    const-string v9, "phone"

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 7319
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone Ready, mMobileSettings was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMobileSettings:Z
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7320
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x6b

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMobileSettings:Z
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_3
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7322
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 7320
    :cond_c
    const/4 v7, 0x0

    goto :goto_3
.end method
