.class Lcom/android/server/UiModeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v1, "enableFlags"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 193
    .local v16, enableFlags:I
    const-string v1, "disableFlags"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 195
    .local v14, disableFlags:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 197
    const/4 v13, 0x0

    .line 199
    .local v13, category:Ljava/lang/String;
    :try_start_0
    const-string v1, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_1

    .line 201
    const/4 v13, 0x0

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #calls: Lcom/android/server/UiModeManagerService;->launchHtcLocations()V
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$100(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 267
    :cond_1
    :goto_1
    if-eqz v13, :cond_3

    .line 270
    invoke-static {v13}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 279
    .local v3, homeIntent:Landroid/content/Intent;
    const/4 v12, 0x0

    .line 280
    .local v12, newConfig:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$100(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 286
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$102(Lcom/android/server/UiModeManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .end local v3           #homeIntent:Landroid/content/Intent;
    .end local v12           #newConfig:Landroid/content/res/Configuration;
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$100(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 299
    :cond_4
    monitor-exit v17

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 211
    :cond_5
    :try_start_3
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_1

    .line 216
    const-string v13, "android.intent.category.CAR_DOCK"

    goto :goto_1

    .line 218
    :cond_6
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 222
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_7

    .line 224
    const-string v13, "android.intent.category.DESK_DOCK"

    .line 227
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mbEnableS40DockModeBehavior:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$200(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_1

    .line 228
    const/4 v13, 0x0

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    #calls: Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;Z)V

    goto/16 :goto_1

    .line 233
    :cond_8
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DMB_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 234
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_1

    .line 235
    const-string v13, "android.intent.category.DMB_DONGLE"

    goto/16 :goto_1

    .line 240
    :cond_9
    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_a

    .line 241
    const-string v13, "android.intent.category.HOME"

    .line 247
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 250
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>>>>>>> mResultReceiver, broadcast to ask Locations to leave"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #calls: Lcom/android/server/UiModeManagerService;->exitHtcLocations()V
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)V

    .line 255
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mbEnableS40DockModeBehavior:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$200(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;Z)V

    goto/16 :goto_1

    .line 290
    .restart local v3       #homeIntent:Landroid/content/Intent;
    .restart local v12       #newConfig:Landroid/content/res/Configuration;
    :catch_0
    move-exception v15

    .line 291
    .local v15, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
