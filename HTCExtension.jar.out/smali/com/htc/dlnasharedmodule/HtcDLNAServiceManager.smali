.class public Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;,
        Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.dlnasharedmodule.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

.field public static final BUFFERING_TIMEOUT:I = 0xfa0

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final DISCOVER_TIMEOUT_LONG:I = 0x2710

.field public static final ERROR_COMMAND_PAUSE:I = -0x40c7

.field public static final ERROR_COMMAND_PAUSE_MSG:Ljava/lang/String; = "Command requestPause in wrong status"

.field public static final ERROR_COMMAND_PLAY:I = -0x40c4

.field public static final ERROR_COMMAND_PLAYBYID:I = -0x40cb

.field public static final ERROR_COMMAND_PLAYBYID_MSG:Ljava/lang/String; = "Command startPlay(String) in wrong status"

.field public static final ERROR_COMMAND_PLAYBYINDEX:I = -0x40ca

.field public static final ERROR_COMMAND_PLAYBYINDEX_MSG:Ljava/lang/String; = "Command startPlay(long) in wrong status"

.field public static final ERROR_COMMAND_PLAYNEXT:I = -0x40c5

.field public static final ERROR_COMMAND_PLAYNEXT_MSG:Ljava/lang/String; = "Command playNext in wrong status"

.field public static final ERROR_COMMAND_PLAYPREVIOUS:I = -0x40c6

.field public static final ERROR_COMMAND_PLAYPREVIOUS_MSG:Ljava/lang/String; = "Command playPrevious in wrong status"

.field public static final ERROR_COMMAND_PLAY_MSG:Ljava/lang/String; = "Command startPlay in wrong status"

.field public static final ERROR_COMMAND_SEEKTO:I = -0x40c9

.field public static final ERROR_COMMAND_SEEKTO_MSG:Ljava/lang/String; = "Command seekTo in wrong status"

.field public static final ERROR_COMMAND_STATUS:I = -0x4064

.field public static final ERROR_COMMAND_STATUS_MSG:Ljava/lang/String; = "Command Status Error"

.field public static final ERROR_COMMAND_STOP:I = -0x40c8

.field public static final ERROR_COMMAND_STOP_MSG:Ljava/lang/String; = "Command requestStop in wrong status"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final SENDING_CONTENT_TIMEOUT:I = 0xea60

.field public static final SENDING_CONTENT_TIMEOUT_LARGE:I = 0x2bf20

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field public static final STATE_BUFFERING:I = 0x64

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSING:I = 0x69

.field public static final STATE_PLAYING:I = 0x0

.field static final STATE_REQUEST_PAUSE:I = 0x67

.field static final STATE_REQUEST_PLAY:I = 0x66

.field public static final STATE_SENDING_CONTENT:I = 0x6a

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x68

.field public static final STATE_TRANSITIONING:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x7

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_STATE_CHANGE_TIMEOUT:I

.field private SEEK_THREADHOLD:I

.field private isDTCPIPContent:Z

.field mClientSeekTo:J

.field mContext:Landroid/content/Context;

.field mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:J

.field private mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

.field mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field mServerID:Ljava/lang/String;

.field mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "cookie"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 148
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 151
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 152
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 154
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 155
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 156
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 157
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 158
    const/16 v1, 0x1388

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_STATE_CHANGE_TIMEOUT:I

    .line 159
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 161
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 162
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 163
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 164
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 166
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 167
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 168
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 170
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 172
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 174
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 175
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 186
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 241
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 278
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 279
    iput p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 280
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 281
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 282
    iput p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "cookie"
    .parameter "filter"

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initMiddleLayerListener()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 316
    :cond_0
    return-void
.end method

.method private lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 1931
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1934
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1940
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    return-void

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1938
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 5
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v4, 0x0

    .line 1893
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return v4

    .line 1895
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1896
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1897
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendErrorMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v4, 0x0

    .line 1905
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return v4

    .line 1907
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1908
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1909
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendResponseMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 1944
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1947
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1951
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    return-void

    .line 1949
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nCookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    .line 1793
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[albumArtDownload]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callbackStatePAUSED()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1060
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v2

    .line 1062
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1063
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    const/4 v3, 0x2

    iput v3, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1064
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1064
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1069
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v0, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    goto :goto_0
.end method

