.class public Lcom/htc/dlnasharedmodule/HtcDLNAController;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "dlna"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://dlna"

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DIALOG_DMR_DISCONNECT:I = 0x0

.field public static final DLNA_COOKIE_GALLERY:I = 0x0

.field public static final DLNA_COOKIE_HTCALBUM:Ljava/lang/String; = "HtcAlbum"

.field public static final DLNA_COOKIE_HTCMUSIC:Ljava/lang/String; = "HtcMusic"

.field public static final DLNA_COOKIE_MUSIC:I = 0x1

.field public static final DLNA_CTRL_STATE_BUFFERING:I = 0x5

.field public static final DLNA_CTRL_STATE_IDLE:I = -0x1

.field public static final DLNA_CTRL_STATE_PAUSED:I = 0x2

.field public static final DLNA_CTRL_STATE_STARTED:I = 0x0

.field public static final DLNA_CTRL_STATE_STOPPED:I = 0x1

.field public static final DLNA_CTRL_STATE_TIMEOUT:I = 0xc

.field public static final DLNA_CTRL_STATE_WAITING:I = 0xb

.field static final DLNA_INTER_AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field static final DLNA_INTER_NO_MEDIA:I = 0x6

.field static final DLNA_INTER_PAUSED:I = 0x2

.field static final DLNA_INTER_PAUSED_RECORDING:I = 0x3

.field static final DLNA_INTER_PLAYING:I = 0x0

.field static final DLNA_INTER_RECORDING:I = 0x4

.field static final DLNA_INTER_STOPPED:I = 0x1

.field static final DLNA_INTER_TRANSITIONING:I = 0x5

.field static final DLNA_INTER_UNKNOWN:I = 0x7

.field public static final DLNA_MODE_MUSIC:I = 0x1

.field public static final DLNA_MODE_PHOTO:I = 0x2

.field public static final DLNA_MODE_VIDEO:I = 0x0

.field public static final DLNA_REPEAT_STATE_NOREPEAT:I = 0x0

.field public static final DLNA_REPEAT_STATE_REPEATALL:I = 0x1

.field public static final DLNA_REPEAT_STATE_REPEATONE:I = 0x2

.field public static final DLNA_SLIDESHOW_DURATION:I = 0xa

.field public static final DLNA_SOURCE_INTERNET:I = 0x2

.field public static final DLNA_SOURCE_INTERNET_WEBSITE:I = 0x3

.field public static final DLNA_SOURCE_LOCAL:I = 0x0

.field public static final DLNA_SOURCE_REMOTE:I = 0x1

.field private static final DMCAPP_STATUS:I = 0x12d

.field public static final DMC_FORCE_OFF:I = 0x2

.field public static final DMC_FORCE_ON:I = 0x1

.field public static final DMC_NOFORCE:I = 0x0

.field private static final DMR_FUNC_ACTION_GET:I = 0x1

.field private static final DMR_FUNC_ACTION_SET:I = 0x0

.field private static final DMR_FUNC_CURRENT:I = 0x1

.field private static final DMR_FUNC_DEFAULT:I = 0x0

.field private static final NOTIFY_CTRL_ERROR:I = 0x64

.field private static final NOTIFY_CTRL_RESPONSE:I = 0x65

.field private static final NOTIFY_DMR_MSG_TIMEOUT:I = 0x69

.field private static final NOTIFY_DMR_REMOVED:I = 0x67

.field private static final NOTIFY_DMR_TIMEOUT:I = 0x68

.field private static final NOTIFY_DMS_REMOVED:I = 0x6a

.field private static final NOTIFY_SHOW_DETAILS:I = 0x6b

.field private static final NOTIFY_VOLBLOCK_TIMEOUT:I = 0xca

.field private static final NOTIFY_VOLUI_TIMEOUT:I = 0xc9

.field private static final NOTIFY_WANT_POWEROFF:I = 0x66

.field private static final REFRESH_ALBUMART:I = 0x1

.field private static final REFRESH_DMCPREP:I = 0x9

.field private static final REFRESH_DMR:I = 0x8

.field private static final REFRESH_INFO:I = 0x0

.field private static final REFRESH_LISTINDEX:I = 0x2

.field private static final REFRESH_PLAYSTATE:I = 0x4

.field private static final REFRESH_RSTATE:I = 0x5

.field private static final REFRESH_SSTATE:I = 0x6

.field private static final REFRESH_TIME:I = 0x3

