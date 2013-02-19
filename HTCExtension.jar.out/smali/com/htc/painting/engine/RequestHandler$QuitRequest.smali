.class Lcom/htc/painting/engine/RequestHandler$QuitRequest;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Lcom/htc/painting/engine/Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuitRequest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/painting/engine/RequestHandler;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/RequestHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;->this$0:Lcom/htc/painting/engine/RequestHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "RequestHandler"

    const-string v1, "do quit request"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 111
    const-string v0, "RequestHandler"

    const-string v1, "quit request done!"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