.method public connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z
    .locals 4
    .parameter "clientListener"

    .prologue
    const/4 v0, 0x0

    .line 320
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 322
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 324
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    .line 328
    :cond_0
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 331
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[connect] Request connect service"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 381
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 389
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 390
    .local v0, clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 396
    :cond_0
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[disconnect] Request disconnect service"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    .line 417
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->disconnect()V

    .line 420
    :cond_3
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 421
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 422
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 423
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 424
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 408
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    throw v2
.end method

.method public findUsableRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 3
    .parameter "statusBarData"

    .prologue
    const/4 v0, 0x1

    .line 477
    invoke-virtual {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return v0

    .line 481
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1831
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-object v0

    .line 1836
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1838
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1810
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return-object v0

    .line 1815
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1817
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCookie()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 1927
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1852
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v3, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-object v0

    .line 1857
    :cond_1
    const/4 v0, 0x0

    .line 1860
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 1861
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v2, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1862
    .local v2, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1867
    .end local v2           #listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    :catch_0
    move-exception v1

    .line 1869
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .locals 4

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 852
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 859
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-object v0

    .line 854
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    .line 1696
    const-wide/16 v1, -0x1

    .line 1697
    .local v1, index:J
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 1709
    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .line 1701
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1707
    :goto_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1709
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .line 1702
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .line 1704
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingPosition()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1732
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v6, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return-wide v4

    .line 1741
    :cond_1
    const-wide/16 v1, 0x0

    .line 1743
    .local v1, position:J
    const/4 v3, 0x0

    .line 1747
    .local v3, positionNegative:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v1

    .line 1748
    const-string v6, "HtcDLNAServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Original position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    :goto_1
    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    .line 1757
    const-wide/16 v1, 0x0

    .line 1759
    const/4 v3, 0x1

    .line 1764
    :cond_2
    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    sub-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget v8, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 1765
    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    .line 1754
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "HtcDLNAServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPlayingPosition] Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1767
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_4

    .line 1769
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1771
    :cond_4
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1775
    if-nez v3, :cond_5

    .end local v1           #position:J
    :goto_2
    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1776
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto/16 :goto_0

    .line 1775
    .restart local v1       #position:J
    :cond_5
    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_2
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    .line 1678
    const-wide/16 v1, -0x1

    .line 1679
    .local v1, total:J
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 1691
    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .line 1683
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1689
    :goto_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getCount] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1691
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .line 1684
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .line 1686
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 817
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    .locals 4
    .parameter "rendererID"

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 874
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 881
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-object v0

    .line 876
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepeatState()I
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 5

    .prologue
    .line 888
    const/4 v1, 0x0

    .line 892
    .local v1, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 899
    :goto_0
    return-object v1

    .line 894
    :catch_0
    move-exception v0

    .line 896
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getServiceControlStatus] Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getSlideShowSatatus()I
    .locals 5

    .prologue
    .line 1714
    const/4 v0, 0x1

    .line 1715
    .local v0, nRet:I
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 1727
    .end local v0           #nRet:I
    .local v1, nRet:I
    :goto_0
    return v1

    .line 1720
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 1727
    .end local v0           #nRet:I
    .restart local v1       #nRet:I
    goto :goto_0

    .line 1722
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 1669
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 1671
    :try_start_0
    const-string v0, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getState] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1782
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_1

    .line 1783
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-nez v3, :cond_0

    .line 1786
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1783
    goto :goto_0

    .line 1785
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 1786
    .local v0, state:I
    if-eqz v0, :cond_2

    const/16 v3, 0x64

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return v0
.end method

