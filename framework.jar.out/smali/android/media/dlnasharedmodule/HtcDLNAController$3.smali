.class Landroid/media/dlnasharedmodule/HtcDLNAController$3;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1913
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected classname= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,IBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v1, "[HtcDLNAController]"

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1916
    const-string v1, "[HtcDLNAController]"

    const-string/jumbo v2, "return, since service should already unbinded"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$502(Landroid/media/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1923
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1924
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MiddleLayer Service null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v2

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2900(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1930
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const/4 v2, 0x0

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1502(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 1939
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v2

    const-string v3, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1959
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    invoke-interface {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;->onConnected()V

    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1953
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1954
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1956
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    .line 1963
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const/4 v1, 0x0

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$502(Landroid/media/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1966
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$3;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    invoke-interface {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnConnectionListener;->onConnectionLost()V

    .line 1967
    :cond_0
    return-void
.end method
