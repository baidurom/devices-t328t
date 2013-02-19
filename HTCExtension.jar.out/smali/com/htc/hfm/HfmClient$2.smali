.class Lcom/htc/hfm/HfmClient$2;
.super Lcom/htc/hfm/IHfmServiceCallback$Stub;
.source "HfmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/HfmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/hfm/HfmClient;


# direct methods
.method constructor <init>(Lcom/htc/hfm/HfmClient;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    invoke-direct {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortComplete(I)V
    .locals 1
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/hfm/HfmClient$Callback;->onAbortComplete(I)V

    .line 399
    return-void
.end method

.method public onHfmShutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/hfm/HfmClient;->access$202(Lcom/htc/hfm/HfmClient;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/hfm/HfmClient$Callback;->onHfmShutdown()V

    .line 412
    return-void
.end method

.method public onInterrupt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/hfm/HfmClient$Callback;->onInterrupt()V

    .line 407
    return-void
.end method

.method public onReserveServiceComplete(I)V
    .locals 1
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/hfm/HfmClient$Callback;->onReserveServiceComplete(I)V

    .line 386
    return-void
.end method

.method public onSelectCommandComplete(ILjava/lang/String;)V
    .locals 1
    .parameter "statusCode"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onSelectCommandComplete(ILjava/lang/String;)V

    .line 395
    return-void
.end method

.method public onSpeakComplete(I)V
    .locals 1
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/hfm/HfmClient$Callback;->onSpeakComplete(I)V

    .line 390
    return-void
.end method

.method public onStartRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/hfm/HfmClient$Callback;->onStartRecording()V

    .line 425
    return-void
.end method

.method public onStopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/hfm/HfmClient$Callback;->onStopRecording()V

    .line 429
    return-void
.end method

.method public onTestWakeUpPhraseComplete(I)V
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/hfm/HfmClient$Callback;->onTestWakeUpPhraseComplete(I)V

    .line 421
    return-void
.end method

.method public onTimeout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/hfm/HfmClient$Callback;->onTimeout()V

    .line 403
    return-void
.end method

.method public onWakeUpModeComplete(I)V
    .locals 1
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$2;->this$0:Lcom/htc/hfm/HfmClient;

    #getter for: Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/hfm/HfmClient$Callback;->onWakeUpModeComplete(I)V

    .line 417
    return-void
.end method
