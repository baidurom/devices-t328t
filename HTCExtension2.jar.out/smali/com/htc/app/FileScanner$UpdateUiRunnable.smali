.class Lcom/htc/app/FileScanner$UpdateUiRunnable;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUiRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FileScanner;


# direct methods
.method private constructor <init>(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/htc/app/FileScanner$UpdateUiRunnable;-><init>(Lcom/htc/app/FileScanner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 967
    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->isStop:Z
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->isScanStop:Z
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$200(Lcom/htc/app/FileScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/FileScanner;->access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 970
    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    new-instance v1, Lcom/htc/app/FileScanner$UpdateUiRunnable;

    iget-object v2, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    invoke-direct {v1, v2}, Lcom/htc/app/FileScanner$UpdateUiRunnable;-><init>(Lcom/htc/app/FileScanner;)V

    #setter for: Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;
    invoke-static {v0, v1}, Lcom/htc/app/FileScanner;->access$402(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$UpdateUiRunnable;)Lcom/htc/app/FileScanner$UpdateUiRunnable;

    .line 971
    iget-object v0, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FileScanner$UpdateUiRunnable;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;
    invoke-static {v1}, Lcom/htc/app/FileScanner;->access$400(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileScanner$UpdateUiRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    :cond_0
    return-void
.end method
