.class public Lcom/htc/service/vt/MediaVT;
.super Ljava/lang/Object;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;,
        Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;,
        Lcom/htc/service/vt/MediaVT$EventHandler;,
        Lcom/htc/service/vt/MediaVT$OnEventListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARA_SET_BRIGHTNESS:I = 0x32

.field public static final CAMERA_PARA_SET_CONTRAST:I = 0x96

.field public static final CAMERA_PARA_SET_MIRROR:I = 0x64

.field private static final MEDIAVT_STATE_CONNECTED:I = 0x3

.field private static final MEDIAVT_STATE_DISCONNECTED:I = 0x4

.field private static final MEDIAVT_STATE_INITED:I = 0x2

.field private static final MEDIAVT_STATE_INITING:I = 0x1

.field private static final MEDIAVT_STATE_TERMINTED:I = 0x5

.field private static final MEDIAVT_STATE_UNINIT:I = 0x0

.field public static final SURFACE_CAMERA:I = 0x0

.field public static final SURFACE_VIDEO:I = 0x1

.field public static final SWITCH_263_VIDEO_DEFAULT:I = 0x16

.field public static final SWITCH_HW_AUDIO_DECODE:I = 0x2

.field public static final SWITCH_HW_VIDEO_DECODE:I = 0x0

.field public static final SWITCH_MP4_VIDEO_DEFAULT:I = 0x8

.field public static final SWITCH_SW_AUDIO_DECODE:I = 0x4

.field public static final SWITCH_SW_VIDEO_DECODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaVT_Java"

.field public static final VIDEO_IN_FIRST_CAMERA:I = 0x0

.field public static final VIDEO_IN_SECOND_CAMERA:I = 0x1

.field public static final VIDEO_IN_STILL_IMAGE:I = 0x2

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE:I = 0x8

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED:I = 0x9

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE:I = 0xc

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED:I = 0xd

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE:I = 0xa

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED:I = 0xb

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE:I = 0xe

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED:I = 0xf

.field public static final VT_CONNECT_COMPLETE:I = 0x3

.field public static final VT_CONNECT_DIRECTION_IMCOMING:I = 0x2

.field public static final VT_CONNECT_DIRECTION_OUTGOING:I = 0x1

.field public static final VT_CONNECT_FAILED:I = 0x4

.field public static final VT_DISCONNECT_COMPLETE:I = 0x5

.field public static final VT_DISCONNECT_FAILED:I = 0x6

.field public static final VT_ERROR_SERVER_DIED:I = 0x64

.field public static final VT_INIT_COMPLETE:I = 0x1

.field public static final VT_INIT_FAILED:I = 0x2

.field public static final VT_MEDIAVTSERVICE_DESTROY:I = 0x136

.field public static final VT_MEDIAVTSERVICE_GET_SURFACE:I = 0x12e

.field public static final VT_MEDIAVTSERVICE_HIDE:I = 0x130

.field public static final VT_MEDIAVTSERVICE_HIDE_FAREND:I = 0x132

.field public static final VT_MEDIAVTSERVICE_HIDE_NEAREND:I = 0x131

.field public static final VT_MEDIAVTSERVICE_PREPARE_SURFACE:I = 0x12d

.field public static final VT_MEDIAVTSERVICE_QUIT:I = 0x138

.field public static final VT_MEDIAVTSERVICE_SET_FAREND_POS:I = 0x135

.field public static final VT_MEDIAVTSERVICE_SET_NEAREND_POS:I = 0x134

.field public static final VT_MEDIAVTSERVICE_SHOW:I = 0x12f

.field public static final VT_MEDIAVTSERVICE_START:I = 0x12c

.field public static final VT_MEDIAVTSERVICE_SURFACE_READY:I = 0xc8

.field public static final VT_MEDIAVTSERVICE_SWITCH_VIEW:I = 0x133

.field public static final VT_MEDIAVTSERVICE_UNBIND:I = 0x137

.field public static final VT_MULTIMEDIA_RINGTONE_BEGIN:I = 0x11

.field public static final VT_MULTIMEDIA_RINGTONE_END:I = 0x12

.field public static final VT_REMOTE_CALL_END:I = 0x7

.field public static final VT_SERVICE_BINDED:I = 0x13

.field public static final VT_SERVICE_UNBINDED:I = 0x14

