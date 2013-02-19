.class Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OOBEdoneReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1446
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    const-string v3, "SetupWizardLaunchedBy"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1453
    .local v2, mOOBEDone:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v3, v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_oobe_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$1302(Z)Z

    .line 1456
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOOBEDone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOobeFinish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->access$1300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string v3, "LaunchedBySystem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->access$1300()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    #getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1400(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    #getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1500(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    #getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1600(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1459
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v3, v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_oobe_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 1461
    .local v1, mIsOobeFinish:Z
    const-string v3, "SSM"

    const-string v4, "mOOBEDone startDualSetting "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    #calls: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->startDualSetting()V
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1700(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    .line 1470
    .end local v1           #mIsOobeFinish:Z
    .end local v2           #mOOBEDone:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1464
    .restart local v2       #mOOBEDone:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v3, v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_oobe_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 1466
    .restart local v1       #mIsOobeFinish:Z
    const-string v3, "SSM"

    const-string v4, "mOOBEDone, do NOT  startDualSetting "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
