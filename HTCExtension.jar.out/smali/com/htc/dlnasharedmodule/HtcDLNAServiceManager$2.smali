.class Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 342
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 343
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onServiceConnected] mService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v4, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", classname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 347
    .local v0, clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 354
    .end local v0           #clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$100(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$200(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 355
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$100(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)I

    move-result v3

    const-string v4, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 364
    .restart local v0       #clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    .line 357
    .end local v0           #clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catch_0
    move-exception v1

    .line 360
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 372
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onServiceDisconnected] classname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 374
    .local v0, clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 377
    return-void
.end method
