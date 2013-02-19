.class Lcom/htc/hfm/HfmClient$1;
.super Ljava/lang/Object;
.source "HfmClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 362
    iput-object p1, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 374
    invoke-static {}, Lcom/htc/hfm/HfmClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    invoke-static {p2}, Lcom/htc/hfm/IHfmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/hfm/IHfmService;

    move-result-object v1

    #setter for: Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;
    invoke-static {v0, v1}, Lcom/htc/hfm/HfmClient;->access$402(Lcom/htc/hfm/HfmClient;Lcom/htc/hfm/IHfmService;)Lcom/htc/hfm/IHfmService;

    .line 376
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/hfm/HfmClient;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/htc/hfm/HfmClient;->access$302(Lcom/htc/hfm/HfmClient;Z)Z

    .line 377
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    #calls: Lcom/htc/hfm/HfmClient;->next()V
    invoke-static {v0}, Lcom/htc/hfm/HfmClient;->access$500(Lcom/htc/hfm/HfmClient;)V

    .line 378
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-static {}, Lcom/htc/hfm/HfmClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    #setter for: Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;
    invoke-static {v0, v3}, Lcom/htc/hfm/HfmClient;->access$102(Lcom/htc/hfm/HfmClient;Lcom/htc/hfm/HfmClient$Action;)Lcom/htc/hfm/HfmClient$Action;

    .line 367
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    #setter for: Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/hfm/HfmClient;->access$202(Lcom/htc/hfm/HfmClient;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/hfm/HfmClient;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/htc/hfm/HfmClient;->access$302(Lcom/htc/hfm/HfmClient;Z)Z

    .line 369
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$1;->this$0:Lcom/htc/hfm/HfmClient;

    #setter for: Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;
    invoke-static {v0, v3}, Lcom/htc/hfm/HfmClient;->access$402(Lcom/htc/hfm/HfmClient;Lcom/htc/hfm/IHfmService;)Lcom/htc/hfm/IHfmService;

    .line 370
    return-void
.end method
