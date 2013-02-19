.class final Lcom/htc/protobuf/RpcUtil$2;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/htc/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/protobuf/RpcUtil;->newOneTimeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/RpcCallback",
        "<TParameterType;>;"
    }
.end annotation


# instance fields
.field private alreadyCalled:Z

.field final synthetic val$originalCallback:Lcom/htc/protobuf/RpcCallback;


# direct methods
.method constructor <init>(Lcom/htc/protobuf/RpcCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/protobuf/RpcUtil$2;->val$originalCallback:Lcom/htc/protobuf/RpcCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParameterType;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, parameter:Ljava/lang/Object;,"TParameterType;"
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;

    invoke-direct {v0}, Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;-><init>()V

    throw v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    .line 129
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/htc/protobuf/RpcUtil$2;->val$originalCallback:Lcom/htc/protobuf/RpcCallback;

    invoke-interface {v0, p1}, Lcom/htc/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
