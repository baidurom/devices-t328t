.class final Lcom/htc/utils/ulog/UPolicy$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "UPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/UPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v0, "UPolicy"

    const-string v1, "[sendResult] policy changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/htc/utils/ulog/UPolicy;->access$102(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
