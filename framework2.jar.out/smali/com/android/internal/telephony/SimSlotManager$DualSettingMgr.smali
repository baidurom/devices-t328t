.class Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualSettingMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;,
        Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_DUALSETTING_ON_RUIM_READY:I = 0x1

.field private static final EVENT_DUALSETTING_ON_SIM_READY:I = 0x2

.field private static final EVENT_DUALSETTING_ON_SUB_SIM_READY:I = 0x5

.field private static final EVENT_DUALSETTING_READY_CDMA_ICCID:I = 0x3

.field private static final EVENT_DUALSETTING_READY_GSM_ICCID:I = 0x4

.field private static final EVENT_DUALSETTING_READY_SUB_GSM_ICCID:I = 0x6

.field private static final SLOT1_ICCID:Ljava/lang/String; = "dualsetting.slot1.iccid"

.field private static final SLOT2_ICCID:Ljava/lang/String; = "dualsetting.slot2.iccid"


# instance fields
.field private mCdmaReady:Z

.field private mDoneFlag:Z

.field private mGsmReady:Z

.field private mIccidSlot1:Ljava/lang/String;

.field private mIccidSlot2:Ljava/lang/String;

.field private mLastIccidSlot1:Ljava/lang/String;

.field private mLastIccidSlot2:Ljava/lang/String;

.field private mSubGsmReady:Z

.field private mSysReady:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1476
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1411
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    .line 1412
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1413
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1414
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    .line 1415
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    .line 1416
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1417
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1418
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    .line 1419
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    .line 1477
    const-string v2, "SSM"

    const-string v3, "Create mDualSettingMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SimSlotManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1479
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "com.basewin.ssm.dualsetting.slot1.iccid"

    const-string v3, "_SLOT1_"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    .line 1480
    const-string v2, "com.basewin.ssm.dualsetting.slot2.iccid"

    const-string v3, "_SLOT2_"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    .line 1482
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1483
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1484
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1485
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1491
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1492
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1493
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1496
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1497
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1502
    :cond_0
    :goto_1
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1503
    return-void

    .line 1487
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    goto :goto_0

    .line 1498
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1499
    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->startDualSetting()V

    return-void
.end method

.method private reportDone()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1506
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report dual setting done, doneFlag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cdmaReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsmReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sysReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v3

    if-ne v3, v7, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    if-eqz v3, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    if-eqz v3, :cond_0

    .line 1514
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SimSlotManager"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1515
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.basewin.ssm.dualsetting.slot1.iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    const-string v3, "com.basewin.ssm.dualsetting.slot2.iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1517
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1519
    iput-boolean v7, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1521
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last iccid, slot1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slot2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curr iccid, slot1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slot2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1526
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_oobe_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 1528
    .local v2, mIsOobeFinish:Z
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportDone_mIsOobeFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    if-eqz v2, :cond_3

    .line 1531
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1532
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.DualSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    const-string v3, "autoCloseDuration"

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1534
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1535
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1541
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mIsOobeFinish:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 1542
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private reportDoneExt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1548
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report dual setting done, doneFlag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsmReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subGsmReady"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sysReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    if-eqz v3, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    if-eqz v3, :cond_0

    .line 1555
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SimSlotManager"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1556
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.basewin.ssm.dualsetting.slot1.iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1557
    const-string v3, "com.basewin.ssm.dualsetting.slot2.iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1560
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1562
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last iccid, slot1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slot2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curr iccid, slot1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slot2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1567
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_oobe_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 1569
    .local v2, mIsOobeFinish:Z
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportDone_mIsOobeFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    if-eqz v2, :cond_3

    .line 1572
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1573
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.DualSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    const-string v3, "autoCloseDuration"

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1576
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1582
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mIsOobeFinish:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 1583
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private startDualSetting()V
    .locals 3

    .prologue
    .line 1666
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1667
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.DualSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const-string v1, "autoCloseDuration"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1670
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1671
    const-string v1, "SSM"

    const-string v2, "startDualSetting, send Intent to PhoneApp! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x2fe2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1591
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1593
    :pswitch_0
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_RUIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1595
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1600
    :pswitch_1
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_SIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1602
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1607
    :pswitch_2
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_CDMA_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1610
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1612
    .local v1, data:[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1616
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1617
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    .line 1618
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    goto :goto_0

    .line 1622
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[B
    :pswitch_3
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_GSM_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1624
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1626
    .restart local v1       #data:[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1630
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1632
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1633
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    goto/16 :goto_0

    .line 1634
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1636
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1637
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDoneExt()V

    goto/16 :goto_0

    .line 1643
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[B
    :pswitch_4
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_SUB_SIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1648
    :pswitch_5
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_SUB_GSM_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1650
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1652
    .restart local v1       #data:[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1656
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1657
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    .line 1658
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDoneExt()V

    goto/16 :goto_0

    .line 1591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
