.class public Lcom/htc/app/admin/DpmErrorCode;
.super Ljava/lang/Object;
.source "DpmErrorCode.java"


# static fields
.field public static final ACTION_DPM_ERROR_STATUS:Ljava/lang/String; = "com.htc.app.admin.dpm.action.DPM_ERROR_STATUS"

.field public static final DPM_ERROR_ADD_EAS_ACCOUNT_SUCCESS:I = 0x1

.field public static final DPM_ERROR_ADD_VPN_SUCCESS:I = 0x5

.field public static final DPM_ERROR_CERT_CANCELLED:I = -0x12d

.field public static final DPM_ERROR_CERT_DELETION_FAILED:I = -0x12e

.field public static final DPM_ERROR_CERT_EMPTY_CERTDATA:I = -0x12f

.field public static final DPM_ERROR_CERT_INVALID_ARGUMENTS:I = -0x130

.field public static final DPM_ERROR_CERT_INVALID_CERTNAME:I = -0x131

.field public static final DPM_ERROR_CERT_INVALID_CERTTYPE:I = -0x132

.field public static final DPM_ERROR_CERT_TOO_LARGE_CERTIFICATE:I = -0x133

.field public static final DPM_ERROR_CERT_UNABLE_TO_SAVE_CERTIFICATE:I = -0x134

.field public static final DPM_ERROR_CERT_WRONG_PASSWORD_OR_INVALID_DATA:I = -0x135

.field public static final DPM_ERROR_DELETE_VPN_SUCCESS:I = 0x6

.field public static final DPM_ERROR_EAS_ACCT_ADD_FAILED:I = -0xc9

.field public static final DPM_ERROR_EAS_ACCT_ALREADY_EXISTS:I = -0xca

.field public static final DPM_ERROR_EAS_ACCT_DELETE_FAILED:I = -0xcb

.field public static final DPM_ERROR_EAS_ACCT_FETCH_FAILED:I = -0xcc

.field public static final DPM_ERROR_EAS_GET_ACTIVESYNC_ID_FAILED:I = -0xc8

.field public static final DPM_ERROR_GET_ACTIVE_SYNC_ID_SUCCESS:I = 0x3

.field public static final DPM_ERROR_GET_VPN_FAILED:I = -0x190

.field public static final DPM_ERROR_GET_VPN_SUCCESS:I = 0x7

.field public static final DPM_ERROR_INSTALL_CERTIFICATE_SUCCESS:I = 0x4

.field public static final DPM_ERROR_REMOVE_EAS_ACCOUNT_SUCCESS:I = 0x2

.field public static final DPM_ERROR_SD_CARD_NOT_FOUND:I = -0x64

.field public static final DPM_ERROR_SD_CARD_OTHERS:I = -0x65

.field public static final DPM_ERROR_VPN_ADD_FAILED:I = -0x191

.field public static final DPM_ERROR_VPN_INVALID_CA_CERTIFICATE:I = -0x192

.field public static final DPM_ERROR_VPN_INVALID_ID:I = -0x193

.field public static final DPM_ERROR_VPN_INVALID_ID_DELETE_FAILED:I = -0x194

.field public static final DPM_ERROR_VPN_INVALID_ID_FETCH_FAILED:I = -0x195

.field public static final DPM_ERROR_VPN_INVALID_IPSEC_PRE_SHARED_KEY:I = -0x196

.field public static final DPM_ERROR_VPN_INVALID_L2TP_SECRET:I = -0x197

.field public static final DPM_ERROR_VPN_INVALID_SERVER_NAME:I = -0x198

.field public static final DPM_ERROR_VPN_INVALID_USER_CERTIFICATE:I = -0x199

.field public static final DPM_ERROR_VPN_INVALID_VPN_TYPE:I = -0x19a

.field public static final DPM_ERROR_VPN_NAME_ALREADY_EXISTS:I = -0x19b

.field public static final DPM_ERROR_WIPE_SD_CARD_SUCCESS:I = 0x0

.field public static final EXTRA_ACTIVE_SYNC_DEVICE_ID:Ljava/lang/String; = "com.htc.app.admin.dpm.extra.ACTIVE_SYNC_DEVICE_ID"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.htc.app.admin.dpm.extra.ERROR_CODE"

.field public static final EXTRA_STORAGE_PATH:Ljava/lang/String; = "com.htc.app.admin.dpm.extra.STORAGE_PATH"

.field public static final EXTRA_VPN_INFO:Ljava/lang/String; = "com.htc.app.admin.dpm.extra.VPN_INFO"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method
