.class Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;
.super Ljava/lang/Object;
.source "HtcTVDisplayHelper.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onMirrorStatusChange(ZJ)V
    .locals 2
    .parameter "inMirror"
    .parameter "dongleIP"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 163
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVOn()V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVOff()V

    goto :goto_0
.end method
