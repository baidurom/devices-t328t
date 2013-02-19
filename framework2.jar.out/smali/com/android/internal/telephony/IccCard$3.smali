.class Lcom/android/internal/telephony/IccCard$3;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x3f9

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2150
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2153
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2154
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2155
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 2157
    .local v4, isSIMRemoved:[I
    if-eqz v4, :cond_9

    array-length v5, v4

    if-lez v5, :cond_9

    .line 2158
    sget v5, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2160
    aget v5, v4, v7

    if-nez v5, :cond_4

    .line 2161
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->setIccCardRemoved()V

    .line 2166
    :goto_1
    const-string v5, "sys.shutdown.hibernate.mode"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2167
    .local v3, hibernate:Z
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v0, v6

    .line 2169
    .local v0, airplane:Z
    :goto_2
    if-nez v3, :cond_2

    if-eqz v0, :cond_6

    .line 2170
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " airplane = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2171
    :cond_3
    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto :goto_0

    .line 2163
    .end local v0           #airplane:Z
    .end local v3           #hibernate:Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v5, v8, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v3       #hibernate:Z
    :cond_5
    move v0, v7

    .line 2167
    goto :goto_2

    .line 2173
    .restart local v0       #airplane:Z
    :cond_6
    sget v5, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    if-ne v5, v6, :cond_8

    .line 2174
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v6, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2175
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v6, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v6, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2176
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2178
    const-string v5, "gsm.sim.hotswap.procedure"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2182
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait for previous hot swap procedure completed, mHotSwap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2186
    .end local v0           #airplane:Z
    .end local v3           #hibernate:Z
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v6, "invalid sim hot swap data"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2191
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #isSIMRemoved:[I
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 2192
    .local v2, currentState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v5, "sys.shutdown.hibernate.mode"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2193
    .restart local v3       #hibernate:Z
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_d

    move v0, v6

    .line 2195
    .restart local v0       #airplane:Z
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_RADIO_STATE_CHANGED radioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "hibernate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " airplane = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2197
    :cond_a
    if-nez v3, :cond_b

    if-eqz v0, :cond_f

    .line 2198
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v6, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v5, v6, :cond_e

    .line 2199
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2203
    :cond_c
    :goto_4
    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2204
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v6, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v6, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    goto/16 :goto_0

    .end local v0           #airplane:Z
    :cond_d
    move v0, v7

    .line 2193
    goto :goto_3

    .line 2200
    .restart local v0       #airplane:Z
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v6, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v5, v6, :cond_c

    .line 2201
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_4

    .line 2208
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_11

    .line 2209
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v7, "EVENT_SIM_HOT_SWAP_STATUS radio on"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2210
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2211
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2212
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v7, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v7, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2213
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2214
    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2215
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radio on mHotSwap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2216
    :cond_12
    sget v5, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    if-le v5, v6, :cond_14

    .line 2217
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2218
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2219
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2220
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2221
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 2222
    sput v6, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2224
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v5, v5, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v6, "Stop to trun radio on/off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2226
    :cond_15
    const-string v5, "gsm.sim.hotswap.procedure"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v6, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v6, v5, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2229
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v5, v5, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2230
    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2150
    nop

    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
