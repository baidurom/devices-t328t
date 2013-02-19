.class public Landroid/media/dlnasharedmodule/HtcDLNAController;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
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

.field mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

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

.field mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

.field mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

.field private mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

.field mErrorListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

.field private mIsBtnPPEnable:Z

.field public mIsDMCLineOn:Z

.field private mIsNewIntented:Z

.field private mIsRequestDetails:Z

.field mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field mOldState:I

.field private mOncePlayed:Z

.field private mPosTimer:Ljava/util/Timer;

.field mResponseListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mState:I

.field mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

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

    sput-object v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

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

    .line 1815
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mszAppTitle:Ljava/lang/String;

    .line 665
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    invoke-direct {v0, p0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    .line 666
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-direct {v0, p0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    .line 668
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 710
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 711
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    .line 714
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsNewIntented:Z

    .line 716
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 718
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 720
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 721
    const-string v0, ""

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    .line 722
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 723
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 726
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurThumbHQ:Z

    .line 729
    iput v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 730
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 734
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 735
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 736
    iput v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 741
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 743
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 744
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 746
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 747
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 749
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 750
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 751
    iput-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 752
    iput-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 753
    iput v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    .line 755
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 756
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 757
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 758
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 760
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 761
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 762
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 765
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurURL:Ljava/lang/String;

    .line 771
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderID:Ljava/lang/String;

    .line 772
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderType:Ljava/lang/String;

    .line 773
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderName:Ljava/lang/String;

    .line 774
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderPosition:Ljava/lang/String;

    .line 775
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderPanelID:Ljava/lang/String;

    .line 776
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFolderList:Ljava/util/ArrayList;

    .line 779
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 781
    iput-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsBtnPPEnable:Z

    .line 783
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 784
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;

    invoke-direct {v0, p0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 1285
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1330
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsDMCLineOn:Z

    .line 1376
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;

    invoke-direct {v0, p0}, Landroid/media/dlnasharedmodule/HtcDLNAController$2;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    .line 1645
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 1799
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 1911
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;

    invoke-direct {v0, p0}, Landroid/media/dlnasharedmodule/HtcDLNAController$3;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    .line 1969
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 1980
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mErrorListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 1991
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mResponseListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 2002
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2119
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2132
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2142
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    .line 2162
    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2182
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2190
    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2510
    iput-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 1816
    sput-object p1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    .line 1818
    iput p4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 1824
    const-string v0, "HtcMusic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1825
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 1833
    :goto_0
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-ne v0, v3, :cond_0

    .line 1834
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 1836
    :cond_0
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-nez v0, :cond_1

    .line 1837
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 1839
    :cond_1
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_2

    .line 1840
    iput v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 1844
    :cond_2
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_5

    .line 1847
    const/16 v0, 0x2710

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 1853
    :goto_1
    return-void

    .line 1826
    :cond_3
    const-string v0, "HtcAlbum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1827
    iput v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 1829
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 1850
    :cond_5
    iput v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 1207
    const/4 v0, 0x0

    return v0
.end method

.method private GetPref()Z
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method private SavePref()Z
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Landroid/media/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/dlnasharedmodule/HtcDLNAController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    return p1
.end method

.method static synthetic access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$1902(Landroid/media/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    return v0
.end method

.method static synthetic access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$602(Landroid/media/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

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

    .line 107
    if-nez p3, :cond_0

    const-string p3, ""

    .line 109
    :cond_0
    if-nez p1, :cond_2

    .line 110
    if-nez p0, :cond_1

    .line 111
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

    .line 121
    :goto_0
    return-object v0

    .line 112
    :cond_1
    if-ne p0, v0, :cond_4

    .line 113
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

    .line 115
    :cond_2
    if-ne p1, v0, :cond_4

    .line 116
    if-nez p0, :cond_3

    .line 117
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

    .line 118
    :cond_3
    if-ne p0, v0, :cond_4

    .line 119
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

    .line 121
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "nMode"

    .prologue
    .line 1168
    const/4 v0, 0x0

    return-object v0
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1279
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const/4 v0, 0x0

    .line 1282
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

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 1802
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1803
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1804
    return-void
.end method

.method private setDMCLine(I)V
    .locals 3
    .parameter "nForce"

    .prologue
    .line 1335
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDMCLine nForce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
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

    .line 1660
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v3, :cond_2

    .line 1661
    const/4 v8, 0x1

    .line 1663
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1671
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 1684
    :goto_1
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 1685
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 1686
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    .line 1763
    .end local v8           #nSSState:I
    :cond_1
    :goto_2
    :sswitch_0
    return-void

    .line 1664
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 1665
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1667
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 1668
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1674
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iput v11, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1677
    :pswitch_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1679
    iput v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1692
    .end local v8           #nSSState:I
    :cond_2
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    .line 1695
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 1696
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_8

    .line 1697
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 1698
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    .line 1699
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1700
    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    .line 1701
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1702
    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v3, :cond_6

    .line 1703
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1704
    :cond_6
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2602(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z

    .line 1706
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1718
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :goto_3
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2600(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    :goto_4
    sparse-switch v0, :sswitch_data_0

    .line 1737
    :goto_5
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    .line 1754
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :goto_6
    :sswitch_1
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 1760
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 1761
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    goto/16 :goto_2

    .line 1708
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_8
    :try_start_2
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 1710
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 1711
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1712
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 1713
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 1714
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1718
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_9
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_4

    .line 1720
    :sswitch_2
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$PosTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1722
    iput v11, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 1726
    :sswitch_3
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1727
    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 1732
    :sswitch_4
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1733
    iput v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto/16 :goto_5

    .line 1748
    :sswitch_5
    const/4 v0, 0x5

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_6

    .line 1751
    :sswitch_6
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput v10, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_6

    .line 1671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1718
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 1737
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

    .line 1289
    :try_start_0
    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-ne v2, v3, :cond_0

    .line 1291
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getContentItemDetails (remote)"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1300
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1304
    :goto_1
    return-void

    .line 1296
    :cond_0
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getLocalContentItemDetails (local)"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1298
    .local v1, nId:I
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCLocalContentItemDetails(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1301
    .end local v1           #nId:I
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1272
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 1273
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1274
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1275
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1276
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 1602
    if-eqz p1, :cond_0

    .line 1603
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1604
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 1605
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const/4 p1, 0x0

    .line 1609
    :goto_0
    return-object p1

    .line 1608
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 1614
    if-nez p1, :cond_1

    .line 1615
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1616
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 1617
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1620
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :goto_1
    return-object p1

    .line 1619
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 1622
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1857
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const/4 v0, 0x0

    .line 1859
    .local v0, bBindRes:Z
    sget-object v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1860
    sget-object v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1862
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

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iput-boolean v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 1865
    if-nez v0, :cond_0

    .line 1866
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect: binding service unsuccessful"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1870
    const-string v1, "[HtcDLNAController]"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1873
    const-string v1, "[HtcDLNAController]"

    const-string/jumbo v2, "unregister service callbacks"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1875
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1885
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->StopTimers()V

    .line 1887
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 1888
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    .line 1902
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 1903
    sget-object v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1904
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML Service unbind"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1909
    iput-boolean v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 1910
    return-void

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1880
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1882
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1906
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML ServiceConnection null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 1308
    const/4 v0, 0x0

    .line 1311
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1321
    :cond_0
    :goto_0
    return-object v0

    .line 1313
    :catch_0
    move-exception v1

    .line 1314
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1316
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1318
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2565
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    .line 2568
    :try_start_0
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    .line 2569
    .local v1, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v1, :cond_0

    .line 2571
    iget-object v3, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2578
    :goto_0
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Mirror DMR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_1
    return-object v1

    .line 2575
    .restart local v1       #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2582
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :catch_0
    move-exception v0

    .line 2584
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v1, v2

    .line 2587
    goto :goto_1
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2149
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2145
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mState:I

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
    .line 2545
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2546
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2547
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2549
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 2553
    :goto_0
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2562
    :cond_0
    :goto_1
    return-void

    .line 2551
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2555
    :catch_0
    move-exception v7

    .line 2556
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2558
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2560
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 2478
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    .line 2479
    const-string v1, "[HtcDLNAController]"

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2487
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 2491
    :goto_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2500
    :cond_0
    :goto_1
    return-void

    .line 2484
    :pswitch_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2493
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2497
    :catch_1
    move-exception v0

    .line 2498
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffDMR()V
    .locals 4

    .prologue
    .line 2005
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2006
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 2007
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2011
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2012
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;)Z
    .locals 1
    .parameter "curDMRID"

    .prologue
    .line 2283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 13
    .parameter "curDMRID"
    .parameter "statusBarData"

    .prologue
    .line 2288
    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2291
    iput-object p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 2294
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR Success"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    :goto_0
    const/4 v8, 0x0

    .line 2301
    .local v8, bIsNewController:Z
    const/4 v11, 0x0

    .line 2302
    .local v11, nCreateRes:I
    :try_start_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v11

    .line 2304
    if-eqz v11, :cond_9

    .line 2305
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController OK, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v0, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 2310
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 2311
    .local v9, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_0

    .line 2312
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    .line 2313
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    .line 2314
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2319
    :cond_0
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    const/4 v8, 0x1

    .line 2322
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2323
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR doesn\'t support Volume Control"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    :cond_2
    :goto_1
    if-nez v8, :cond_a

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-nez v0, :cond_a

    .line 2338
    const-string v0, "[HtcDLNAController]"

    const-string v1, "!!! prepare(): feed playlist: is NOT new launch"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    .line 2340
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 2341
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2342
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$3000(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V

    .line 2439
    :cond_3
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->ChangeState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2447
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2448
    :cond_4
    const/4 v0, 0x1

    .end local v8           #bIsNewController:Z
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v11           #nCreateRes:I
    :goto_3
    return v0

    .line 2289
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 2295
    :cond_6
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR failed"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2325
    .restart local v8       #bIsNewController:Z
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .restart local v11       #nCreateRes:I
    :cond_7
    :try_start_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR support Volume Control"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2440
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_0
    move-exception v10

    .line 2441
    .local v10, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2329
    .end local v10           #e:Ljava/lang/NullPointerException;
    :cond_9
    :try_start_2
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController Failed, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2332
    const/4 v0, 0x0

    goto :goto_3

    .line 2344
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_a
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-nez v0, :cond_10

    .line 2345
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: LOCAL"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    if-nez v0, :cond_b

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List null!"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :goto_4
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2354
    :pswitch_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    if-eqz v0, :cond_d

    .line 2356
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    if-eqz v0, :cond_c

    .line 2357
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2443
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_1
    move-exception v10

    .line 2444
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2350
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_b
    :try_start_3
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List is NOT null!"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2359
    :cond_c
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    goto/16 :goto_2

    .line 2361
    :cond_d
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2362
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2365
    :pswitch_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2366
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2369
    :cond_e
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2374
    :pswitch_2
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2375
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2378
    :cond_f
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2383
    :cond_10
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2384
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: REMOTE"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 2388
    :pswitch_3
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2393
    :pswitch_4
    new-instance v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v12}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 2395
    .local v12, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 2396
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 2397
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 2398
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 2399
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v0, v0

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 2401
    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 2402
    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 2403
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 2405
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v12}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2406
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Play List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2409
    :cond_11
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Play List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2415
    .end local v12           #plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_12
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 2416
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 2420
    :pswitch_5
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2426
    :cond_13
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2427
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET WEBSITE (fb,fl,yt)"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_3

    :pswitch_6
    goto/16 :goto_2

    .line 2431
    :pswitch_7
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    goto/16 :goto_2

    .line 2434
    :pswitch_8
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2386
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2418
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 2429
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
    .line 2525
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2526
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2527
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2529
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 2533
    :goto_0
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2542
    :cond_0
    :goto_1
    return-void

    .line 2531
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2535
    :catch_0
    move-exception v7

    .line 2536
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2538
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2540
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public queryCurrentDMR()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2070
    sget-object v2, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v3, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2074
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2075
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public queryDefaultDMR()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2088
    sget-object v2, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2093
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public seekTo(J)V
    .locals 4
    .parameter "lSeconds"

    .prologue
    .line 2513
    iput-wide p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 2515
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2516
    :catch_0
    move-exception v0

    .line 2517
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2518
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2519
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2520
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 1
    .parameter "dlnaPushMediaInfo"

    .prologue
    const/4 v0, 0x1

    .line 2200
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2202
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2203
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2204
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2205
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;Z)V
    .locals 1
    .parameter "dlnaPushMediaInfo"
    .parameter "bIsEncrypted"

    .prologue
    .line 2192
    iput-boolean p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2196
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2197
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .locals 2
    .parameter "plinfo"

    .prologue
    const/4 v0, 0x1

    .line 2220
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2221
    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2222
    if-nez p1, :cond_0

    .line 2232
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 2224
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 2225
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 2226
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2227
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    long-to-int v0, v0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 2229
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 2230
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 2231
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2186
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2187
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 2188
    return-void
.end method

.method public setDataSource([II)V
    .locals 1
    .parameter "pushlist"
    .parameter "nCurrentIndex"

    .prologue
    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2214
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 2215
    iput p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 2216
    return-void
.end method

.method public setDataSource([Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2208
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2209
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 2210
    return-void
.end method

.method public setDataSourceURL(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 2268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2269
    if-nez p1, :cond_0

    .line 2271
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "setDataSourceURL NG !"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    :goto_0
    return-void

    .line 2275
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2277
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    goto :goto_0
.end method

.method public setDataSourceURL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURL"
    .parameter "szTitle"
    .parameter "szThumbPath"

    .prologue
    .line 2235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2236
    if-eqz p1, :cond_0

    .line 2237
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2241
    :goto_0
    iput-object p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 2242
    iput-object p3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 2243
    iput-object p4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 2244
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2245
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    .line 2246
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    .line 2247
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    .line 2248
    return-void

    .line 2239
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setDataSourceURL(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURLList"
    .parameter "szTitleList"
    .parameter "szThumbPathList"

    .prologue
    .line 2251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2252
    if-eqz p1, :cond_0

    .line 2253
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2257
    :goto_0
    iput-object p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 2258
    iput-object p3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 2259
    iput-object p4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 2260
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2261
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    .line 2262
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    .line 2263
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    .line 2264
    return-void

    .line 2255
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setOnConnectionListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1971
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 1972
    return-void
.end method

.method public setOnCurrentDMRListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2107
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2108
    return-void
.end method

.method public setOnCurrentDMSListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2121
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2122
    return-void
.end method

.method public setOnErrorListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1982
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mErrorListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 1983
    return-void
.end method

.method public setOnItemInfoListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2164
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2165
    return-void
.end method

.method public setOnResponseListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1993
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mResponseListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 1994
    return-void
.end method

.method public setOnStateListener(Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2152
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2153
    return-void
.end method

.method public setRepeat(I)V
    .locals 4
    .parameter "nRepeatState"

    .prologue
    .line 2504
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    :goto_0
    return-void

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRepeat NG ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShuffle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2048
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    if-ne v1, v5, :cond_1

    .line 2049
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2052
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2053
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 1631
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 1632
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 5
    .parameter "nVolume"

    .prologue
    const/16 v3, 0x64

    .line 2029
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput p1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2030
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-gtz v1, :cond_0

    .line 2031
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2033
    :cond_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-lt v1, v3, :cond_1

    .line 2034
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/16 v2, 0x64

    iput v2, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2036
    :cond_1
    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    if-nez v1, :cond_2

    .line 2038
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v4, v4, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V

    .line 2039
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->resetVolBlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    :cond_2
    :goto_0
    return-void

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 2452
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_2

    .line 2453
    const-string v1, "[HtcDLNAController]"

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2461
    iget-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-wide v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V

    .line 2462
    :cond_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V

    .line 2466
    :goto_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2475
    :cond_1
    :goto_1
    return-void

    .line 2458
    :pswitch_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2470
    :catch_0
    move-exception v0

    .line 2471
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2468
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2472
    :catch_1
    move-exception v0

    .line 2473
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2454
    nop

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

    .line 2060
    sget-object v3, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2064
    .local v0, szResult:Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2067
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

    .line 2078
    sget-object v2, Landroid/media/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v1, v3, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, szResult:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2083
    const/4 v1, 0x1

    .line 2085
    :cond_0
    return v1
.end method