.method public playNext()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1118
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 1128
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playNext(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const/16 v0, -0x40c5

    const-string v1, "Command playNext in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1133
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playNext] Request next"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1139
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 1144
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1150
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :cond_4
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->callbackStatePAUSED()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public playPrevious()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1076
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 1086
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playPrevious(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/16 v0, -0x40c6

    const-string v1, "Command playPrevious in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playPrevious] Request previous"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1097
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1101
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 1102
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1107
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    :cond_4
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->callbackStatePAUSED()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public powerOff()V
    .locals 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[powerOff] Request powerOff"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 1171
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1172
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    if-eqz v0, :cond_2

    .line 1173
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->lockCommand(I)V

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->resumeMirror(Landroid/content/Context;)V

    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    .line 1877
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1882
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 1883
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1885
    :catch_0
    move-exception v0

    .line 1888
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestPause()V
    .locals 4

    .prologue
    .line 992
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] error status for requestPause(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/16 v0, -0x40c7

    const-string v1, "Command requestPause in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1002
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[pause] Request pause"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const/16 v0, 0x67

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1008
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 4

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1031
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] error status for requestStop()"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/16 v0, -0x40c8

    const-string v1, "Command requestStop in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1036
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] Request stop"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 1046
    :goto_1
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1047
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 844
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 826
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method saveRenderer()Z
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    .line 805
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 806
    :cond_0
    const/4 v1, 0x0

    .line 809
    :goto_0
    return v1

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .parameter "timeSecs"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 1191
    const-wide/16 p1, 0x0

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    .line 1198
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] error status for seekTo(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const/16 v0, -0x40c9

    const-string v1, "Command seekTo in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1203
    :cond_3
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] Request seekTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :try_start_0
    iput-wide p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1209
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V
    .locals 1
    .parameter "controllerListener"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 307
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 308
    return-void
.end method

.method public setDTCPIPDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 698
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 734
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 747
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 613
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 621
    :try_start_0
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 622
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_4

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_1

    .line 710
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: mService is null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 712
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] Error: mRendererCreated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_2
    if-nez p1, :cond_3

    .line 714
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: filePath is null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_3
    :goto_0
    return-void

    .line 718
    :cond_4
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 728
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 597
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v6

    .line 603
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)V
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v8

    .line 771
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 766
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public setIPListSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 651
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 1919
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1921
    :catch_0
    move-exception v0

    .line 1923
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 8
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, result:I
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 431
    :cond_0
    iput-boolean v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    move v3, v4

    .line 469
    :goto_0
    return v3

    .line 433
    :cond_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] renderId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", statusBarData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 438
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 439
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] createMediaController result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v1, :cond_3

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 442
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    .line 443
    .local v2, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v2, :cond_2

    .line 444
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 445
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 446
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 447
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererID:Ljava/lang/String;

    .line 449
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 451
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 452
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 453
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 457
    :cond_2
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 458
    iget v5, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 459
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer()Z

    .line 460
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 461
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] init DMR state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cur state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v2           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    goto/16 :goto_0

    :cond_3
    move v5, v4

    .line 440
    goto :goto_1

    .line 463
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    move v3, v4

    .line 469
    goto :goto_3
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 5
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 583
    :goto_0
    return v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 552
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 559
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 561
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 562
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$4;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 583
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 5
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_1

    .line 492
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    :goto_0
    return v1

    .line 496
    :cond_1
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 499
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 502
    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 504
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 505
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 506
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 518
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 519
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$3;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$3;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 541
    const/4 v1, 0x1

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 509
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 510
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_3
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V
    .locals 1
    .parameter "rendererListener"

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 291
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 292
    return-void
.end method

.method public setRepeat(I)V
    .locals 3
    .parameter "nRepeatState"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] Request setRepeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;)V
    .locals 1
    .parameter "serverListener"

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 301
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 302
    return-void
.end method

