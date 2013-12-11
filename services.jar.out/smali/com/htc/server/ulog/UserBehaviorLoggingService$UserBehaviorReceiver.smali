.class final Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/UserBehaviorLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserBehaviorReceiver"
.end annotation


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"


# instance fields
.field private lastFlush:J

.field final synthetic this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# direct methods
.method private constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 254
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->lastFlush:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Lcom/htc/server/ulog/UserBehaviorLoggingService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 258
    const-string v2, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receieve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$100(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 263
    .local v1, alarm:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/server/ulog/UploadScheduler;->onBootUp(Landroid/content/Intent;)V

    .line 267
    :cond_0
    const-wide/32 v5, 0xa4cb80

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    add-long/2addr v5, v15

    const-wide/32 v15, 0x1b7740

    sub-long v3, v5, v15

    .line 268
    .local v3, firstFlushTime:J
    const/4 v2, 0x3

    const-wide/32 v5, 0xa4cb80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mFlushPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$300(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 311
    .end local v1           #alarm:Landroid/app/AlarmManager;
    .end local v3           #firstFlushTime:J
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.htc.USERBEHAVIOR_UPLOAD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLastTimeOfUpload()J

    move-result-wide v13

    .line 271
    .local v13, lastUpload:J
    const-string v2, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UPLOAD_ACTION] lastUpload : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , set it as current time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/htc/server/ulog/UserBehaviorPreference;->setLastTimeOfUpload(J)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 276
    .end local v13           #lastUpload:J
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.htc.USERBEHAVIOR_FLUSH"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->lastFlush:J

    const-wide/16 v15, -0x1

    cmp-long v2, v5, v15

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->lastFlush:J

    const-wide/32 v15, 0xa4cb80

    add-long/2addr v5, v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    cmp-long v2, v5, v15

    if-gtz v2, :cond_1

    .line 278
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->lastFlush:J

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 281
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.updater.NOTIFY_SEND"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->getInstance()Lcom/htc/server/HtcDeviceInfoManager;

    move-result-object v10

    .line 283
    .local v10, deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    if-eqz v10, :cond_6

    .line 284
    invoke-virtual {v10}, Lcom/htc/server/HtcDeviceInfoManager;->synchronizedFlush()V

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 288
    .end local v10           #deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 289
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getFirstUpdateTimeOfSIE()J

    move-result-wide v11

    .line 290
    .local v11, firstTimeOfSIE:J
    const-string v2, "CID"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 291
    .local v8, CID:Z
    const-string v2, "com.htc.CUSTOMIZED_REASON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, customizedReason:Ljava/lang/String;
    const-string v2, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE, firstTimeOfSIE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", customized_reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez v8, :cond_8

    const-string v2, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 297
    .end local v8           #CID:Z
    .end local v9           #customizedReason:Ljava/lang/String;
    .end local v11           #firstTimeOfSIE:J
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 298
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getFirstUpdateTimeOfSIE()J

    move-result-wide v11

    .line 299
    .restart local v11       #firstTimeOfSIE:J
    const-string v2, "CID"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 300
    .restart local v8       #CID:Z
    const-string v2, "com.htc.CUSTOMIZED_REASON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 301
    .restart local v9       #customizedReason:Ljava/lang/String;
    const-string v2, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.htc.intent.action.CUSTOMIZATION_CHANGE, firstTimeOfSIE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", customized_reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v8           #CID:Z
    .end local v9           #customizedReason:Ljava/lang/String;
    .end local v11           #firstTimeOfSIE:J
    :cond_a
    const-string v2, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/server/ulog/UploadScheduler;->onPolicyProvisioned(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 306
    :cond_b
    const-string v2, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    #getter for: Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;
    invoke-static {v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/server/ulog/UploadScheduler;->onTellHtcSettingChanged(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
