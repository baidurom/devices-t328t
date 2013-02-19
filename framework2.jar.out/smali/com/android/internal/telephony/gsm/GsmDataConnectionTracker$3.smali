.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 2371
    const-wide/16 v13, -0x1

    .local v13, preTxPkts:J
    const-wide/16 v11, -0x1

    .line 2375
    .local v11, preRxPkts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v13

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    .line 2378
    const-wide/16 v23, 0x0

    .local v23, txSum:J
    const-wide/16 v17, 0x0

    .line 2379
    .local v17, rxSum:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 2380
    .local v4, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 2381
    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v5

    .line 2382
    .local v5, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v5, :cond_0

    .line 2384
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v8

    .line 2385
    .local v8, linkProp:Landroid/net/LinkProperties;
    if-eqz v8, :cond_0

    .line 2387
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2389
    .local v7, iface:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2390
    invoke-static {v7}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v21

    .line 2391
    .local v21, stats:J
    const-wide/16 v26, 0x0

    cmp-long v26, v21, v26

    if-lez v26, :cond_1

    add-long v23, v23, v21

    .line 2392
    :cond_1
    invoke-static {v7}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v21

    .line 2393
    const-wide/16 v26, 0x0

    cmp-long v26, v21, v26

    if-lez v26, :cond_0

    add-long v17, v17, v21

    goto :goto_0

    .line 2398
    .end local v4           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v5           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v7           #iface:Ljava/lang/String;
    .end local v8           #linkProp:Landroid/net/LinkProperties;
    .end local v21           #stats:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v26

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x0

    cmp-long v26, v13, v26

    if-gtz v26, :cond_3

    const-wide/16 v26, 0x0

    cmp-long v26, v11, v26

    if-lez v26, :cond_4

    .line 2404
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v26

    sub-long v19, v26, v13

    .line 2405
    .local v19, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v26

    sub-long v15, v26, v11

    .line 2407
    .local v15, received:J
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-lez v26, :cond_7

    const-wide/16 v26, 0x0

    cmp-long v26, v15, v26

    if-lez v26, :cond_7

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v26 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2409
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2410
    .local v9, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    .line 2431
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v26

    move-object/from16 v0, v26

    if-eq v0, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2437
    .end local v9           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v15           #received:J
    .end local v19           #sent:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "pdp_watchdog_trigger_packet_count"

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 2441
    .local v25, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_d

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v26

    if-nez v26, :cond_5

    .line 2444
    const v26, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2448
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "pdp_watchdog_error_poll_count"

    const/16 v28, 0x18

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2451
    .local v10, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v10, :cond_c

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-string v27, "Polling: no DATAIN in a while; polling PDP"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    const v28, 0x42004

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3108(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "pdp_watchdog_error_poll_interval_ms"

    const/16 v29, 0x1388

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2486
    .end local v10           #noRecvPollLimit:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2489
    :cond_6
    return-void

    .line 2412
    .end local v25           #watchdogTrigger:I
    .restart local v15       #received:J
    .restart local v19       #sent:J
    :cond_7
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-lez v26, :cond_9

    const-wide/16 v26, 0x0

    cmp-long v26, v15, v26

    if-nez v26, :cond_9

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1714(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2418
    :goto_3
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v9       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .line 2416
    .end local v9           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v26 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto :goto_3

    .line 2419
    :cond_9
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-nez v26, :cond_a

    const-wide/16 v26, 0x0

    cmp-long v26, v15, v26

    if-lez v26, :cond_a

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v26 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2421
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2422
    .restart local v9       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    goto/16 :goto_1

    .line 2424
    .end local v9           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_a
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-nez v26, :cond_b

    const-wide/16 v26, 0x0

    cmp-long v26, v15, v26

    if-nez v26, :cond_b

    .line 2425
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v9       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .line 2427
    .end local v9           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v26 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 2428
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v9       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .line 2464
    .end local v9           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v15           #received:J
    .end local v19           #sent:J
    .restart local v10       #noRecvPollLimit:I
    .restart local v25       #watchdogTrigger:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Polling: Sent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v28, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pkts since last received start recovery process"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const-string v27, "DataStall Happens, tell modem"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->sendDataStallNotification(IILandroid/os/Message;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    const v28, 0x42012

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2475
    .end local v10           #noRecvPollLimit:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "pdp_watchdog_poll_interval_ms"

    const/16 v29, 0x3e8

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_2

    .line 2480
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "pdp_watchdog_long_poll_interval_ms"

    const v29, 0x927c0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_2
.end method
