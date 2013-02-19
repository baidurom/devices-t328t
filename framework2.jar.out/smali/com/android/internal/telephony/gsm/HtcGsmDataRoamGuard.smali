.class public Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_GUARD_CHANGED:I = 0x4

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x5

.field private static final EVENT_MOBILE_ALLOW_CHANGED:I = 0x2

.field private static final EVENT_REENABLE_GUARD:I = 0x6

.field private static final EVENT_ROAM_ALLOW_CHANGED:I = 0x3

.field private static final EVENT_ROAM_OFF:I = 0x1

.field private static final EVENT_ROAM_ON:I = 0x0

.field private static final LOCAL_TAG:Ljava/lang/String; = "DGRD2"

.field private static final MASK_DATA_ALLOWED:I = -0x80000000

.field private static final MASK_DATA_STATE:I = 0xf00000

.field private static final MASK_DIALOG:I = 0x80000

.field private static final MASK_GUARD_ENABLED:I = 0x40000000

.field private static final MASK_MOBILE_ALLOWED:I = 0xf000000

.field private static final MASK_ROAM:I = 0x20000000

.field public static final MODE_DATA_ALLOWED:I = -0x80000000

.field public static final MODE_DATA_CONNECTED:I = 0x100000

.field public static final MODE_DATA_CONNECTING:I = 0x200000

.field public static final MODE_DATA_NOT_CONNECTED:I = 0x300000

.field public static final MODE_DIALOG_DISPLAY:I = 0x80000

.field public static final MODE_GUARD_ENABLED:I = 0x40000000

.field public static final MODE_MOBILE_ALLOWED_0:I = 0x1000000

.field public static final MODE_MOBILE_ALLOWED_1:I = 0x2000000

.field public static final MODE_MOBILE_ALLOWED_2:I = 0x4000000

.field public static final MODE_ROAM:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final URI_DATA_ALLOW:Ljava/lang/String; = "data_roaming"

.field private static final URI_GUARD_ENABLE:Ljava/lang/String; = "gsm"


# instance fields
.field private final LOCAL_DBG:Z

.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->LOCAL_DBG:Z

    .line 194
    new-instance v5, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$1;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 148
    const-string v5, "initialize HtcGsmDataRoamGuard"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5, p0, v4, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5, p0, v3, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    :cond_0
    iput v4, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 166
    iget v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v2

    .line 171
    .local v2, guardEnable:Z
    iget v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, dataAllow:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    .line 182
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 185
    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    const/high16 v4, 0x30

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGsmDataRoamGuard is initialized, mMode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 191
    return-void

    :cond_1
    move v0, v4

    .line 177
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .line 180
    const-string v3, "fail to read GSM data allow setting for initialization"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v0

    return v0
.end method