.field public static final VT_UNSOLICITED_TERMINATED:I = 0x10


# instance fields
.field private mCameraSurface:Landroid/view/Surface;

.field private mContext:Landroid/content/Context;

.field private mEnableAudio:Z

.field private mEnableVideo:Z

.field private mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

.field private mEventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/service/vt/MediaVT$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

.field private mIsDeInitializeCalled:Z

.field private mIsDisconnectCalled:Z

.field private mLoopback:Z

.field private mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

.field private mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

.field private mMediaVTServiceReady:Z

.field private mMediaVTState:I

.field private mNativeContext:I

.field private mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

.field private mSrcImage:Landroid/graphics/Bitmap;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field public mVTSerivceExist:Z

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideosource:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "MediaVT_Java"

    const-string v1, "Try System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v0, "MediaVT_Java"

    const-string v1, "System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 98
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 138
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 139
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 140
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 141
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 301
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 155
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 98
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 138
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 139
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 140
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 141
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 301
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 163
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 165
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 2
    .parameter "context"
    .parameter "eventListener"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 98
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 138
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 139
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 140
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 141
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 301
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 169
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 171
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 172
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method static synthetic access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/service/vt/MediaVT;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/service/vt/MediaVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/service/vt/MediaVT;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/service/vt/MediaVT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native native_connect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_connect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_enableoutput(ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_finalize()V
.end method

.method private native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_sendkey(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setoption(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setsurface(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setvideosource(ILandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediavt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1147
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/vt/MediaVT;

    .line 1148
    .local v1, mv:Lcom/htc/service/vt/MediaVT;
    if-nez v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    if-eqz v2, :cond_0

    .line 1153
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1154
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    if-nez v1, :cond_2

    .line 1182
    new-instance v1, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    .line 1184
    :cond_2
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1185
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setMediaVTState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-gt p1, v0, :cond_0

    .line 76
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set Java MediaVT state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 79
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 80
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaVTState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupMediaVT(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 177
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 178
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 182
    iput-boolean v3, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 183
    iput v3, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 186
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 187
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 189
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    .line 193
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 194
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    .line 204
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->native_setup(Ljava/lang/Object;)V

    .line 206
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 211
    new-instance v1, Lcom/htc/service/vt/MediaVT$1;

    const-string v2, "MediaVTServiceHandlerThread"

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$1;-><init>(Lcom/htc/service/vt/MediaVT;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    .line 218
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 220
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v1, 0x12c

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 223
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0

    .line 198
    :cond_2
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0
.end method


# virtual methods
.method public bindMediaVTSerive(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.mediavtservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "com.htc.mediavtservice"

    const-string v2, "com.htc.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Sample AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, "MediaVT_Java"

    const-string v2, "bindService() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.testtool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "com.htc.testtool"

    const-string v2, "com.htc.testtool.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Test AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_2
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for Phone AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(I)V
    .locals 3
    .parameter "callDirection"

    .prologue
    .line 597
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI] connect in, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 601
    :cond_0
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 602
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_1
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_connect(I)V

    .line 608
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect out, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Z)V
    .locals 3
    .parameter "loopback"

    .prologue
    .line 583
    const-string v0, "MediaVT_Java"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 586
    :cond_0
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 588
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 589
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_connect(Z)V

    goto :goto_0
.end method

.method public destroyMediaVTService()V
    .locals 3

    .prologue
    .line 477
    const-string v1, "MediaVT_Java"

    const-string v2, "destroyMediaVTService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->destroy()Z

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.destroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 619
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    if-nez v0, :cond_0

    .line 622
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP is calling MediaVT.disconenct()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 629
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_1

    .line 649
    :goto_0
    return-void

    .line 625
    :cond_0
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP already called MediaVT.disconenct() before, dont call again..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    if-ne v0, v2, :cond_2

    .line 636
    const-string v0, "MediaVT_Java"

    const-string v1, "Aricent VT stack is already deinitialized, dont call native_disconnect(), return and send VT_DISCONNECT_COMPLETE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "MediaVT_Java"

    const-string v1, "inform AP VT_DISCONNECT_COMPLETE directly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 639
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_2
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_disconnect()V

    .line 646
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableVTOutput(ZZ)I
    .locals 3
    .parameter "video"
    .parameter "audio"

    .prologue
    .line 757
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVTOutput, video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 760
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call enableVTOutput when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    .line 765
    :cond_0
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    if-eq v0, p2, :cond_2

    .line 766
    :cond_1
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 767
    iput-boolean p2, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_enableoutput(ZZ)I

    move-result v0

    goto :goto_0

    .line 771
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_finalize()V

    return-void
.end method

.method public getMediaVTNotificationString(I)Ljava/lang/String;
    .locals 2
    .parameter "what"

    .prologue
    .line 951
    sparse-switch p1, :sswitch_data_0

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notification from VT stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 953
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 955
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 957
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 959
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 961
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 963
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 965
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_REMOTE_CALL_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 967
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_ERROR_SERVER_DIED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 969
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 971
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 973
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 975
    :sswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 977
    :sswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 979
    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 981
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 983
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 985
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_UNSOLICITED_TERMINATED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 987
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_BEGIN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 989
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 991
    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_BINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 993
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_UNBINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 951
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public getMediaVTSeriveSurface()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "MediaVT_Java"

    const-string v2, "getMediaVTSeriveSurface()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 366
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    const-string v1, "MediaVT_Java"

    const-string v2, "CameraSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 368
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    const-string v1, "MediaVT_Java"

    const-string v2, "VideoSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not get surface from IMediaVTService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaVTStateString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state of MediaVT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_UNINIT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_CONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_DISCONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 68
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_TERMINTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 816
    const-string v0, "MediaVT_Java"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/16 v0, 0x130

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 819
    return-void
.end method

.method public hideFarend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    const-string v0, "MediaVT_Java"

    const-string v1, "hideFarend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_FAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 831
    return-void
.end method

.method public hideMediaVTFarendServiceView()V
    .locals 3

    .prologue
    .line 421
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTFarendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideFarend()Z

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideFarend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTNearendServiceView()V
    .locals 3

    .prologue
    .line 407
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTNearendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideNearend()Z

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideNearend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTServiceView()V
    .locals 3

    .prologue
    .line 393
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hide()Z

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideNearend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    const-string v0, "MediaVT_Java"

    const-string v1, "hideNearend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_NEAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 825
    return-void
.end method

.method public init(Landroid/view/Surface;Landroid/view/Surface;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "camSurface"
    .parameter "vidSurface"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x1

    .line 237
    const-string v0, "MediaVT_Java"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 241
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 242
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 245
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eq v0, v2, :cond_0

    .line 246
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call init(Surface, Surface, OnEventListener) when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    goto :goto_0
.end method

.method public init(Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 4
    .parameter "eventListener"

    .prologue
    .line 265
    const-string v1, "MediaVT_Java"

    const-string v2, "init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v1, "MediaVT_Java"

    const-string v2, "Wait for mediavt service binding."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    iget-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    if-nez v1, :cond_0

    .line 270
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Service binding successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 280
    :cond_1
    iget v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v1, :cond_2

    .line 281
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call init(OnEventListener) when MediaVT State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v3}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_1
    return-void

    .line 285
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 295
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    .line 297
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v1, "MediaVT_Java"

    const-string v2, "init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initMediaVTSerive()V
    .locals 3

    .prologue
    .line 348
    const-string v1, "MediaVT_Java"

    const-string v2, "initMediaVTSerive ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-interface {v1, v2}, Lcom/htc/service/vt/IMediaVTService;->init(Lcom/htc/service/vt/OnMediaVTServiceEventListener;)Z

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "IMediaVTService == null, can not call IMediaVTService.init()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public native native_deInitialize()V
.end method

.method public sendKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 696
    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 697
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call sendKey when MediaVT State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    :goto_0
    return v1

    .line 701
    :cond_1
    const/4 v2, 0x7

    if-lt p1, v2, :cond_2

    const/16 v2, 0x10

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 704
    :cond_3
    const/4 v0, 0x0

    .line 705
    .local v0, dtmfCode:I
    packed-switch p1, :pswitch_data_0

    .line 743
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_sendkey(I)I

    move-result v1

    goto :goto_0

    .line 707
    :pswitch_0
    const/4 v0, 0x0

    .line 708
    goto :goto_1

    .line 710
    :pswitch_1
    const/4 v0, 0x1

    .line 711
    goto :goto_1

    .line 713
    :pswitch_2
    const/4 v0, 0x2

    .line 714
    goto :goto_1

    .line 716
    :pswitch_3
    const/4 v0, 0x3

    .line 717
    goto :goto_1

    .line 719
    :pswitch_4
    const/4 v0, 0x4

    .line 720
    goto :goto_1

    .line 722
    :pswitch_5
    const/4 v0, 0x5

    .line 723
    goto :goto_1

    .line 725
    :pswitch_6
    const/4 v0, 0x6

    .line 726
    goto :goto_1

    .line 728
    :pswitch_7
    const/4 v0, 0x7

    .line 729
    goto :goto_1

    .line 731
    :pswitch_8
    const/16 v0, 0x8

    .line 732
    goto :goto_1

    .line 734
    :pswitch_9
    const/16 v0, 0x9

    .line 735
    goto :goto_1

    .line 737
    :pswitch_a
    const/16 v0, 0xa

    .line 738
    goto :goto_1

    .line 740
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_1

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setFarendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 848
    const-string v1, "MediaVT_Java"

    const-string v2, "setFarendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_FAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 852
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x135

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 853
    return-void
.end method

.method public setMediaVTServiceFarendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 463
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setFarendVideoPos(IIII)Z

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaVTServiceNearendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 449
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setNearendVideoPos(IIII)Z

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 840
    const-string v1, "MediaVT_Java"

    const-string v2, "setNearendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_NEAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 844
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x134

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 845
    return-void
.end method

.method public setOption(I)I
    .locals 2
    .parameter "option"

    .prologue
    .line 781
    const-string v0, "MediaVT_Java"

    const-string v1, "setOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOption(ILjava/lang/String;)I
    .locals 3
    .parameter "option"
    .parameter "value"

    .prologue
    .line 799
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 802
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setOption when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x0

    .line 806
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setSurface(ILandroid/view/Surface;)V
    .locals 3
    .parameter "whichSurface"
    .parameter "newSurface"

    .prologue
    .line 513
    const-string v1, "MediaVT_Java"

    const-string v2, "setSurfaces ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-nez p1, :cond_2

    .line 517
    if-nez p2, :cond_1

    .line 519
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null camera surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_0

    .line 522
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, use service nearend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_1
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 540
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get nearend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 535
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set camera surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    goto :goto_1

    .line 542
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 544
    if-nez p2, :cond_4

    .line 546
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null video surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_3

    .line 549
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_3
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, user service farend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :try_start_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    :goto_2
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 567
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :catch_1
    move-exception v0

    .line 557
    .restart local v0       #remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get farend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 562
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set video surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    goto :goto_2

    .line 570
    :cond_5
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set unknown surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setVideoInputSource(ILandroid/graphics/Bitmap;)I
    .locals 3
    .parameter "is"
    .parameter "img"

    .prologue
    const/4 v2, 0x0

    .line 666
    const-string v0, "MediaVT_Java"

    const-string v1, "setVideoInputSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    .line 668
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setVideoInputSource when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    .line 672
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 673
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 675
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 677
    if-nez p2, :cond_1

    .line 678
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_1
    const/16 v0, 0xb0

    const/16 v1, 0x90

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 681
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    .line 684
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 810
    const-string v0, "MediaVT_Java"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/16 v0, 0x12f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 813
    return-void
.end method

.method public showMediaVTServiceView()V
    .locals 3

    .prologue
    .line 379
    const-string v1, "MediaVT_Java"

    const-string v2, "showMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->show()Z

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.show()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchMediaVTServiceView()V
    .locals 3

    .prologue
    .line 435
    const-string v1, "MediaVT_Java"

    const-string v2, "switchMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->switchView()Z

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.switchView()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    const-string v0, "MediaVT_Java"

    const-string v1, "switchView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SWITCH_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v0, 0x133

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 837
    return-void
.end method

.method public unBindMediaVTService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 491
    const-string v1, "MediaVT_Java"

    const-string v2, "unBindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_QUIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v1, 0x138

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 500
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Catch java.lang.IllegalArgumentException: Service not registered, ITS HuangShan 1323"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public vt_deInitialize()V
    .locals 2

    .prologue
    .line 652
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/htc/service/vt/MediaVT;->native_deInitialize()V

    .line 654
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method
