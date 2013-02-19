.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$CmdThread;,
        Lcom/sprint/internal/SystemProperties$SettingProp;,
        Lcom/sprint/internal/SystemProperties$Prop;
    }
.end annotation


# static fields
.field private static final APN0:I = 0x1b0

.field private static final APN1:I = 0x1b1

.field private static final APN2:I = 0x1b2

.field private static final APN3:I = 0x1b3

.field private static final APN4:I = 0x1b4

.field private static final APN5:I = 0x1b5

.field private static final APN6:I = 0x1b6

.field private static final APN7:I = 0x1b7

.field private static final A_Key:I = 0x190

.field private static final A_Key_new:I = 0x18f

.field private static final BROWSER_FORCECHANGE_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/force_change_Browser"

.field public static final DBG:Z = false

.field private static final DSA_Operation_Mode:I = 0x1a2

.field private static final DSA_SERVER_PROXY_IP:I = 0x195

.field private static final DSA_SERVER_PROXY_PORT:I = 0x196

.field private static final DSA_SERVER_URL:I = 0x192

.field private static final EHRPD:I = 0x1af

.field private static final ENABLELTE:I = 0x1ad

.field private static final FORCELTE:I = 0x1ae

.field private static final HTTPPD_PROXY_ADDR:I = 0x19e

.field private static final HTTPPD_PROXY_PORT:I = 0x19f

#the value of this static final field might be set in the static constructor
.field public static final IS_BOOST_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NOT_SPC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_VM_PROJECT:Z = false

.field private static final MDN:I = 0x1

.field private static final MEID:I = 0x1e

.field private static final MSID:I = 0x23

.field private static final PRL_Version:I = 0x19b

.field public static final PROP_MEDIA_HttpProxyHost:Ljava/lang/String; = "streamplayer_httpproxyip_HTC"

.field public static final PROP_MEDIA_HttpProxyPort:Ljava/lang/String; = "streamplayer_httpproxyport_HTC"

.field public static final PROP_MEDIA_RtspProxyHost:Ljava/lang/String; = "streamplayer_rtspproxyip_HTC"

.field public static final PROP_MEDIA_RtspProxyPort:Ljava/lang/String; = "streamplayer_rtspproxyport_HTC"

.field private static final Pseudo_ESN:I = 0x3

.field private static final RTSP_PROXY_ADDR:I = 0x19c

.field private static final RTSP_PROXY_PORT:I = 0x19d

.field private static final SELLER_NAME_420:I = 0x1a4

.field static final SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp; = null

.field private static final SIWA_Key:I = 0x10000001

.field private static final SIWA_Key_new_440:I = 0x1b8

.field static final SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop; = null

.field private static final Slot_1_AAA_Auth_Algo:I = 0x5d

.field private static final Slot_1_AAA_SPI:I = 0x5e

.field private static final Slot_1_HA_Auth_Algo:I = 0x5a

.field private static final Slot_1_HA_Password:I = 0x5c

.field private static final Slot_1_HA_SPI:I = 0x5b

.field private static final Slot_1_Mobile_IP_Address:I = 0x57

.field private static final Slot_1_NAI:I = 0x2

.field private static final Slot_1_NAI_Password:I = 0x2b

.field private static final Slot_1_Primary_HA:I = 0x32

.field private static final Slot_1_Reverse_Tunnel:I = 0x56

.field private static final Slot_1_Secondary_HA:I = 0x33

.field private static TAG:Ljava/lang/String; = null

.field private static final UAProf:I = 0xe

.field private static final countLock:Ljava/lang/Object;

.field private static dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

.field public static flagLoad:Z


# instance fields
.field private APNCa:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspendLock_set:Ljava/lang/Object;

.field message:Ljava/lang/String;

