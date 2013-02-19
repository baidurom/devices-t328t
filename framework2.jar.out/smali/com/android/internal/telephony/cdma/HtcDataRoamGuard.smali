.class public Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x2

.field private static final EVENT_GET_PREF_SYSTEM:I = 0x3

.field private static final EVENT_PENDING_AFTER_RADIO_READY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final EVENT_SET_PREF_SYSTEM:I = 0x4

.field public static final FIELD_ROAM_GUARD_DOMESTIC:I = 0x0

.field public static final FIELD_ROAM_GUARD_INTERNATIONAL:I = 0x1

.field public static final FIELD_ROAM_SETTING_DOMESTIC:I = 0x2

.field public static final FIELD_ROAM_SETTING_INTERNATIONAL:I = 0x3

.field public static final FIELD_ROAM_TOTAL:I = 0x4

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x3

.field public static final MODE_BOTH_DATA_ROAMING_ALLOW:I = 0x6

.field public static final MODE_BOTH_DATA_ROAMING_NOT_ALLOW:I = 0x0

.field public static final MODE_CONNECTION_ACCEPTED_BY_USER:I = 0x40000

.field private static final MODE_CONNECTION_MASK:I = 0x40000

.field public static final MODE_DATA_CONNED:I = 0x300

.field public static final MODE_DATA_CONNED_REQUEST_DISC:I = 0x400

.field public static final MODE_DATA_CONNED_REQUEST_DISC_CONN:I = 0x500

.field private static final MODE_DATA_MASK:I = 0xf00

.field public static final MODE_DATA_REQUEST_CONN:I = 0x100

.field public static final MODE_DATA_REQUEST_CONN_DISC:I = 0x200

.field private static final MODE_DATA_ROAMING_MASK:I = 0x6

.field private static final MODE_DATA_ROAM_GUARD_SETTING_MASK:I = 0x60

.field public static final MODE_DIALOG_DISPLAY:I = 0x100000

.field public static final MODE_DIALOG_HISTORY_ACCEPTED:I = 0x80000

.field private static final MODE_DIALOG_HISTORY_MASK:I = 0x80000

.field private static final MODE_DIALOG_MASK:I = 0x100000

.field public static final MODE_DOMESTIC_DATA_ROAMING_ALLOW:I = 0x2

.field public static final MODE_INTERNATIONAL_DATA_ROAMING_ALLOW:I = 0x4

.field public static final MODE_MOBILE_ALLOW_ENABLE:I = 0x800000

.field private static final MODE_MOBILE_ALLOW_MASK:I = 0x800000

.field public static final MODE_NETWORK_DOMESTIC_ROAMING:I = 0x4000000

.field public static final MODE_NETWORK_EXTERNAL_ROAMING:I = 0x2000000

.field public static final MODE_NETWORK_HOME:I = 0x0

.field public static final MODE_NETWORK_INTERNAL_ROAMING:I = 0x1000000

.field public static final MODE_NETWORK_INTERNATIONAL_ROAMING:I = 0x8000000

.field private static final MODE_NETWORK_MASK:I = 0xf000000

.field public static final MODE_ROAMING_ALLOW:I = 0x40000000

.field private static final MODE_ROAMING_MASK:I = 0x40000000

.field public static final MODE_SETTING_ALWAYS_ASK:I = 0x10000000

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_DISABLE:I = 0x0

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_ENABLE:I = 0x60

.field public static final MODE_SETTING_DEFAULT:I = 0x0

.field public static final MODE_SETTING_DOMESTIC_DATA_ROAM_GUARD_ENABLE:I = 0x20

.field public static final MODE_SETTING_INTERNATIONAL_DATA_ROAM_GUARD_ENABLE:I = 0x40

.field private static final MODE_SETTING_MASK:I = 0x30000000

.field public static final MODE_SETTING_NEVER_ASK:I = 0x20000000

.field private static final MODE_SYSTEM_MASK:I = -0x80000000

.field public static final MODE_SYSTEM_NONE_SWITCH_NETWORK:I = -0x80000000

.field public static final MODE_SYSTEM_QUERIED:I = 0x50000000

.field private static final MODE_SYSTEM_QUERIED_MASK:I = 0x50000000

.field public static final MODE_USER_ACCEPTED:I = 0x200000

.field private static final MODE_USER_MASK:I = 0x600000

.field public static final MODE_USER_REJECTED:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_Prefix:Ljava/lang/String; = "DGRD2"


