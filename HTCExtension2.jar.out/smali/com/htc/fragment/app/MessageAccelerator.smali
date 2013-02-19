.class public Lcom/htc/fragment/app/MessageAccelerator;
.super Ljava/lang/Object;
.source "MessageAccelerator.java"


# static fields
.field private static final PROPERTY_ENABLED:Ljava/lang/String; = "htc.msgAcc.enabled"

.field private static final PROPERTY_EXTENSIBLE:Ljava/lang/String; = "htc.msgAcc.extensible"

.field private static final PROPERTY_LOOK_AHEAD:Ljava/lang/String; = "htc.msgAcc.lookAhead"

.field private static final PROPERTY_TIMEOUT:Ljava/lang/String; = "htc.msgAcc.timeout"


# instance fields
.field private enabled:Z

.field private expressNo:J

.field private extensible:Z

.field private extensionLookAhead:J

.field private handler:Landroid/os/Handler;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/htc/fragment/app/MessageAccelerator;-><init>(Landroid/os/Handler;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "htc.msgAcc.enabled"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->enabled:Z

    .line 23
    const-string v0, "htc.msgAcc.timeout"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->timeout:J

    .line 24
    const-string v0, "htc.msgAcc.extensible"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensible:Z

    .line 25
    const-string v0, "htc.msgAcc.lookAhead"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensionLookAhead:J

    .line 36
    iput-object p1, p0, Lcom/htc/fragment/app/MessageAccelerator;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/htc/fragment/app/MessageAccelerator;-><init>(Landroid/os/Handler;)V

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fragment/app/MessageAccelerator;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/htc/fragment/app/MessageAccelerator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->timeout:J

    return-wide v0
.end method


# virtual methods
.method public accelerate(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 68
    iget-boolean v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->enabled:Z

    if-eqz v3, :cond_2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 70
    .local v1, now:J
    iget-boolean v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensible:Z

    if-eqz v3, :cond_1

    .line 71
    iget-wide v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J

    iget-wide v5, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensionLookAhead:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    .line 72
    iget-wide v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->timeout:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->handler:Landroid/os/Handler;

    invoke-static {v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, m:Landroid/os/Message;
    iget-wide v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J

    iput-wide v3, v0, Landroid/os/Message;->expressNo:J

    .line 88
    iget-object v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 92
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #now:J
    :goto_0
    return-void

    .line 75
    .restart local v1       #now:J
    :cond_1
    iget-wide v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    .line 76
    new-instance v3, Lcom/htc/fragment/app/MessageAccelerator$1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/htc/fragment/app/MessageAccelerator$1;-><init>(Lcom/htc/fragment/app/MessageAccelerator;JLjava/lang/Runnable;)V

    invoke-virtual {p0, v3}, Lcom/htc/fragment/app/MessageAccelerator;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 90
    .end local v1           #now:J
    :cond_2
    iget-object v3, p0, Lcom/htc/fragment/app/MessageAccelerator;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/fragment/app/MessageAccelerator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public setExtensible(Z)V
    .locals 0
    .parameter "extensible"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensible:Z

    .line 53
    return-void
.end method

.method public setExtensionLookAhead(J)V
    .locals 0
    .parameter "extensionLookAhead"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/htc/fragment/app/MessageAccelerator;->extensionLookAhead:J

    .line 61
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/htc/fragment/app/MessageAccelerator;->timeout:J

    .line 45
    return-void
.end method
