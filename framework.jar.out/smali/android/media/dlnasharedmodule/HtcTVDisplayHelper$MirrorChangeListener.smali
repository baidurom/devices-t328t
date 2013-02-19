.class Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;
.super Ljava/lang/Object;
.source "HtcTVDisplayHelper.java"

# interfaces
.implements Landroid/media/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;-><init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onMirrorStatusChange(ZJ)V
    .locals 2
    .parameter "inMirror"
    .parameter "dongleIP"

    .prologue
    .line 158
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v0, v1, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 159
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVOn()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVOff()V

    goto :goto_0
.end method