.method public setShuffle()V
    .locals 4

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setShuffleEnabled]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v3, v0}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1280
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method declared-synchronized setState(IZ)V
    .locals 7
    .parameter "newState"
    .parameter "fromMiddleLayer"

    .prologue
    const/4 v6, 0x1

    .line 1295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 1296
    .local v2, statePrev:I
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] >>> newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    if-eqz p2, :cond_0

    if-ne p1, v6, :cond_0

    .line 1299
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->unlockCommand()V

    .line 1301
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 1627
    :goto_0
    :sswitch_0
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] <<< newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1632
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1633
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_2

    .line 1634
    :cond_1
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1635
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1637
    if-eq v2, p1, :cond_3

    .line 1639
    :try_start_2
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_c

    .line 1653
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1305
    :sswitch_1
    sparse-switch p1, :sswitch_data_1

    .line 1338
    :try_start_3
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1295
    .end local v2           #statePrev:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1309
    .restart local v2       #statePrev:I
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1310
    :try_start_4
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1313
    :cond_4
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    const/16 p1, 0x64

    .line 1315
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1316
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1317
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1318
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1328
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_3
    const/16 p1, 0x64

    .line 1329
    goto/16 :goto_0

    .line 1333
    :sswitch_4
    const/16 p1, 0x3e8

    .line 1334
    goto/16 :goto_0

    .line 1348
    :sswitch_5
    sparse-switch p1, :sswitch_data_2

    .line 1414
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_BUFFERING/STATE_TRANSITIONING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1352
    :sswitch_6
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_5

    .line 1354
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1355
    const/4 p1, 0x2

    goto/16 :goto_0

    .line 1359
    :cond_5
    const/16 p1, 0x69

    .line 1361
    goto/16 :goto_0

    .line 1365
    :sswitch_7
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1366
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 1368
    const/4 p1, 0x2

    .line 1369
    goto/16 :goto_0

    .line 1371
    :cond_6
    const/4 p1, 0x0

    .line 1372
    goto/16 :goto_0

    .line 1376
    :sswitch_8
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 1378
    const/4 p1, 0x2

    .line 1379
    goto/16 :goto_0

    .line 1381
    :cond_7
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1382
    const/16 p1, 0x64

    .line 1383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1384
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1385
    const/16 v3, 0x6a

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1386
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1391
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_9
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1393
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1394
    const/16 v3, 0x68

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1396
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-ne v3, v4, :cond_8

    .line 1397
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1399
    :cond_8
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1404
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1409
    :sswitch_b
    const/16 p1, 0x3e8

    .line 1410
    goto/16 :goto_0

    .line 1422
    :sswitch_c
    sparse-switch p1, :sswitch_data_3

    .line 1446
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1426
    :sswitch_d
    const/4 p1, 0x2

    .line 1427
    goto/16 :goto_0

    .line 1431
    :sswitch_e
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    const/4 p1, 0x2

    .line 1433
    goto/16 :goto_0

    .line 1436
    :sswitch_f
    const/4 p1, 0x1

    .line 1437
    goto/16 :goto_0

    .line 1441
    :sswitch_10
    const/16 p1, 0x3e8

    .line 1442
    goto/16 :goto_0

    .line 1454
    :sswitch_11
    sparse-switch p1, :sswitch_data_4

    .line 1494
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1458
    :sswitch_12
    if-eqz p2, :cond_9

    .line 1460
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[setState][STATE_PAUSED] deny play from middler layer and keep pause state"

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const/4 p1, 0x2

    .line 1462
    goto/16 :goto_0

    .line 1464
    :cond_9
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1465
    const/16 p1, 0x64

    .line 1466
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1467
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1468
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1469
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1474
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_13
    const/4 p1, 0x0

    .line 1475
    goto/16 :goto_0

    .line 1479
    :sswitch_14
    const/16 p1, 0x69

    .line 1480
    goto/16 :goto_0

    .line 1484
    :sswitch_15
    const/16 p1, 0x64

    .line 1485
    goto/16 :goto_0

    .line 1489
    :sswitch_16
    const/16 p1, 0x3e8

    .line 1490
    goto/16 :goto_0

    .line 1502
    :sswitch_17
    sparse-switch p1, :sswitch_data_5

    .line 1552
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PLAYING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1506
    :sswitch_18
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1507
    const/16 p1, 0x64

    .line 1508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1509
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1510
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1511
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1516
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_19
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_a

    .line 1518
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1519
    const/4 p1, 0x2

    goto/16 :goto_0

    .line 1523
    :cond_a
    const/16 p1, 0x69

    .line 1525
    goto/16 :goto_0

    .line 1529
    :sswitch_1a
    if-eqz p2, :cond_3

    .line 1530
    const/16 p1, 0x64

    .line 1531
    goto/16 :goto_0

    .line 1537
    :sswitch_1b
    const/4 p1, 0x2

    .line 1538
    goto/16 :goto_0

    .line 1542
    :sswitch_1c
    const/4 p1, 0x1

    .line 1543
    goto/16 :goto_0

    .line 1547
    :sswitch_1d
    const/16 p1, 0x3e8

    .line 1548
    goto/16 :goto_0

    .line 1560
    :sswitch_1e
    sparse-switch p1, :sswitch_data_6

    .line 1591
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1564
    :sswitch_1f
    if-eqz p2, :cond_b

    .line 1565
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1568
    :cond_b
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    const/16 p1, 0x64

    .line 1570
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1571
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1572
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1573
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1578
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_20
    const/16 p1, 0x3e8

    .line 1579
    goto/16 :goto_0

    .line 1583
    :sswitch_21
    if-eqz p2, :cond_3

    .line 1584
    const/16 p1, 0x64

    .line 1585
    goto/16 :goto_0

    .line 1599
    :sswitch_22
    sparse-switch p1, :sswitch_data_7

    .line 1619
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_AUTOPLAYWANTSHOWSTOP]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1602
    :sswitch_23
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1603
    const/16 p1, 0x64

    .line 1604
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1605
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1606
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1607
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1611
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_24
    if-eqz p2, :cond_3

    .line 1612
    const/16 p1, 0x64

    .line 1613
    goto/16 :goto_0

    .line 1635
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 1641
    :cond_c
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1642
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_3

    .line 1643
    invoke-virtual {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1301
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_11
        0x7 -> :sswitch_1
        0x64 -> :sswitch_5
        0x69 -> :sswitch_c
        0x6a -> :sswitch_5
        0x3e8 -> :sswitch_22
    .end sparse-switch

    .line 1305
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_3
        0x66 -> :sswitch_2
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 1348
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_6
        0x68 -> :sswitch_a
        0x6a -> :sswitch_9
        0x3e8 -> :sswitch_b
    .end sparse-switch

    .line 1422
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x66 -> :sswitch_d
        0x3e8 -> :sswitch_10
    .end sparse-switch

    .line 1454
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_13
        0x5 -> :sswitch_15
        0x66 -> :sswitch_12
        0x67 -> :sswitch_14
        0x3e8 -> :sswitch_16
    .end sparse-switch

    .line 1502
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x66 -> :sswitch_18
        0x67 -> :sswitch_19
        0x3e8 -> :sswitch_1d
    .end sparse-switch

    .line 1560
    :sswitch_data_6
    .sparse-switch
        0x5 -> :sswitch_21
        0x66 -> :sswitch_1f
        0x3e8 -> :sswitch_20
    .end sparse-switch

    .line 1599
    :sswitch_data_7
    .sparse-switch
        0x5 -> :sswitch_24
        0x66 -> :sswitch_23
    .end sparse-switch
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v6

    .line 790
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume] Request volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1258
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPlay()V
    .locals 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 914
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/16 v0, -0x40c4

    const-string v1, "Command startPlay in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 919
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[startPlay] Request play"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 924
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 929
    :goto_1
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 930
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto/16 :goto_0

    .line 932
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public startPlay(J)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x2

    .line 939
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 949
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/16 v0, -0x40ca

    const-string v1, "Command startPlay(long) in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 958
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 959
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 960
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 4
    .parameter "contentID"

    .prologue
    const/4 v3, 0x2

    .line 965
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 975
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const/16 v0, -0x40cb

    const-string v1, "Command startPlay(String) in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 980
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 985
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 986
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method updatePlayingPosition()V
    .locals 4

    .prologue
    .line 1657
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v3, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    .line 1660
    .local v1, position:J
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-wide v1, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 1662
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1663
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    goto :goto_0
.end method
