.class public Landroid/media/dlnasharedmodule/HtcDLNABrowser;
.super Ljava/lang/Object;
.source "HtcDLNABrowser.java"


# static fields
.field private static final DLNA_COOKIE_GALLERY:I = 0x0

.field private static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_MODE_MUSIC:I = 0x1

.field private static final DLNA_MODE_PHOTO:I = 0x2

.field private static final DLNA_MODE_VIDEO:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/media/dlnasharedmodule/HtcDLNABrowser;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNABrowser;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 75
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNABrowser$1;

    invoke-direct {v0, p0}, Landroid/media/dlnasharedmodule/HtcDLNABrowser$1;-><init>(Landroid/media/dlnasharedmodule/HtcDLNABrowser;)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNABrowser;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