# instance fields
.field private final Setting_DATA_ROAMING_GUARD_to_MODE:[I

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mNotification:[I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mRoamingType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-array v1, v6, [I

    aput v3, v1, v3

    const/high16 v2, 0x1000

    aput v2, v1, v4

    const/high16 v2, 0x2000

    aput v2, v1, v5

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    .line 373
    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 1099
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    .line 1392
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 52
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    const-string v1, "New HtcDataRoamGuard"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 59
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 62
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 65
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 86
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 90
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial HtcDataRoamGuard mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    return-void

    .line 72
    :cond_6
    const/4 v0, 0x0

    .line 74
    .local v0, dataRoamSetting:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 79
    const/4 v0, 0x0

    .line 81
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1099
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamGuardSettingsChange(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamAllowSettingsChange(ZZ)V

    return-void
.end method

.method private blockedBySprintDataRoamGuard()Z
    .locals 4

    .prologue
    const/high16 v3, 0xf00

    .line 1241
    const/4 v0, 0x0

    .line 1242
    .local v0, blocking:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    const-string v1, "Domestic roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1271
    const/4 v0, 0x1

    .line 1274
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    const-string v1, "international roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1276
    const/4 v0, 0x1

    .line 1279
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedBySprintDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1280
    return v0
.end method

.method private createNotificationObject(IZ)[I
    .locals 10
    .parameter "newMode"
    .parameter "turnRoamAllowOff"

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1694
    const/high16 v6, 0x60

    and-int/2addr v6, p1

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_0

    move v0, v4

    .line 1696
    .local v0, disabledByCancel:Z
    :goto_0
    const/4 v2, 0x0

    .line 1697
    .local v2, displayDialog:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1698
    and-int v6, p1, v8

    if-ne v6, v8, :cond_1

    move v2, v4

    .line 1703
    :goto_1
    and-int v6, p1, v9

    if-ne v6, v9, :cond_4

    move v1, v4

    .line 1704
    .local v1, discDisplayed:Z
    :goto_2
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 1705
    .local v3, notifications:[I
    if-eqz v0, :cond_5

    move v6, v4

    :goto_3
    aput v6, v3, v5

    .line 1706
    if-eqz v2, :cond_6

    move v6, v4

    :goto_4
    aput v6, v3, v4

    .line 1707
    const/4 v7, 0x2

    if-eqz v1, :cond_7

    move v6, v4

    :goto_5
    aput v6, v3, v7

    .line 1708
    const/4 v6, 0x3

    if-eqz p2, :cond_8

    :goto_6
    aput v4, v3, v6

    .line 1709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabledByCancel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",displayDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",discDisplayed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",turnRoamAllowOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1710
    return-object v3

    .end local v0           #disabledByCancel:Z
    .end local v1           #discDisplayed:Z
    .end local v2           #displayDialog:Z
    .end local v3           #notifications:[I
    :cond_0
    move v0, v5

    .line 1694
    goto :goto_0

    .restart local v0       #disabledByCancel:Z
    .restart local v2       #displayDialog:Z
    :cond_1
    move v2, v5

    .line 1698
    goto :goto_1

    .line 1700
    :cond_2
    and-int v6, p1, v8

    if-ne v6, v8, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_7

    :cond_4
    move v1, v5

    .line 1703
    goto :goto_2

    .restart local v1       #discDisplayed:Z
    .restart local v3       #notifications:[I
    :cond_5
    move v6, v5

    .line 1705
    goto :goto_3

    :cond_6
    move v6, v5

    .line 1706
    goto :goto_4

    :cond_7
    move v6, v5

    .line 1707
    goto :goto_5

    :cond_8
    move v4, v5

    .line 1708
    goto :goto_6
.end method

.method private getEnhancedRoamingSettings(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting enhanced roaming with field index which is out of range. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 1875
    :goto_0
    return v0

    .line 1847
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1850
    goto :goto_0

    .line 1853
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1856
    goto :goto_0

    .line 1859
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1862
    goto :goto_0

    .line 1865
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1868
    goto :goto_0

    .line 1844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private haveSprintDataRoamAllowSettingsChange(ZZ)V
    .locals 11
    .parameter "allowDomRoam"
    .parameter "allowIntRoam"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x2

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    .line 1010
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v5, 0x6

    .line 1011
    .local v2, prevAllow:I
    const/4 v0, 0x0

    .line 1012
    .local v0, currAllow:I
    if-eqz p1, :cond_0

    move v0, v4

    .line 1013
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1014
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1015
    if-ne v2, v0, :cond_2

    .line 1097
    :goto_0
    return-void

    .line 1020
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v5, v5, -0x7

    or-int v1, v5, v0

    .line 1021
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1022
    const/4 v3, 0x0

    .line 1023
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 1024
    and-int/lit8 v5, v1, 0x6

    packed-switch v5, :pswitch_data_0

    .line 1091
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1094
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowDomRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowIntRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1096
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1026
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v5, 0xf00

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 1027
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v5, v4, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_8

    .line 1029
    :cond_6
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 1030
    and-int/2addr v1, v7

    .line 1031
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 1032
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 1034
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1038
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1039
    and-int/2addr v1, v7

    goto :goto_1

    .line 1044
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_b

    .line 1045
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 1046
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 1047
    and-int/2addr v1, v7

    .line 1048
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 1049
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 1051
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1055
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1056
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 1058
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_3

    .line 1059
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1060
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 1064
    :pswitch_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v10, :cond_e

    .line 1065
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_d

    .line 1066
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 1067
    and-int/2addr v1, v7

    .line 1068
    and-int v4, v1, v9

    if-ne v4, v9, :cond_c

    .line 1069
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 1071
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1075
    :cond_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1076
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 1078
    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_3

    .line 1079
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1080
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 1084
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 1085
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1086
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 1024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private haveSprintDataRoamGuardSettingsChange(ZZ)V
    .locals 11
    .parameter "enableDomRoamGuard"
    .parameter "enableIntRoamGuard"

    .prologue
    const/high16 v10, 0x10

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 745
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v4, 0x60

    .line 746
    .local v2, prevGuard:I
    const/4 v0, 0x0

    .line 747
    .local v0, currGuard:I
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 748
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x40

    .line 749
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 750
    if-ne v2, v0, :cond_2

    .line 822
    :goto_0
    return-void

    .line 755
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v4, v4, -0x61

    or-int v1, v4, v0

    .line 756
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 757
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 758
    sparse-switch v0, :sswitch_data_0

    .line 815
    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 817
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 821
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 760
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 761
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 763
    :cond_6
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 764
    and-int/2addr v1, v6

    .line 765
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 766
    or-int/2addr v1, v10

    goto :goto_1

    .line 771
    :cond_7
    and-int/2addr v1, v6

    goto :goto_1

    .line 776
    :sswitch_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_9

    .line 777
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_8

    .line 778
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 779
    and-int/2addr v1, v6

    .line 780
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 781
    or-int/2addr v1, v10

    goto :goto_1

    .line 786
    :cond_8
    and-int/2addr v1, v6

    goto :goto_1

    .line 789
    :cond_9
    and-int/2addr v1, v6

    .line 791
    goto :goto_1

    .line 793
    :sswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 794
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 795
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 796
    and-int/2addr v1, v6

    .line 797
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 798
    or-int/2addr v1, v10

    goto/16 :goto_1

    .line 803
    :cond_a
    and-int/2addr v1, v6

    goto/16 :goto_1

    .line 806
    :cond_b
    and-int/2addr v1, v6

    .line 808
    goto/16 :goto_1

    .line 810
    :sswitch_3
    and-int/2addr v1, v6

    .line 811
    const v4, -0x600001

    and-int/2addr v1, v4

    goto/16 :goto_1

    .line 758
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private haveSprintERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const/4 v7, 0x0

    const v6, -0x100001

    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, newNetworkArea:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingType()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roamingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 580
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 581
    const/high16 v2, 0x800

    .line 591
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 592
    .local v0, currNetworkArea:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 593
    if-ne v0, v2, :cond_4

    .line 594
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRG not support, ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 661
    :cond_1
    :goto_1
    return-void

    .line 582
    .end local v0           #currNetworkArea:I
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 583
    const/high16 v2, 0x400

    goto :goto_0

    .line 586
    :cond_3
    if-eqz p3, :cond_0

    .line 587
    const/high16 v2, 0x200

    goto :goto_0

    .line 601
    .restart local v0       #currNetworkArea:I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domestic roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Domestic roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 607
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 609
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 610
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 611
    sparse-switch v2, :sswitch_data_0

    .line 653
    :cond_5
    :goto_2
    invoke-direct {p0, v1, v3, v7, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 655
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 659
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_1

    .line 613
    :sswitch_0
    and-int/2addr v1, v6

    .line 614
    and-int/2addr v1, v10

    .line 615
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 616
    goto :goto_2

    .line 618
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 619
    and-int v4, v1, v8

    if-eq v4, v8, :cond_7

    .line 620
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 621
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 629
    :cond_7
    :goto_3
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 630
    const-string v4, "Domestic data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 631
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 625
    :cond_8
    const-string v4, "Domestic data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 626
    and-int/2addr v1, v6

    .line 627
    and-int/2addr v1, v10

    goto :goto_3

    .line 635
    :sswitch_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 636
    and-int v4, v1, v8

    if-eq v4, v8, :cond_9

    .line 637
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 638
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 646
    :cond_9
    :goto_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 647
    const-string v4, "international data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 648
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 642
    :cond_a
    const-string v4, "International data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 643
    and-int/2addr v1, v6

    .line 644
    and-int/2addr v1, v10

    goto :goto_4

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private haveSprintMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/high16 v9, 0x10

    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v8, -0x100001

    const/high16 v7, 0x4

    .line 890
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 891
    .local v2, prevAllow:I
    if-eqz p1, :cond_0

    move v0, v3

    .line 892
    .local v0, currAllow:I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 932
    :goto_1
    return-void

    .end local v0           #currAllow:I
    :cond_0
    move v0, v4

    .line 891
    goto :goto_0

    .line 896
    .restart local v0       #currAllow:I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 897
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 898
    if-ne v0, v3, :cond_4

    .line 899
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 926
    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 929
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 931
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_1

    .line 903
    :sswitch_1
    and-int/lit8 v3, v1, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    .line 904
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 905
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 906
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 912
    :sswitch_2
    and-int/lit8 v3, v1, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_2

    .line 913
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 914
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 915
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 923
    :cond_4
    and-int/2addr v1, v8

    goto :goto_2

    .line 899
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isDataConnected(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, isDataConnected:Z
    and-int/lit16 v1, p1, 0xf00

    sparse-switch v1, :sswitch_data_0

    .line 1722
    :goto_0
    return v0

    .line 1719
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1715
    nop

    :sswitch_data_0
    .sparse-switch
        0x300 -> :sswitch_0
        0x400 -> :sswitch_0
        0x500 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDataRoamGuardFunctionEnabled()Z
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 1584
    const/4 v0, 0x0

    .line 1585
    .local v0, DRGSupport:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1587
    :goto_0
    return v0

    .line 1585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoamGuardSupported()Z
    .locals 4

    .prologue
    .line 1569
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v0

    .line 1570
    .local v0, eriCarrierId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1571
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    .line 1572
    const/4 v0, 0x3

    .line 1575
    :cond_0
    const/4 v1, 0x0

    .line 1576
    .local v1, supported:Z
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1577
    const/4 v1, 0x1

    .line 1579
    :cond_1
    return v1
.end method

.method private isDataRoaming(I)Z
    .locals 3
    .parameter "givenMode"

    .prologue
    .line 1729
    const/4 v0, 0x0

    .line 1730
    .local v0, dataRoam:Z
    and-int/lit16 v1, p1, 0xf00

    .line 1731
    .local v1, dataStatus:I
    const/16 v2, 0x300

    if-eq v1, v2, :cond_0

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    .line 1732
    :cond_0
    const/high16 v2, 0xf00

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 1752
    :cond_1
    :goto_0
    return v0

    .line 1734
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1735
    const/high16 v2, 0x3000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 1736
    const/4 v0, 0x1

    goto :goto_0

    .line 1740
    :cond_2
    const/4 v0, 0x1

    .line 1742
    goto :goto_0

    .line 1744
    :sswitch_1
    const/4 v0, 0x1

    .line 1745
    goto :goto_0

    .line 1748
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1732
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1883
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1890
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void
.end method

.method private reEnableSprintGuardDialog(Z)V
    .locals 8
    .parameter "isReenableRejected"

    .prologue
    const/high16 v3, 0x60

    const/high16 v7, 0x10

    const v6, -0x100001

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1342
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1344
    .local v0, newMode:I
    if-eqz p1, :cond_3

    .line 1345
    and-int v2, v0, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 1346
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1347
    and-int/lit8 v2, v0, 0x60

    if-eqz v2, :cond_0

    .line 1348
    and-int/2addr v0, v6

    .line 1349
    and-int v2, v0, v5

    if-ne v2, v5, :cond_0

    .line 1350
    or-int/2addr v0, v7

    .line 1353
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1387
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1388
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1390
    .end local v0           #newMode:I
    :cond_2
    return-void

    .line 1357
    .restart local v0       #newMode:I
    :cond_3
    and-int v2, v0, v3

    if-nez v2, :cond_1

    .line 1358
    const/4 v1, 0x0

    .line 1359
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1378
    :cond_4
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_5

    .line 1379
    and-int v2, v0, v5

    if-ne v2, v5, :cond_5

    .line 1380
    and-int v2, v0, v6

    or-int v0, v2, v7

    .line 1383
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_0

    .line 1363
    :sswitch_1
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 1364
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1365
    const/4 v1, 0x1

    goto :goto_1

    .line 1370
    :sswitch_2
    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 1371
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1372
    const/4 v1, 0x1

    goto :goto_1

    .line 1359
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1791
    const-string v0, "Initialize enhanced roaming."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1797
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1801
    return-void
.end method

.method private storeSetting(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1592
    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 1593
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1595
    :cond_0
    if-gez v0, :cond_1

    .line 1596
    const/4 v0, 0x0

    .line 1599
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1601
    return-void
.end method

.method private updateDataRoamingNotification(ILjava/lang/Boolean;)V
    .locals 7
    .parameter "newMode"
    .parameter "requestConnectionStatus"

    .prologue
    const v6, 0x42022

    const/4 v5, 0x0

    .line 1756
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v0

    .line 1757
    .local v0, origDataRoam:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v1

    .line 1758
    .local v1, updateDataRoam:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",updateDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1759
    if-eqz p2, :cond_0

    .line 1760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1763
    :cond_0
    if-eqz v1, :cond_1

    .line 1764
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    .line 1765
    const/4 v1, 0x0

    .line 1769
    :cond_1
    if-eq v0, v1, :cond_2

    .line 1770
    if-eqz v1, :cond_3

    .line 1772
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1786
    :cond_2
    :goto_0
    return-void

    .line 1779
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v6, v5, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0xf00

    const v8, -0x100001

    const/high16 v7, 0x80

    const/high16 v6, 0x4000

    .line 1417
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateSprintPreferSystem(I)V

    .line 1473
    :goto_0
    return-void

    .line 1421
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1422
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1423
    .local v2, newMode:I
    if-eqz p1, :cond_1

    if-ne p1, v10, :cond_2

    .line 1425
    :cond_1
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1427
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1428
    .local v1, newIsEnabled:Z
    if-eq v0, v1, :cond_4

    .line 1429
    const/4 v3, 0x0

    .line 1431
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_7

    .line 1432
    const/high16 v4, 0x3000

    and-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 1467
    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v10, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1470
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1472
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1434
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v4, v2, v9

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_3

    .line 1435
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 1436
    and-int v4, v2, v7

    if-ne v4, v7, :cond_5

    .line 1437
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1440
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1444
    :sswitch_1
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1445
    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    .line 1446
    and-int v4, v2, v7

    if-ne v4, v7, :cond_6

    .line 1447
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1450
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1454
    :sswitch_2
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1455
    and-int v4, v2, v6

    if-eq v4, v6, :cond_3

    .line 1456
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1463
    :cond_7
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1464
    and-int/2addr v2, v8

    .line 1465
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1432
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateSprintPreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 1476
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1477
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1478
    .local v2, newMode:I
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1480
    :cond_0
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1482
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1483
    .local v1, newIsEnabled:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1484
    if-eq v0, v1, :cond_3

    .line 1485
    const/4 v3, 0x0

    .line 1486
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_e

    .line 1487
    and-int/lit8 v4, v2, 0x6

    packed-switch v4, :pswitch_data_0

    .line 1559
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1562
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1564
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1565
    return-void

    .line 1489
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1490
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_5

    :cond_4
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_7

    .line 1492
    :cond_5
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1493
    and-int/2addr v2, v6

    .line 1494
    and-int v4, v2, v8

    if-ne v4, v8, :cond_6

    .line 1495
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1497
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1501
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1502
    and-int/2addr v2, v6

    goto :goto_0

    .line 1507
    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_a

    .line 1508
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    .line 1509
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1510
    and-int/2addr v2, v6

    .line 1511
    and-int v4, v2, v8

    if-ne v4, v8, :cond_8

    .line 1512
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1514
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1518
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1519
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1521
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_2

    .line 1522
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1523
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1527
    :pswitch_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_d

    .line 1528
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_c

    .line 1529
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1530
    and-int/2addr v2, v6

    .line 1531
    and-int v4, v2, v8

    if-ne v4, v8, :cond_b

    .line 1532
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1534
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1538
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1539
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1541
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_2

    .line 1542
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1543
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1547
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1548
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1549
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1555
    :cond_e
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1556
    and-int/2addr v2, v6

    .line 1557
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V
    .locals 8
    .parameter "newMode"
    .parameter "requestConnectionStatus"
    .parameter "userRequest"
    .parameter "turnRoamAllowOff"

    .prologue
    .line 1604
    const/4 v3, 0x0

    .line 1605
    .local v3, notify:Z
    const/high16 v5, 0x60

    and-int/2addr v5, p1

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_0

    .line 1607
    const/4 v3, 0x1

    .line 1609
    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 1610
    const/4 v3, 0x1

    .line 1612
    :cond_1
    const/high16 v5, 0x8

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x8

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    .line 1613
    const/4 v3, 0x1

    .line 1615
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0xf00

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0xf00

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_3

    .line 1616
    const/4 v3, 0x1

    .line 1620
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, p1, 0x6

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x6

    if-eq v5, v6, :cond_5

    .line 1621
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    and-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1622
    const-string v5, "roaming allow change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1623
    const/4 v3, 0x1

    .line 1626
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    and-int/lit8 v5, p1, 0x4

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_5

    .line 1627
    const-string v5, "roaming allow change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1628
    const/4 v3, 0x1

    .line 1632
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_7

    and-int/lit8 v5, p1, 0x60

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x60

    if-eq v5, v6, :cond_7

    .line 1633
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    and-int/lit8 v5, p1, 0x20

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x20

    if-eq v5, v6, :cond_6

    .line 1634
    const-string v5, "roaming guard change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1635
    const/4 v3, 0x1

    .line 1638
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    and-int/lit8 v5, p1, 0x40

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x40

    if-eq v5, v6, :cond_7

    .line 1639
    const-string v5, "roaming guard change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1640
    const/4 v3, 0x1

    .line 1644
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",turnRoamAllowOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",userRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1645
    if-nez v3, :cond_8

    if-eqz p4, :cond_e

    .line 1647
    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v2

    .line 1648
    .local v2, notification:[I
    const/4 v0, 0x0

    .line 1649
    .local v0, bNotify:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v1, v5, :cond_c

    .line 1651
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v1

    aget v6, v2, v1

    if-eq v5, v6, :cond_9

    .line 1652
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v2, v1

    aput v6, v5, v1

    .line 1653
    const/4 v0, 0x1

    .line 1649
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1605
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1656
    .restart local v0       #bNotify:Z
    .restart local v1       #i:I
    .restart local v2       #notification:[I
    :cond_c
    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1657
    :cond_d
    const-string v5, "updateStatusAndConnection.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1658
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1663
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_e
    if-eqz p2, :cond_10

    .line 1664
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1665
    .local v4, requestConnect:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1666
    if-eqz v4, :cond_f

    const/high16 v5, 0x80

    and-int/2addr v5, p1

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_10

    .line 1669
    :cond_f
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v5, :cond_12

    .line 1672
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1674
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    .line 1691
    .end local v4           #requestConnect:Z
    :cond_10
    :goto_3
    return-void

    .line 1679
    .restart local v4       #requestConnect:Z
    :cond_11
    const-string v5, "updateStatusAndConnection: do nothing for VZW,..."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1686
    :cond_12
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    goto :goto_3
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 8

    .prologue
    const/high16 v7, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x4

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, blocking:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedBySprintDataRoamGuard()Z

    move-result v1

    .line 1237
    :goto_0
    return v1

    .line 1210
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1211
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 1212
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1

    .line 1213
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 1214
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 1215
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_2

    move v0, v1

    .line 1236
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedByDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1237
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1215
    goto :goto_1

    .line 1218
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1223
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 1224
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1225
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 1226
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    .line 1227
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 1230
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "CDMA"

    const-string v1, "HtcDatatRoamGuard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const v5, -0x50000001

    const/high16 v4, 0x5000

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 128
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcDataRoamGuard drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 134
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 139
    :pswitch_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 140
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 146
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 149
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 150
    .local v2, statusCdmaRoamingMode:I
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_0

    .line 155
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_3
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 162
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 163
    .local v1, responseMsg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 164
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 165
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 159
    .end local v1           #responseMsg:Landroid/os/Message;
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 9
    .parameter "dataState"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x40001

    .line 1105
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1106
    .local v3, newMode:I
    and-int/lit16 v1, v3, 0xf00

    .line 1107
    .local v1, currDataReqState:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currDataReqState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1108
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_5

    .line 1109
    if-nez v1, :cond_3

    .line 1110
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    .line 1118
    :cond_0
    :goto_0
    const/high16 v5, 0x60

    and-int/2addr v5, v3

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 1119
    and-int v5, v3, v7

    const/high16 v6, 0x4

    or-int v3, v5, v6

    .line 1120
    const v5, -0x600001

    and-int/2addr v3, v5

    .line 1132
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_8

    and-int v5, v3, v8

    if-ne v5, v8, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1135
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v4

    .line 1136
    .local v4, notification:[I
    const/4 v0, 0x0

    .line 1137
    .local v0, bNotify:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v2, v5, :cond_7

    .line 1139
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v2

    aget v6, v4, v2

    if-eq v5, v6, :cond_2

    .line 1140
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v4, v2

    aput v6, v5, v2

    .line 1141
    const/4 v0, 0x1

    .line 1137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1112
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_3
    const/16 v5, 0x100

    if-ne v1, v5, :cond_4

    .line 1113
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    goto :goto_0

    .line 1115
    :cond_4
    const/16 v5, 0x200

    if-ne v1, v5, :cond_0

    .line 1116
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x400

    goto :goto_0

    .line 1123
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_1

    .line 1126
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_1

    .line 1128
    :cond_6
    and-int/lit16 v3, v3, -0xf01

    .line 1129
    and-int/2addr v3, v7

    goto :goto_1

    .line 1145
    .restart local v0       #bNotify:Z
    .restart local v2       #i:I
    .restart local v4       #notification:[I
    :cond_7
    if-eqz v0, :cond_8

    .line 1146
    const-string v5, "dataState.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1147
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1151
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 1153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mode=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1155
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1156
    return-void
.end method

.method public haveERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const/high16 v10, 0x3000

    const/high16 v9, 0x4000

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 486
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintERIupdate(IIZ)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const/4 v2, 0x0

    .line 491
    .local v2, newNetworkArea:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    .line 493
    if-eqz p2, :cond_3

    .line 494
    const/high16 v2, 0x200

    .line 507
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 508
    .local v0, currNetworkArea:I
    if-ne v0, v2, :cond_5

    .line 509
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    .end local v0           #currNetworkArea:I
    :cond_3
    const/high16 v2, 0x100

    goto :goto_1

    .line 502
    :cond_4
    if-eqz p3, :cond_2

    .line 503
    const/high16 v2, 0x200

    goto :goto_1

    .line 517
    .restart local v0       #currNetworkArea:I
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 519
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 520
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 521
    sparse-switch v2, :sswitch_data_0

    .line 566
    :cond_6
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 568
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 572
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_0

    .line 523
    :sswitch_0
    and-int/2addr v1, v6

    .line 524
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 525
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 526
    goto :goto_2

    .line 528
    :sswitch_1
    if-nez v0, :cond_8

    .line 529
    and-int v4, v1, v10

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_6

    .line 530
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 531
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 532
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 533
    and-int v4, v1, v8

    if-ne v4, v8, :cond_6

    .line 534
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    goto :goto_2

    .line 541
    :cond_8
    and-int v4, v1, v10

    if-nez v4, :cond_6

    .line 542
    and-int/2addr v1, v6

    .line 543
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 544
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 549
    :sswitch_2
    and-int v4, v1, v9

    if-ne v4, v9, :cond_a

    .line 550
    and-int v4, v1, v10

    const/high16 v5, 0x2000

    if-eq v4, v5, :cond_6

    .line 551
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 552
    const/high16 v4, 0x60

    and-int/2addr v4, v1

    if-nez v4, :cond_9

    and-int v4, v1, v8

    if-ne v4, v8, :cond_9

    .line 554
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 556
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 561
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v9, -0x100001

    const/high16 v8, 0x4000

    const/high16 v7, 0x4

    .line 829
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 830
    const-string v3, "SPCS roaming enhancement enabled: haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintMobileAllowStatusChange(Z)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v5

    if-nez v5, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x52

    if-ne v5, v6, :cond_3

    .line 837
    :cond_2
    const-string v3, "ignore haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 842
    .local v2, prevAllow:I
    if-eqz p1, :cond_6

    move v0, v3

    .line 843
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 847
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 848
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 849
    if-ne v0, v3, :cond_7

    .line 850
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 881
    :cond_4
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 884
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 886
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_6
    move v0, v4

    .line 842
    goto :goto_1

    .line 854
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    :sswitch_1
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x1000

    if-ne v3, v5, :cond_4

    .line 855
    and-int v3, v1, v7

    if-eq v3, v7, :cond_4

    .line 856
    and-int v3, v1, v8

    if-ne v3, v8, :cond_4

    .line 857
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_4

    .line 858
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 865
    :sswitch_2
    and-int v3, v1, v8

    if-ne v3, v8, :cond_4

    .line 866
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x2000

    if-eq v3, v5, :cond_4

    .line 867
    and-int v3, v1, v7

    if-eq v3, v7, :cond_4

    .line 868
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_4

    .line 869
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 878
    :cond_7
    and-int/2addr v1, v9

    goto :goto_2

    .line 850
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 11
    .parameter "allowRoam"

    .prologue
    const v10, -0x100001

    const/high16 v9, 0xf00

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const/high16 v4, 0x4000

    .line 939
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 940
    const-string v4, "haveRoamAllowSettingChange: Sprint roaming enable, ignore it"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v4

    .line 944
    .local v2, prevAllow:I
    if-eqz p1, :cond_4

    move v0, v4

    .line 945
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 950
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x40000001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 952
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 953
    const/4 v3, 0x0

    .line 955
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 956
    const/high16 v5, 0x3000

    and-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 1001
    :cond_2
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1004
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1006
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 944
    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 958
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v5, v1, v9

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_2

    .line 959
    and-int v5, v1, v4

    if-ne v5, v4, :cond_6

    .line 960
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 961
    and-int/2addr v1, v10

    .line 962
    and-int v4, v1, v8

    if-ne v4, v8, :cond_5

    .line 963
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 965
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 969
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 974
    :sswitch_1
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 975
    and-int v5, v1, v4

    if-ne v5, v4, :cond_8

    .line 976
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 977
    and-int/2addr v1, v10

    .line 978
    and-int v4, v1, v8

    if-ne v4, v8, :cond_7

    .line 979
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 981
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 985
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 990
    :sswitch_2
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 991
    and-int v5, v1, v4

    if-ne v5, v4, :cond_9

    .line 992
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 995
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public reEnableGuardDialog(Z)V
    .locals 9
    .parameter "isReenableRejected"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x100001

    const/high16 v6, 0x3000

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reEnableGuardDialog: isReenableRejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableSprintGuardDialog(Z)V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1295
    .local v0, newMode:I
    if-eqz p1, :cond_4

    .line 1296
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_3

    .line 1297
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1298
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_2

    .line 1299
    and-int/2addr v0, v7

    .line 1300
    and-int v2, v0, v5

    if-ne v2, v5, :cond_2

    .line 1301
    or-int/2addr v0, v8

    .line 1304
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1335
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1336
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1308
    :cond_4
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 1309
    const/4 v1, 0x0

    .line 1310
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1325
    :cond_5
    :goto_2
    :sswitch_0
    if-eqz v1, :cond_6

    .line 1326
    const/high16 v2, 0x4000

    and-int/2addr v2, v0

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_6

    and-int v2, v0, v5

    if-ne v2, v5, :cond_6

    .line 1328
    and-int v2, v0, v7

    or-int v0, v2, v8

    .line 1331
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_1

    .line 1314
    :sswitch_1
    and-int v2, v0, v6

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_5

    .line 1315
    const/4 v1, 0x1

    goto :goto_2

    .line 1319
    :sswitch_2
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_5

    .line 1320
    const/4 v1, 0x1

    goto :goto_2

    .line 1310
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1399
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1400
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1402
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1403
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 178
    return-void
.end method

.method public setSettingTo(I)V
    .locals 11
    .parameter "setting"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    const/high16 v6, 0x4000

    .line 670
    const/high16 v4, 0x3000

    and-int v0, p1, v4

    .line 671
    .local v0, guardSetting:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0x3000

    and-int v2, v4, v5

    .line 672
    .local v2, prevSetting:I
    if-ne v0, v2, :cond_0

    .line 742
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 678
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0x30000001

    and-int/2addr v4, v5

    or-int v1, v4, v0

    .line 680
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 681
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 682
    sparse-switch v0, :sswitch_data_0

    .line 735
    :cond_1
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 737
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 741
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 684
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_5

    .line 685
    and-int v4, v1, v6

    if-ne v4, v6, :cond_4

    .line 686
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 687
    and-int/2addr v1, v7

    .line 688
    and-int v4, v1, v9

    if-ne v4, v9, :cond_3

    .line 689
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 691
    :cond_3
    and-int/2addr v1, v10

    .line 692
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 696
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 700
    :cond_5
    and-int/2addr v1, v7

    .line 701
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 703
    goto :goto_1

    .line 705
    :sswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 706
    and-int v4, v1, v6

    if-ne v4, v6, :cond_7

    .line 707
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 708
    and-int/2addr v1, v7

    .line 709
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 710
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 712
    :cond_6
    and-int/2addr v1, v10

    .line 713
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 717
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 722
    :sswitch_2
    and-int/2addr v1, v7

    .line 723
    and-int/2addr v1, v10

    .line 724
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 725
    and-int v4, v1, v6

    if-ne v4, v6, :cond_8

    .line 726
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 729
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setUserDialogResponse(ZZ)V
    .locals 8
    .parameter "accept"
    .parameter "remember"

    .prologue
    const/high16 v7, 0x2000

    const/high16 v6, 0x8

    const v5, -0x80001

    const v4, -0x600001

    .line 1163
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1164
    .local v0, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 1168
    .local v2, turnAllowRoamOff:Z
    const v3, -0x100001

    and-int/2addr v0, v3

    .line 1169
    if-eqz p2, :cond_2

    .line 1170
    if-eqz p1, :cond_1

    .line 1171
    const v3, -0x30000001

    and-int/2addr v3, v0

    or-int v0, v3, v7

    .line 1172
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 1173
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 1174
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1193
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1196
    .end local v1           #requestConnectionStatus:Ljava/lang/Boolean;
    .end local v2           #turnAllowRoamOff:Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserDialogResponse accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "remember="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1198
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1199
    return-void

    .line 1177
    .restart local v1       #requestConnectionStatus:Ljava/lang/Boolean;
    .restart local v2       #turnAllowRoamOff:Z
    :cond_1
    const v3, -0x40000001

    and-int/2addr v0, v3

    .line 1178
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 1179
    const/4 v2, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    if-eqz p1, :cond_3

    .line 1184
    and-int v3, v0, v4

    const/high16 v4, 0x20

    or-int v0, v3, v4

    .line 1185
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 1186
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1189
    :cond_3
    and-int v3, v0, v4

    const/high16 v4, 0x40

    or-int v0, v3, v4

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1411
    return-void
.end method