.method private createNotificationObject(I)[I
    .locals 5
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 543
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 544
    .local v0, notifications:[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newMode=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 546
    aput v3, v0, v3

    .line 547
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v0, v2

    .line 548
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 549
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 551
    return-object v0

    :cond_0
    move v1, v3

    .line 547
    goto :goto_0
.end method

.method private handleDataConnectionStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, newMode:I
    const/high16 v1, 0x20

    if-eq p1, v1, :cond_0

    .line 450
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v0

    .line 455
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 456
    return-void

    .line 452
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleDataRoamGuardSettingsChange(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 426
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 427
    const-string v1, "guard enable setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 431
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v0

    .line 433
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 440
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 443
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 436
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleMobileAllowStatusChange(IZ)V
    .locals 3
    .parameter "id"
    .parameter "allowMobileData"

    .prologue
    const/4 v2, 0x1

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    :cond_0
    const-string v1, "handleMobileAllowStatusChange() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 346
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setMobileAllowed(IIZ)I

    move-result v0

    .line 348
    .local v0, newMode:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-ne v1, p2, :cond_2

    .line 349
    const-string v1, "handleMobileAllowStatusChange(), mobile allow setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 363
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 366
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 368
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 357
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleReEnableGuardDialog()V
    .locals 3

    .prologue
    .line 564
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    :cond_0
    const-string v1, "handleReEnableGuardDialog() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 570
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 572
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 576
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 577
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 579
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleRoamAllowSettingChange(Z)V
    .locals 4
    .parameter "allowRoam"

    .prologue
    const/4 v3, 0x1

    .line 382
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    :cond_0
    const-string v2, "handleRoamAllowSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 388
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v0

    .line 390
    .local v0, newMode:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 391
    const-string v2, "handleRoamAllowSettingChange(), data allow setting is not changed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    const/4 v1, 0x0

    .line 398
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 406
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 407
    if-eqz p1, :cond_5

    .line 408
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 416
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 419
    :cond_3
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 421
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 401
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1

    .line 410
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 413
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private isDataAllowed(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, -0x8000

    .line 700
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoaming(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataStateEqual(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataStateEqual(II)Z
    .locals 1
    .parameter "mode"
    .parameter "dataState"

    .prologue
    .line 716
    const/high16 v0, 0xf0

    and-int/2addr v0, p1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisplayDialog(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x8

    .line 720
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmDataRoamGuardEnabled()Z
    .locals 3

    .prologue
    .line 751
    const/4 v0, 0x0

    .line 753
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 757
    return v0
.end method

.method private isGuardEnabled(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x4000

    .line 704
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileAllowed(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 712
    const/high16 v0, 0xf00

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoam(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x2000

    .line 708
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 787
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 791
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    .line 770
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 772
    :cond_0
    const-string v0, "registerForEnhancedRoamingSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 780
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private setDataAllowed(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "allow"

    .prologue
    .line 625
    const v1, 0x7fffffff

    and-int v0, p1, v1

    .line 627
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 628
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 630
    :cond_0
    return v0
.end method

.method private setDataState(II)I
    .locals 2
    .parameter "mode"
    .parameter "dataState"

    .prologue
    .line 679
    const v1, -0xf00001

    and-int v0, p1, v1

    .line 681
    .local v0, newMode:I
    or-int/2addr v0, p2

    .line 683
    return v0
.end method

.method private setDisplayDialog(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "show"

    .prologue
    .line 687
    const v1, -0x80001

    and-int v0, p1, v1

    .line 689
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 690
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 692
    :cond_0
    return v0
.end method

.method private setGuardEnabled(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "enable"

    .prologue
    .line 634
    const v1, -0x40000001

    and-int v0, p1, v1

    .line 636
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 637
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 639
    :cond_0
    return v0
.end method

.method private setMobileAllowed(IIZ)I
    .locals 2
    .parameter "mode"
    .parameter "id"
    .parameter "allow"

    .prologue
    .line 652
    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 653
    const-string v1, "index out of bound when trying to store mobile allow setting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 675
    .end local p1
    :goto_0
    return p1

    .line 657
    .restart local p1
    :cond_0
    move v0, p1

    .line 659
    .local v0, newMode:I
    if-eqz p3, :cond_1

    .line 660
    packed-switch p2, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 675
    goto :goto_0

    .line 661
    :pswitch_0
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    goto :goto_1

    .line 662
    :pswitch_1
    const/high16 v1, 0x200

    or-int/2addr v0, v1

    goto :goto_1

    .line 663
    :pswitch_2
    const/high16 v1, 0x400

    or-int/2addr v0, v1

    goto :goto_1

    .line 667
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 668
    :pswitch_3
    const v1, -0x1000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 669
    :pswitch_4
    const v1, -0x2000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 670
    :pswitch_5
    const v1, -0x4000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 667
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setRoam(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "roam"

    .prologue
    .line 643
    const v1, -0x20000001

    and-int v0, p1, v1

    .line 645
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 646
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 648
    :cond_0
    return v0
.end method

.method private shouldShowDialog(I)Z
    .locals 2
    .parameter "newMode"

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 764
    .local v0, showDialog:Z
    :goto_0
    return v0

    .line 761
    .end local v0           #showDialog:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDataConnection(ILjava/lang/Boolean;Z)V
    .locals 3
    .parameter "newMode"
    .parameter "requestConnectionStatus"
    .parameter "userRequest"

    .prologue
    .line 521
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    :cond_0
    const-string v1, "updateDataConnection() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataConnection(), newMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestConnectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 531
    if-eqz p2, :cond_1

    .line 532
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 533
    .local v0, requestConnect:Z
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    goto :goto_0

    .line 527
    .end local v0           #requestConnect:Z
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateUI(I)V
    .locals 4
    .parameter "newMode"

    .prologue
    .line 481
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    :cond_0
    const-string v2, "updateUI() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI(), newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 489
    const/4 v1, 0x0

    .line 493
    .local v1, notify:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 494
    const/4 v1, 0x1

    .line 497
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 498
    const/4 v1, 0x1

    .line 501
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 502
    const/4 v1, 0x1

    .line 505
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 506
    const/4 v1, 0x1

    .line 509
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 510
    const/4 v1, 0x1

    .line 512
    :cond_7
    if-eqz v1, :cond_1

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify GSM DRG, show dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v0

    .line 515
    .local v0, notification:[I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    :cond_0
    const-string v1, "blockedByDataRoamGuard() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 473
    :cond_1
    :goto_0
    return v0

    .line 471
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 473
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "disposing HtcGsmDataRoamGuard..."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 227
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 228
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 229
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 230
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 231
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 233
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    :cond_0
    const-string v0, "HtcGsmDataRoamGuard is disposed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 248
    const-string v0, "HtcGsmDataRoamGuard is finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 259
    :pswitch_0
    const-string v0, "receive message EVENT_ROAM_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 263
    :pswitch_1
    const-string v0, "receive message EVENT_ROAM_OFF"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 267
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_MOBILE_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", arg2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 268
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleMobileAllowStatusChange(IZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 271
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_ROAM_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 272
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamAllowSettingChange(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 275
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_DATA_GUARD_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 276
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleDataRoamGuardSettingsChange(Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 279
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message EVENT_DATA_STATE_CHANGED, arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 280
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleDataConnectionStateChange(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_6
    const-string v0, "receive message EVENT_REENABLE_GUARD"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleReEnableGuardDialog()V

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRoamUpdate(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "roam"
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRoamUpdate(), roam status is updated, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 299
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get content of EVENT_ROAM, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v0

    .line 307
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 314
    :goto_0
    if-eqz p1, :cond_3

    .line 315
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 324
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 325
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 327
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 328
    return-void

    .line 310
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_0

    .line 318
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 321
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public haveMobileAllowStatusChange(IZ)V
    .locals 2
    .parameter "id"
    .parameter "allowMobileData"

    .prologue
    .line 335
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 3
    .parameter "allowRoam"

    .prologue
    const/4 v1, 0x0

    .line 377
    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void

    :cond_0
    move v0, v1

    .line 377
    goto :goto_0
.end method

.method public reEnableGuardDialog()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 593
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    :cond_0
    const-string v1, "registerForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 601
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 610
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    const-string v0, "unregisterForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 617
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    goto :goto_0
.end method