.field private signaturePass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    const-string v0, "HTC-DSA-SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    .line 43
    sput-boolean v2, Lcom/sprint/internal/SystemProperties;->flagLoad:Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 50
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    .line 51
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    .line 52
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    .line 53
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    .line 834
    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/sprint/internal/SystemProperties$Prop;

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "MDN"

    invoke-direct {v3, v1, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Slot1 NAI"

    invoke-direct {v3, v8, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Pseudo ESN"

    invoke-direct {v3, v9, v4, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0xe

    const-string v5, "UAProf"

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0x1e

    const-string v5, "MEID"

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v10

    const/4 v3, 0x5

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x23

    const-string v6, "MSID"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x2b

    const-string v6, "Slot1 NAI Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x32

    const-string v6, "Slot1 Primary HA"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x33

    const-string v6, "Slot1 Secondary HA"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x56

    const-string v6, "Slot1 Reverse Tunneling"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x57

    const-string v6, "Slot1 Mobile IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5a

    const-string v6, "Slot1 HA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5b

    const-string v6, "Slot1 HA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5c

    const-string v6, "Slot1 HA Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5d

    const-string v6, "Slot1 AAA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5e

    const-string v6, "Slot1 AAA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x18f

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x190

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x192

    const-string v6, "DSA Server URL"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x13

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x195

    const-string v6, "DSA Server Proxy IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x14

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x196

    const-string v6, "DSA Server Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x15

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x197

    const-string v6, "MS-Assisted Timout"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x16

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19b

    const-string v6, "PRL Version"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x17

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19c

    const-string v6, "RTSP Proxy Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x18

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19d

    const-string v6, "RTSP Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x19

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19e

    const-string v6, "RTSP HTTPPD Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19f

    const-string v6, "RTSP HTTPPD Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a2

    const-string v6, "DSA Operation Mode"

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a4

    const-string v6, "Seller Name"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const v5, 0x10000001

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b8

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x12c

    const-string v6, "MobileSync Enabled"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x20

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1ad

    const-string v6, "Enable/Disable LTE"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x21

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1ae

    const-string v6, "Force LTE on/off"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x22

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1af

    const-string v6, "EHRPD Enable/Disable"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x23

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b0

    const-string v6, "APN0"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x24

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b1

    const-string v6, "APN1"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x25

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b2

    const-string v6, "APN2"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x26

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b3

    const-string v6, "APN3"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x27

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b4

    const-string v6, "APN4"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x28

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b5

    const-string v6, "APN5"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x29

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b6

    const-string v6, "APN6"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b7

    const-string v6, "APN7"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    .line 889
    new-array v0, v10, [Lcom/sprint/internal/SystemProperties$SettingProp;

    new-instance v3, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v4, 0x19c

    const-string v5, "streamplayer_rtspproxyip_HTC"

    invoke-direct {v3, v4, v5}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v3, 0x19d

    const-string v4, "streamplayer_rtspproxyport_HTC"

    invoke-direct {v2, v3, v4}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19e

    const-string v3, "streamplayer_httpproxyip_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19f

    const-string v3, "streamplayer_httpproxyport_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    return-void

    :cond_0
    move v0, v2

    .line 50
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 51
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 52
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 53
    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->message:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    .line 63
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 70
    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "htctelephony"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    goto :goto_0
.end method

.method private GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;
    .locals 5

    .prologue
    .line 81
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Release AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/sprint/internal/SystemProperties;->ReleaseATAgent()V

    .line 87
    :cond_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-nez v1, :cond_2

    .line 88
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "nul: Initial AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v3, ":IDOMADM"

    invoke-direct {v1, v3}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 90
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dmATAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countLock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    monitor-exit v2

    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 98
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized ReleaseATAgent()V
    .locals 4

    .prologue
    .line 102
    const-class v1, Lcom/sprint/internal/SystemProperties;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 112
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit v1

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 110
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    :try_start_5
    sput-object v3, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/internal/SystemProperties;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    return-object v0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1035
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1037
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1039
    const/4 v0, 0x0

    .line 1043
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1042
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getDSA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 971
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 972
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, ""

    .line 973
    .local v1, strDSAURL:Ljava/lang/String;
    const-string v2, "dsa_server_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    if-nez v1, :cond_0

    .line 975
    const-string v1, ""

    .line 977
    :cond_0
    return-object v1
.end method

.method private getDSAProxyIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 119
    const-string v2, ""

    .line 124
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 121
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 122
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v2, ""

    goto :goto_0
.end method

.method private getDSAProxyPort()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 131
    const-string v2, "0"

    .line 136
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 133
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const-string v2, ""

    goto :goto_0
.end method

.method private getPRLVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1283
    const-string v1, "ro.cdma.prl"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, prl_prop:Ljava/lang/String;
    return-object v0
.end method

.method private getSIWA_Key()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 1060
    const/4 v2, 0x0

    .line 1061
    .local v2, isException:Z
    const-string v3, ""

    .line 1062
    .local v3, result:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1063
    .local v5, s_Key:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1064
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;

    move-result-object v0

    .line 1065
    .local v0, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 1066
    const-string v6, "AT+HTC_SIWA_KEY=?"

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1067
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 1068
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    if-nez v5, :cond_0

    .line 1070
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, 0x1

    .line 1090
    :goto_0
    if-eqz v2, :cond_2

    .line 1091
    new-instance v6, Lcom/sprint/internal/SystemPropertiesException;

    const-string v7, "SystemProperty readable exception: not allow to read"

    invoke-direct {v6, v7}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1068
    .end local v0           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1075
    .restart local v0       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :cond_0
    :try_start_2
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, sKey:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 1078
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIWA_Key result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v2, 0x1

    .line 1083
    :cond_1
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1084
    .end local v4           #sKey:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1085
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key[1].toString().trim() ERROR !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x1

    goto :goto_0

    .line 1094
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method private getSellerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1209
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "Sprint"

    .line 1236
    :goto_0
    return-object v0

    .line 1212
    :cond_0
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_1

    .line 1213
    const-string v0, "Virgin"

    goto :goto_0

    .line 1215
    :cond_1
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    if-eqz v0, :cond_2

    .line 1216
    const-string v0, "Boost"

    goto :goto_0

    .line 1236
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 982
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringViaDMagent(I)Ljava/lang/String;
    .locals 23
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v16, ""

    .line 286
    .local v16, result:Ljava/lang/String;
    const/4 v7, 0x0

    .line 292
    .local v7, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const v18, 0x10000001

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1b8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 294
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->getSIWA_Key()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    move-object/from16 v6, v16

    .line 458
    :goto_0
    return-object v6

    .line 295
    :catch_0
    move-exception v10

    .line 296
    .local v10, e:Lcom/sprint/internal/SystemPropertiesException;
    throw v10

    .line 300
    .end local v10           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_1
    const/16 v18, 0x1ae

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 301
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getFLTE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v18

    const-string v19, ":DMD:PROVISION:GET_LTE_FORCE_FLAG"

    invoke-virtual/range {v18 .. v19}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, CMD_getresult:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GetForceLTE first:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 306
    goto :goto_0

    .line 309
    .end local v3           #CMD_getresult:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x1af

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 310
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getEHRPD"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":IDOMADM"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_7

    .line 314
    :try_start_1
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 315
    const-string v18, "C8266413"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, aTemp:Ljava/lang/String;
    const/16 v18, 0x8

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 317
    .local v4, aInt:I
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getEHRPD get "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 319
    const-string v16, "1"

    .line 322
    :goto_1
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EHRPD"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 329
    if-eqz v7, :cond_3

    .line 330
    :try_start_2
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    :goto_3
    move-object/from16 v6, v16

    .line 337
    goto/16 :goto_0

    .line 321
    .restart local v4       #aInt:I
    .restart local v5       #aTemp:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v16, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 332
    :catch_1
    move-exception v10

    .line 333
    .local v10, e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 324
    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 326
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 329
    if-eqz v7, :cond_5

    .line 330
    :try_start_4
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 335
    :cond_5
    :goto_4
    const/4 v7, 0x0

    .line 336
    goto :goto_3

    .line 332
    :catch_3
    move-exception v10

    .line 333
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 328
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 329
    if-eqz v7, :cond_6

    .line 330
    :try_start_5
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 335
    :cond_6
    :goto_5
    const/4 v7, 0x0

    throw v18

    .line 332
    :catch_4
    move-exception v10

    .line 333
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 339
    .end local v10           #e:Ljava/lang/Exception;
    :cond_7
    const-string v6, "0"

    goto/16 :goto_0

    .line 341
    :cond_8
    const/16 v18, 0x1ad

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 349
    :try_start_6
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string v19, "isUserSettingLTE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 351
    .local v12, isUserSettingLTE:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 352
    .local v11, isEnableLTE:Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 353
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v6, "1"

    goto/16 :goto_0

    .line 357
    :cond_9
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v6, "0"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 361
    .end local v11           #isEnableLTE:Ljava/lang/Boolean;
    .end local v12           #isUserSettingLTE:Ljava/lang/reflect/Method;
    :catch_5
    move-exception v10

    .line 362
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "rlte exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v6, "0"

    goto/16 :goto_0

    .line 374
    .end local v10           #e:Ljava/lang/Exception;
    :cond_a
    const/16 v18, 0x1b0

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    const/16 v18, 0x1b7

    move/from16 v0, p1

    move/from16 v1, v18

    if-gt v0, v1, :cond_c

    .line 375
    move/from16 v0, p1

    add-int/lit16 v2, v0, -0x1b0

    .line 376
    .local v2, APNnum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    if-eqz v18, :cond_b

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, p1

    add-int/lit16 v0, v0, -0x1b0

    move/from16 v19, v0

    aget-object v6, v18, v19

    .line 379
    .local v6, atemp:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    .end local v6           #atemp:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sprint/internal/APNCtl;->getInstance(Landroid/content/Context;)Lcom/sprint/internal/APNCtl;

    move-result-object v13

    .line 384
    .local v13, mAPNCtl:Lcom/sprint/internal/APNCtl;
    invoke-virtual {v13}, Lcom/sprint/internal/APNCtl;->dumpQUERYAPNStructure()V

    .line 385
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sprint/internal/APNCtl;->ParseAPNStructureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 386
    .restart local v6       #atemp:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v2           #APNnum:I
    .end local v6           #atemp:Ljava/lang/String;
    .end local v13           #mAPNCtl:Lcom/sprint/internal/APNCtl;
    :cond_c
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":XCMD"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_f

    .line 409
    :try_start_7
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 410
    const/16 v18, 0x23

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 412
    const-string v18, "C018"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 413
    .local v14, min1:Ljava/lang/String;
    invoke-static {v14}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 414
    .local v8, dwMin1:Ljava/lang/Long;
    invoke-static {v8}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v14

    .line 417
    const-string v18, "C019"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, min2:Ljava/lang/String;
    invoke-static {v15}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 420
    .local v9, dwMin2:Ljava/lang/Long;
    const-string v18, "%03d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/16 v21, 0x3

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 421
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v16

    .line 449
    .end local v8           #dwMin1:Ljava/lang/Long;
    .end local v9           #dwMin2:Ljava/lang/Long;
    .end local v14           #min1:Ljava/lang/String;
    .end local v15           #min2:Ljava/lang/String;
    :cond_d
    :goto_6
    if-eqz v7, :cond_e

    .line 450
    :try_start_8
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 455
    :cond_e
    :goto_7
    const/4 v7, 0x0

    :cond_f
    :goto_8
    move-object/from16 v6, v16

    .line 458
    goto/16 :goto_0

    .line 423
    :cond_10
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 429
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v18

    if-eqz v18, :cond_12

    if-eqz v16, :cond_12

    .line 430
    invoke-static/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 439
    :cond_11
    :goto_9
    if-nez v16, :cond_d

    .line 440
    const-string v16, ""

    goto :goto_6

    .line 432
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v18

    if-eqz v18, :cond_13

    if-eqz v16, :cond_13

    .line 433
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    .end local v16           #result:Ljava/lang/String;
    .local v17, result:Ljava/lang/String;
    move-object/from16 v16, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v16       #result:Ljava/lang/String;
    goto :goto_9

    .line 435
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v18

    if-eqz v18, :cond_14

    if-eqz v16, :cond_14

    .line 436
    invoke-static/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_9

    .line 437
    :cond_14
    const/16 v18, 0x56

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 438
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result-object v16

    goto :goto_9

    .line 452
    :catch_6
    move-exception v10

    .line 453
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 444
    .end local v10           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v10

    .line 446
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 449
    if-eqz v7, :cond_15

    .line 450
    :try_start_a
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 455
    :cond_15
    :goto_a
    const/4 v7, 0x0

    .line 456
    goto :goto_8

    .line 452
    :catch_8
    move-exception v10

    .line 453
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 448
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    .line 449
    if-eqz v7, :cond_16

    .line 450
    :try_start_b
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 455
    :cond_16
    :goto_b
    const/4 v7, 0x0

    throw v18

    .line 452
    :catch_9
    move-exception v10

    .line 453
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private isMainThread()Z
    .locals 6

    .prologue
    .line 1344
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1345
    .local v2, myLooper:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1346
    .local v1, mainLooper:Landroid/os/Looper;
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 1347
    .local v0, bIsMainLooper:Z
    :goto_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return v0

    .line 1346
    .end local v0           #bIsMainLooper:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v11, 0x0

    .line 994
    const/4 v7, 0x0

    .line 995
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 998
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 999
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1000
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1002
    if-nez v7, :cond_1

    .line 1003
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    if-eqz v7, :cond_0

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1024
    const/4 v7, 0x0

    :cond_0
    move-object v2, v11

    .line 1028
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1007
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1008
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1010
    const/4 v7, 0x0

    .line 1022
    if-eqz v7, :cond_2

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1024
    const/4 v7, 0x0

    :cond_2
    move-object v2, v11

    goto :goto_0

    .line 1014
    :cond_3
    :try_start_2
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1016
    .local v10, idValue:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1017
    .local v8, data:[B
    invoke-direct {p0, v8}, Lcom/sprint/internal/SystemProperties;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 1022
    if-eqz v7, :cond_4

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1024
    const/4 v7, 0x0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    :cond_4
    :goto_1
    move-object v2, v6

    .line 1028
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v9

    .line 1019
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Quering browser customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1020
    const/4 v6, 0x0

    .line 1022
    if-eqz v7, :cond_4

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1024
    const/4 v7, 0x0

    goto :goto_1

    .line 1022
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1024
    const/4 v7, 0x0

    :cond_5
    throw v2
.end method

.method public static mappingItem(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 901
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 938
    :goto_0
    return-object v0

    .line 902
    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 904
    :sswitch_0
    const-string v0, "C001"

    goto :goto_0

    .line 908
    :sswitch_1
    const-string v0, "C004"

    goto :goto_0

    .line 910
    :sswitch_2
    const-string v0, "C003"

    goto :goto_0

    .line 912
    :sswitch_3
    const-string v0, "C005"

    goto :goto_0

    .line 914
    :sswitch_4
    const-string v0, "C005"

    goto :goto_0

    .line 916
    :sswitch_5
    const-string v0, "C006"

    goto :goto_0

    .line 918
    :sswitch_6
    const-string v0, "C007"

    goto :goto_0

    .line 920
    :sswitch_7
    const-string v0, "C008"

    goto :goto_0

    .line 922
    :sswitch_8
    const-string v0, "C009"

    goto :goto_0

    .line 924
    :sswitch_9
    const-string v0, "C010"

    goto :goto_0

    .line 926
    :sswitch_a
    const-string v0, "C011"

    goto :goto_0

    .line 928
    :sswitch_b
    const-string v0, "C012"

    goto :goto_0

    .line 930
    :sswitch_c
    const-string v0, "C013"

    goto :goto_0

    .line 932
    :sswitch_d
    const-string v0, "C014"

    goto :goto_0

    .line 934
    :sswitch_e
    const-string v0, "C015"

    goto :goto_0

    .line 936
    :sswitch_f
    const-string v0, "C016"

    goto :goto_0

    .line 902
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x1e -> :sswitch_1
        0x2b -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x56 -> :sswitch_e
        0x57 -> :sswitch_f
        0x5a -> :sswitch_9
        0x5b -> :sswitch_a
        0x5c -> :sswitch_b
        0x5d -> :sswitch_c
        0x5e -> :sswitch_d
        0x18f -> :sswitch_4
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    return-void
.end method

.method private setDSAProxyIP(Ljava/lang/String;)V
    .locals 5
    .parameter "strIP"

    .prologue
    .line 141
    const-string v2, ""

    .line 142
    .local v2, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, port:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    :goto_1
    return-void

    .line 148
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setDSAProxyPort(Ljava/lang/String;)V
    .locals 5
    .parameter "strPort"

    .prologue
    .line 157
    const-string v1, ""

    .line 158
    .local v1, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, strIP:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    :goto_1
    return-void

    .line 164
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 3
    .parameter "cr"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 987
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 989
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 11
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 174
    sget-boolean v8, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v8, :cond_1

    move-object v3, v7

    .line 277
    :cond_0
    :goto_0
    return-object v3

    .line 176
    :cond_1
    iget-boolean v8, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v8, :cond_2

    .line 177
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Verify "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " signature fail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :cond_2
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getReadable(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 180
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not allowed to read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "SystemProperty readable exception: not allow to read"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 185
    :cond_3
    const-string v8, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-static {v8}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 194
    const-string v3, ""

    .line 195
    .local v3, result:Ljava/lang/String;
    const/16 v8, 0x5a

    if-eq p1, v8, :cond_4

    const/16 v8, 0x5d

    if-ne p1, v8, :cond_6

    .line 196
    :cond_4
    const-string v3, "MD5"

    goto :goto_0

    .line 188
    .end local v3           #result:Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v8, "****** require SYSTEMPROPERTIES permission-getString!!****** "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 198
    .restart local v3       #result:Ljava/lang/String;
    :cond_6
    const/16 v8, 0x192

    if-ne p1, v8, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSA()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 201
    :cond_7
    const/16 v8, 0x195

    if-ne p1, v8, :cond_8

    .line 202
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 204
    :cond_8
    const/16 v8, 0x196

    if-ne p1, v8, :cond_9

    .line 205
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 207
    :cond_9
    const/16 v8, 0x19c

    if-lt p1, v8, :cond_a

    const/16 v8, 0x19f

    if-gt p1, v8, :cond_a

    .line 208
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 210
    :cond_a
    const/16 v8, 0x19b

    if-ne p1, v8, :cond_b

    .line 211
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getPRLVer()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 213
    :cond_b
    const/16 v8, 0x1a4

    if-ne p1, v8, :cond_c

    .line 214
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getSellerName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 217
    :cond_c
    const/16 v8, 0xe

    if-ne p1, v8, :cond_e

    .line 218
    const-string v3, ""

    .line 219
    iget-object v8, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    const-string v9, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-direct {p0, v8, v9, v7}, Lcom/sprint/internal/SystemProperties;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ua_profile"

    .line 223
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 224
    .local v5, ua_profileBundle:Landroid/os/Bundle;
    if-nez v5, :cond_d

    .line 225
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v8, "No UA profile customization data found, abort customizing browser UA profile"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_d
    const-string v2, "value"

    .line 231
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, value:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uaProfile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v6, :cond_0

    .line 236
    move-object v3, v6

    goto/16 :goto_0

    .line 240
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #ua_profileBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 242
    new-instance v4, Lcom/sprint/internal/SystemProperties$1;

    invoke-direct {v4, p0}, Lcom/sprint/internal/SystemProperties$1;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 260
    .local v4, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v8, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v8

    .line 261
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 262
    invoke-virtual {v4}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :try_start_1
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lcom/sprint/internal/SystemProperties$CmdThread;->getStrResult()Ljava/lang/String;

    move-result-object v3

    .line 270
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v9, "wait><"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 272
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .end local v4           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_f
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public isRevert(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 963
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 964
    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    .line 966
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransHexid(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 955
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 956
    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 959
    goto :goto_0
.end method

.method public isTransIPid(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 944
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 945
    :cond_1
    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    const/16 v1, 0x33

    if-eq p1, v1, :cond_0

    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    .line 951
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSA(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 1048
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1049
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 1051
    .local v0, blStore:Z
    :try_start_0
    const-string v3, "dsa_server_url"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1055
    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1052
    :catch_0
    move-exception v2

    .line 1053
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1055
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 658
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-boolean v3, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v3, :cond_2

    .line 661
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 663
    :cond_2
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getWritable(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 664
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed to write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "SystemProperty writable exception: not allow to write"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    :cond_3
    const-string v3, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-static {v3}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 670
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "****** require SYSTEMPROPERTIES_WRITE permission-setString!!****** "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    :cond_4
    const/4 v0, 0x1

    .line 676
    .local v0, bPropNoDMAgent:Z
    const/16 v3, 0x192

    if-ne p1, v3, :cond_5

    .line 677
    invoke-virtual {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSA(Ljava/lang/String;)I

    .line 692
    :goto_1
    if-nez v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 698
    new-instance v2, Lcom/sprint/internal/SystemProperties$2;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties$2;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 717
    .local v2, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v4, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    monitor-enter v4

    .line 718
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 719
    invoke-virtual {v2, p2}, Lcom/sprint/internal/SystemProperties$CmdThread;->setValue(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v2}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :try_start_1
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 727
    :goto_2
    :try_start_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 679
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_5
    const/16 v3, 0x19c

    if-lt p1, v3, :cond_6

    const/16 v3, 0x19f

    if-gt p1, v3, :cond_6

    .line 680
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/sprint/internal/SystemProperties;->setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V

    goto :goto_1

    .line 682
    :cond_6
    const/16 v3, 0x195

    if-ne p1, v3, :cond_7

    .line 683
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyIP(Ljava/lang/String;)V

    goto :goto_1

    .line 685
    :cond_7
    const/16 v3, 0x196

    if-ne p1, v3, :cond_8

    .line 686
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyPort(Ljava/lang/String;)V

    goto :goto_1

    .line 689
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 723
    .restart local v2       #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :catch_0
    move-exception v1

    .line 724
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "wait><"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 729
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->setStringViaDMAgent(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setStringViaDMAgent(ILjava/lang/String;)V
    .locals 37
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 462
    const/16 v32, 0x1ae

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 463
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SetForceLTE:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v5, ""

    .line 465
    .local v5, CMD_getresult:Ljava/lang/String;
    const-string v6, ""

    .line 466
    .local v6, CMD_setresult:Ljava/lang/String;
    const-string v7, ":DMD:PROVISION:GET_LTE_FORCE_FLAG"

    .line 467
    .local v7, DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    const-string v8, ":DMD:PROVISION:SET_LTE_FORCE_FLAG"

    .line 468
    .local v8, DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    const-string v11, "com.htc.omadm.LTE_FORCE_FLAG_STATE_CHANGE"

    .line 469
    .local v11, LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    const-string v10, "1"

    .line 470
    .local v10, Enable:Ljava/lang/String;
    const-string v9, "0"

    .line 472
    .local v9, Disable:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 474
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "GetForceLTE first:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    .line 477
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 478
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "CMD_setresult:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 481
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Broadcast intent: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v23, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    .end local v5           #CMD_getresult:Ljava/lang/String;
    .end local v6           #CMD_setresult:Ljava/lang/String;
    .end local v7           #DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    .end local v8           #DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    .end local v9           #Disable:Ljava/lang/String;
    .end local v10           #Enable:Ljava/lang/String;
    .end local v11           #LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    .end local v23           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v5       #CMD_getresult:Ljava/lang/String;
    .restart local v6       #CMD_setresult:Ljava/lang/String;
    .restart local v7       #DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    .restart local v8       #DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    .restart local v9       #Disable:Ljava/lang/String;
    .restart local v10       #Enable:Ljava/lang/String;
    .restart local v11       #LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 489
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "CMD_setresult:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 492
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Broadcast intent: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .restart local v23       #i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    .end local v5           #CMD_getresult:Ljava/lang/String;
    .end local v6           #CMD_setresult:Ljava/lang/String;
    .end local v7           #DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    .end local v8           #DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    .end local v9           #Disable:Ljava/lang/String;
    .end local v10           #Enable:Ljava/lang/String;
    .end local v11           #LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    .end local v23           #i:Landroid/content/Intent;
    :cond_2
    const/16 v32, 0x1af

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 506
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "setEHRPD"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":IDOMADM"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 508
    .local v16, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v16, :cond_0

    .line 510
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 511
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 512
    const-string v32, "C827641304"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 513
    .local v12, aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EHRPD set 1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_1
    if-eqz v16, :cond_3

    .line 526
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :cond_3
    :goto_2
    const/16 v16, 0x0

    .line 532
    goto/16 :goto_0

    .line 516
    .end local v12           #aTemp:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v32, "C827641301"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 517
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EHRPD set 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 520
    .end local v12           #aTemp:Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 525
    if-eqz v16, :cond_5

    .line 526
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 531
    :cond_5
    :goto_3
    const/16 v16, 0x0

    .line 532
    goto/16 :goto_0

    .line 528
    .restart local v12       #aTemp:Ljava/lang/String;
    :catch_1
    move-exception v21

    .line 529
    .local v21, e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 528
    .end local v12           #aTemp:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v21

    .line 529
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 524
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v32

    .line 525
    if-eqz v16, :cond_6

    .line 526
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 531
    :cond_6
    :goto_4
    const/16 v16, 0x0

    throw v32

    .line 528
    :catch_3
    move-exception v21

    .line 529
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v33, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v34, "close Connection fail"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 537
    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v21           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v32, 0x1ad

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 539
    :try_start_5
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "slte"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    const-string v33, "changeUserSettingLTE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    sget-object v36, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v36, v34, v35

    invoke-virtual/range {v32 .. v34}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 541
    .local v15, changeUserSettingLTE:Ljava/lang/reflect/Method;
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 548
    .end local v15           #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v21

    .line 549
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "exception "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 545
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v15       #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 563
    .end local v15           #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :cond_9
    const/16 v32, 0x1b0

    move/from16 v0, p1

    move/from16 v1, v32

    if-lt v0, v1, :cond_c

    const/16 v32, 0x1b7

    move/from16 v0, p1

    move/from16 v1, v32

    if-gt v0, v1, :cond_c

    .line 564
    move/from16 v0, p1

    add-int/lit16 v4, v0, -0x1b0

    .line 565
    .local v4, APNnum:I
    const/4 v3, 0x0

    .line 566
    .local v3, APNcontent:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object p2, v32, v4

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sprint/internal/APNCtl;->getInstance(Landroid/content/Context;)Lcom/sprint/internal/APNCtl;

    move-result-object v24

    .line 569
    .local v24, mAPNCtl:Lcom/sprint/internal/APNCtl;
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->init_InputCMD()V

    .line 570
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->dumpQUERYAPNStructure()V

    .line 571
    const-string v32, "0"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_a

    .line 572
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "insert"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->InputAPNString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/sprint/internal/APNCtl;->SetApnStructure([Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->dumpCMDAPNStructure()V

    .line 576
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->SetAPN()I

    goto/16 :goto_0

    .line 579
    :cond_a
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->CheckAPNStructureExist(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 580
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "erase"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->ParseAPNStructureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->InputAPNString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 582
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/sprint/internal/APNCtl;->ReplaceEnabldToDisable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/sprint/internal/APNCtl;->SetApnStructure([Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->SetAPN()I

    goto/16 :goto_0

    .line 587
    :cond_b
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "already erase"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .end local v3           #APNcontent:[Ljava/lang/String;
    .end local v4           #APNnum:I
    .end local v24           #mAPNCtl:Lcom/sprint/internal/APNCtl;
    :cond_c
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":XCMD"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v32, ":XCMD"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 596
    const/16 v32, 0x23

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 597
    const/16 v32, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 599
    .local v25, min1:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 600
    .local v17, dwCdmaMin1:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    .line 601
    .local v28, strHexCdmaMin1:Ljava/lang/String;
    const/16 v32, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 602
    invoke-static/range {v28 .. v28}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 603
    .local v13, cdmaMin1:Ljava/lang/String;
    const-string v32, "C018"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 607
    .local v26, min2:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 608
    .local v19, dwCdmaMin2:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-wide/16 v33, 0x3

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 609
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v29

    .line 610
    .local v29, strHexCdmaMin2:Ljava/lang/String;
    const/16 v32, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 611
    invoke-static/range {v29 .. v29}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 613
    .local v14, cdmaMin2:Ljava/lang/String;
    const-string v32, "C019"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_0

    .line 617
    .end local v13           #cdmaMin1:Ljava/lang/String;
    .end local v14           #cdmaMin2:Ljava/lang/String;
    .end local v17           #dwCdmaMin1:J
    .end local v19           #dwCdmaMin2:J
    .end local v25           #min1:Ljava/lang/String;
    .end local v26           #min2:Ljava/lang/String;
    .end local v28           #strHexCdmaMin1:Ljava/lang/String;
    .end local v29           #strHexCdmaMin2:Ljava/lang/String;
    :cond_d
    const/16 v32, 0x2b

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 618
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 619
    .local v22, haString:Ljava/lang/String;
    const-string v32, "C007"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_0

    .line 624
    .end local v22           #haString:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 626
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 642
    :cond_f
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 643
    .local v27, result:Z
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "setString("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "):"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v32, 0x1

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->refreshUI()V

    .line 650
    :cond_10
    const/16 v30, 0x1

    .line 651
    .local v30, tag:Z
    if-eqz v30, :cond_0

    .line 652
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_0

    .line 629
    .end local v27           #result:Z
    .end local v30           #tag:Z
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 631
    move-object/from16 v31, p2

    .line 632
    .local v31, tmp:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/sprint/internal/dm/DMAgentConnector;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 633
    goto :goto_5

    .line 635
    .end local v31           #tmp:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 636
    const/16 v32, 0x5b

    move/from16 v0, p1

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    const/16 v32, 0x5e

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 637
    :cond_13
    const/16 v32, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 639
    :cond_14
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5
.end method