.field private static final REFRESH_VOLUME:I = 0x7

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[HtcDLNAController]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/content/Context;


# instance fields
.field private lPreSeek:J

.field private mCallbackUnregistered:Z

.field mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

.field public mCurContainerID:Ljava/lang/String;

.field public mCurContentID:Ljava/lang/String;

.field private mCurCookie:I

.field private mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

.field private mCurDMRID:Ljava/lang/String;

.field private mCurDMRName:Ljava/lang/String;

.field private mCurFCap:I

.field public mCurFilePath:Ljava/lang/String;

.field private mCurFilePathList:[Ljava/lang/String;

.field private mCurFolderID:Ljava/lang/String;

.field private mCurFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurFolderName:Ljava/lang/String;

.field private mCurFolderPanelID:Ljava/lang/String;

.field private mCurFolderPosition:Ljava/lang/String;

.field private mCurFolderType:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mCurMode:I

.field private mCurOnlineThumbPath:Ljava/lang/String;

.field private mCurOnlineThumbPathList:[Ljava/lang/String;

.field private mCurOnlineTitle:Ljava/lang/String;

.field private mCurOnlineTitleList:[Ljava/lang/String;

.field private mCurOnlineURL:Ljava/lang/String;

.field private mCurOnlineURLList:[Ljava/lang/String;

.field public mCurPLDirection:I

.field public mCurPLEndIdx:J

.field public mCurPLStartIdx:J

.field private mCurPushList:[I

.field public mCurServerID:Ljava/lang/String;

.field private mCurSlideDur:I

.field private mCurSource:I

.field private mCurThumbHQ:Z

.field private mCurURL:Ljava/lang/String;

.field mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

.field mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

.field private mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

.field mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

.field private mIsBtnPPEnable:Z

.field public mIsDMCLineOn:Z

.field private mIsNewIntented:Z

.field private mIsRequestDetails:Z

.field mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field mOldState:I

.field private mOncePlayed:Z

.field private mPosTimer:Ljava/util/Timer;

.field mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mState:I

.field mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

.field private mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

.field private mSwitchTimer:Ljava/util/Timer;

.field private mVolSetBlocked:Z

.field private mbIsEncrypted:Z

.field private mbIsNewDataSource:Z

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "nSource"
    .parameter "szCookie"
    .parameter "nMode"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszAppTitle:Ljava/lang/String;

    .line 829
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    .line 830
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-direct {v0, p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    .line 832
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 890
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 891
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    .line 894
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsNewIntented:Z

    .line 896
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 898
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 900
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 901
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    .line 906
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 907
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 910
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurThumbHQ:Z

    .line 913
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 914
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 918
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 919
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 920
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 925
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 931
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 932
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 934
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 935
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 941
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 946
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 951
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 956
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 961
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    .line 963
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 964
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 965
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 966
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 968
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 969
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 970
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 973
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurURL:Ljava/lang/String;

    .line 979
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderID:Ljava/lang/String;

    .line 980
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderType:Ljava/lang/String;

    .line 981
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderName:Ljava/lang/String;

    .line 982
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderPosition:Ljava/lang/String;

    .line 983
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderPanelID:Ljava/lang/String;

    .line 984
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderList:Ljava/util/ArrayList;

    .line 987
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 989
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsBtnPPEnable:Z

    .line 991
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 992
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 1501
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1570
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsDMCLineOn:Z

    .line 1616
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    .line 1909
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 2067
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 2179
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    .line 2237
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 2248
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 2259
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 2274
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2403
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2420
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2434
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    .line 2462
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2482
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2490
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2834
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 2084
    sput-object p1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    .line 2086
    iput p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 2092
    const-string v0, "HtcMusic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2093
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 2101
    :goto_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-ne v0, v3, :cond_0

    .line 2102
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2104
    :cond_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-nez v0, :cond_1

    .line 2105
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2107
    :cond_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_2

    .line 2108
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2112
    :cond_2
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_5

    .line 2115
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 2121
    :goto_1
    return-void

    .line 2094
    :cond_3
    const-string v0, "HtcAlbum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2095
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 2097
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 2118
    :cond_5
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x0

    return v0
.end method

.method private GetPref()Z
    .locals 1

    .prologue
    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method private SavePref()Z
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method private static getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "nAction"
    .parameter "nWhich"
    .parameter "szCurCookie"
    .parameter "szDMRID"

    .prologue
    const/4 v0, 0x1

    .line 135
    if-nez p3, :cond_0

    const-string p3, ""

    .line 137
    :cond_0
    if-nez p1, :cond_2

    .line 138
    if-nez p0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 140
    :cond_1
    if-ne p0, v0, :cond_4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    if-ne p1, v0, :cond_4

    .line 144
    if-nez p0, :cond_3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_3
    if-ne p0, v0, :cond_4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "nMode"

    .prologue
    .line 1380
    const/4 v0, 0x0

    return-object v0
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1495
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/4 v0, 0x0

    .line 1498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetVolBlock()V
    .locals 4

    .prologue
    const/16 v2, 0xca

    .line 2069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 2070
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2071
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2072
    return-void
.end method

.method private setDMCLine(I)V
    .locals 3
    .parameter "nForce"

    .prologue
    .line 1575
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDMCLine nForce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method


# virtual methods
.method protected ChangeState(Z)V
    .locals 12
    .parameter "bReload"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    .line 1928
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v3, :cond_2

    .line 1929
    const/4 v8, 0x1

    .line 1931
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1939
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 1952
    :goto_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 1953
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 1954
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    .line 2031
    .end local v8           #nSSState:I
    :cond_1
    :goto_2
    :sswitch_0
    return-void

    .line 1932
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 1933
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1935
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 1936
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1942
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iput v11, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1945
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1947
    iput v10, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1960
    .end local v8           #nSSState:I
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    .line 1963
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 1964
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_8

    .line 1965
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 1966
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    .line 1967
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1968
    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    .line 1969
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1970
    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v3, :cond_6

    .line 1971
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1972
    :cond_6
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2602(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z

    .line 1974
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1986
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2600(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    :goto_4
    sparse-switch v0, :sswitch_data_0

    .line 2005
    :goto_5
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    .line 2022
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :goto_6
    :sswitch_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 2028
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 2029
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    goto/16 :goto_2

    .line 1976
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 1978
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 1979
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1980
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 1981
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 1982
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1986
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_9
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_4

    .line 1988
    :sswitch_2
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1990
    iput v11, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 1994
    :sswitch_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1995
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 2000
    :sswitch_4
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 2001
    iput v10, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto/16 :goto_5

    .line 2016
    :sswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_6

    .line 2019
    :sswitch_6
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput v10, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_6

    .line 1939
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1986
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 2005
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method

.method protected RequestDetails(Ljava/lang/String;)V
    .locals 6
    .parameter "contentID"

    .prologue
    const/4 v3, 0x1

    .line 1509
    :try_start_0
    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-ne v2, v3, :cond_0

    .line 1511
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getContentItemDetails (remote)"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1520
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1524
    :goto_1
    return-void

    .line 1516
    :cond_0
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getLocalContentItemDetails (local)"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1518
    .local v1, nId:I
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCLocalContentItemDetails(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1521
    .end local v1           #nId:I
    :catch_0
    move-exception v0

    .line 1522
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1488
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 1489
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1490
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1491
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1492
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 1854
    if-eqz p1, :cond_0

    .line 1855
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1856
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 1857
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const/4 p1, 0x0

    .line 1861
    :goto_0
    return-object p1

    .line 1860
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 1870
    if-nez p1, :cond_1

    .line 1871
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1872
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 1873
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1876
    :goto_0
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    :goto_1
    return-object p1

    .line 1875
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 1878
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2125
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const/4 v0, 0x0

    .line 2127
    .local v0, bBindRes:Z
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2128
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 2130
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iput-boolean v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 2133
    if-nez v0, :cond_0

    .line 2134
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect: binding service unsuccessful"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2138
    const-string v1, "[HtcDLNAController]"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 2141
    const-string v1, "[HtcDLNAController]"

    const-string v2, "unregister service callbacks"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 2143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2153
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->StopTimers()V

    .line 2155
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 2156
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    .line 2170
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 2171
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2172
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML Service unbind"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2177
    iput-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 2178
    return-void

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2147
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2148
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2150
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2174
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML ServiceConnection null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 1532
    const/4 v0, 0x0

    .line 1535
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1545
    :cond_0
    :goto_0
    return-object v0

    .line 1537
    :catch_0
    move-exception v1

    .line 1538
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1540
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1542
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2901
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    .line 2904
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    .line 2905
    .local v1, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v1, :cond_0

    .line 2907
    iget-object v3, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2914
    :goto_0
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Mirror DMR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_1
    return-object v1

    .line 2911
    .restart local v1       #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2918
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :catch_0
    move-exception v0

    .line 2920
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v1, v2

    .line 2923
    goto :goto_1
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2449
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2441
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 8

    .prologue
    .line 2877
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2878
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2879
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2881
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 2885
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2894
    :cond_0
    :goto_1
    return-void

    .line 2883
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2887
    :catch_0
    move-exception v7

    .line 2888
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2890
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2892
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 2798
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    .line 2799
    const-string v1, "[HtcDLNAController]"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2807
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 2811
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2820
    :cond_0
    :goto_1
    return-void

    .line 2804
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2815
    :catch_0
    move-exception v0

    .line 2816
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2813
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2817
    :catch_1
    move-exception v0

    .line 2818
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2800
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffDMR()V
    .locals 4

    .prologue
    .line 2277
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2278
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 2279
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2282
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2283
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2284
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;)Z
    .locals 1
    .parameter "curDMRID"

    .prologue
    .line 2603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 13
    .parameter "curDMRID"
    .parameter "statusBarData"

    .prologue
    .line 2608
    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2611
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 2614
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR Success"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :goto_0
    const/4 v8, 0x0

    .line 2621
    .local v8, bIsNewController:Z
    const/4 v11, 0x0

    .line 2622
    .local v11, nCreateRes:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v11

    .line 2624
    if-eqz v11, :cond_9

    .line 2625
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController OK, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v0, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 2630
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 2631
    .local v9, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    .line 2633
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    .line 2634
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2639
    :cond_0
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    const/4 v8, 0x1

    .line 2642
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2643
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR doesn\'t support Volume Control"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    :cond_2
    :goto_1
    if-nez v8, :cond_a

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-nez v0, :cond_a

    .line 2658
    const-string v0, "[HtcDLNAController]"

    const-string v1, "!!! prepare(): feed playlist: is NOT new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    .line 2660
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 2661
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$3000(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V

    .line 2759
    :cond_3
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->ChangeState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2767
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2768
    :cond_4
    const/4 v0, 0x1

    .end local v8           #bIsNewController:Z
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v11           #nCreateRes:I
    :goto_3
    return v0

    .line 2609
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 2615
    :cond_6
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR failed"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2645
    .restart local v8       #bIsNewController:Z
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .restart local v11       #nCreateRes:I
    :cond_7
    :try_start_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR support Volume Control"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2760
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_0
    move-exception v10

    .line 2761
    .local v10, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2649
    .end local v10           #e:Ljava/lang/NullPointerException;
    :cond_9
    :try_start_2
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController Failed, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2652
    const/4 v0, 0x0

    goto :goto_3

    .line 2664
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_a
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-nez v0, :cond_10

    .line 2665
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: LOCAL"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    if-nez v0, :cond_b

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List null!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    :goto_4
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2674
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    if-eqz v0, :cond_d

    .line 2676
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    if-eqz v0, :cond_c

    .line 2677
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2763
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_1
    move-exception v10

    .line 2764
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2670
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_b
    :try_start_3
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List is NOT null!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2679
    :cond_c
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    goto/16 :goto_2

    .line 2681
    :cond_d
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2682
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2685
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2686
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2689
    :cond_e
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2694
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2695
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2698
    :cond_f
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2703
    :cond_10
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2704
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: REMOTE"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 2708
    :pswitch_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2713
    :pswitch_4
    new-instance v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v12}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 2715
    .local v12, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 2716
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 2717
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 2718
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 2719
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v0, v0

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 2721
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 2722
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 2723
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 2725
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v12}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2726
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2729
    :cond_11
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2735
    .end local v12           #plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_12
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 2736
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 2740
    :pswitch_5
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2746
    :cond_13
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2747
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET WEBSITE (fb,fl,yt)"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_3

    :pswitch_6
    goto/16 :goto_2

    .line 2751
    :pswitch_7
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    goto/16 :goto_2

    .line 2754
    :pswitch_8
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2706
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2738
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 2749
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public prev()V
    .locals 8

    .prologue
    .line 2853
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2854
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2855
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2857
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 2861
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2870
    :cond_0
    :goto_1
    return-void

    .line 2859
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2863
    :catch_0
    move-exception v7

    .line 2864
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2865
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2866
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2868
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public queryCurrentDMR()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2346
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2351
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public queryDefaultDMR()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2364
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2369
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public seekTo(J)V
    .locals 4
    .parameter "lSeconds"

    .prologue
    .line 2837
    iput-wide p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 2839
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2846
    :cond_0
    :goto_0
    return-void

    .line 2840
    :catch_0
    move-exception v0

    .line 2841
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2842
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2843
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2844
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 1
    .parameter "dlnaPushMediaInfo"

    .prologue
    const/4 v0, 0x1

    .line 2508
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2510
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2511
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2512
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2513
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;Z)V
    .locals 1
    .parameter "dlnaPushMediaInfo"
    .parameter "bIsEncrypted"

    .prologue
    .line 2496
    iput-boolean p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2499
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2500
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2501
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .locals 2
    .parameter "plinfo"

    .prologue
    const/4 v0, 0x1

    .line 2532
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2533
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2534
    if-nez p1, :cond_0

    .line 2544
    :goto_0
    return-void

    .line 2535
    :cond_0
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 2536
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 2537
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 2538
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2539
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    long-to-int v0, v0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 2541
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 2542
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 2543
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2486
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2487
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 2488
    return-void
.end method

.method public setDataSource([II)V
    .locals 1
    .parameter "pushlist"
    .parameter "nCurrentIndex"

    .prologue
    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2525
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2526
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 2527
    iput p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 2528
    return-void
.end method

.method public setDataSource([Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2516
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2517
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 2518
    return-void
.end method

.method public setDataSourceURL(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 2584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2585
    if-nez p1, :cond_0

    .line 2587
    const-string v0, "[HtcDLNAController]"

    const-string v1, "setDataSourceURL NG !"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    :goto_0
    return-void

    .line 2591
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2593
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    goto :goto_0
.end method

.method public setDataSourceURL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURL"
    .parameter "szTitle"
    .parameter "szThumbPath"

    .prologue
    .line 2547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2548
    if-eqz p1, :cond_0

    .line 2549
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2553
    :goto_0
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 2554
    iput-object p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 2555
    iput-object p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 2556
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2557
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    .line 2558
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    .line 2559
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    .line 2560
    return-void

    .line 2551
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setDataSourceURL(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURLList"
    .parameter "szTitleList"
    .parameter "szThumbPathList"

    .prologue
    .line 2563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2564
    if-eqz p1, :cond_0

    .line 2565
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2569
    :goto_0
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 2570
    iput-object p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 2571
    iput-object p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 2572
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2573
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    .line 2574
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    .line 2575
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    .line 2576
    return-void

    .line 2567
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setOnConnectionListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 2240
    return-void
.end method

.method public setOnCurrentDMRListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2392
    return-void
.end method

.method public setOnCurrentDMSListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2410
    return-void
.end method

.method public setOnErrorListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 2251
    return-void
.end method

.method public setOnItemInfoListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2465
    return-void
.end method

.method public setOnResponseListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2265
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 2266
    return-void
.end method

.method public setOnStateListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2453
    return-void
.end method

.method public setRepeat(I)V
    .locals 4
    .parameter "nRepeatState"

    .prologue
    .line 2828
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    :goto_0
    return-void

    .line 2829
    :catch_0
    move-exception v0

    .line 2830
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeat NG ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShuffle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2324
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    if-ne v1, v5, :cond_1

    .line 2325
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2334
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2328
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2329
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 1892
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 5
    .parameter "nVolume"

    .prologue
    const/16 v3, 0x64

    .line 2301
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2302
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-gtz v1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2305
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-lt v1, v3, :cond_1

    .line 2306
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/16 v2, 0x64

    iput v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2308
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    if-nez v1, :cond_2

    .line 2310
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v4, v4, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V

    .line 2311
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->resetVolBlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    :cond_2
    :goto_0
    return-void

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 2772
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_2

    .line 2773
    const-string v1, "[HtcDLNAController]"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2781
    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V

    .line 2782
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V

    .line 2786
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2795
    :cond_1
    :goto_1
    return-void

    .line 2778
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2790
    :catch_0
    move-exception v0

    .line 2791
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2788
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2792
    :catch_1
    move-exception v0

    .line 2793
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2774
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public storeCurrentDMR(Ljava/lang/String;)Z
    .locals 5
    .parameter "szDMRID"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2336
    sget-object v3, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2340
    .local v0, szResult:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2343
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public storeDefaultDMR(Ljava/lang/String;)Z
    .locals 4
    .parameter "szDMRID"

    .prologue
    const/4 v1, 0x0

    .line 2354
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v1, v3, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    .local v0, szResult:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2359
    const/4 v1, 0x1

    .line 2361
    :cond_0
    return v1
.end method
