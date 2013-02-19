.class Lcom/htc/dlnasharedmodule/HtcDLNAController$3;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 2181
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected classname= "

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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string v1, "[HtcDLNAController]"

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2184
    const-string v1, "[HtcDLNAController]"

    const-string v2, "return, since service should already unbinded"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2191
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2192
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MiddleLayer Service null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2900(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 2198
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const/4 v2, 0x0

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 2207
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v2

    const-string v3, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2227
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    invoke-interface {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;->onConnected()V

    goto :goto_0

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2221
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2222
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2224
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    .line 2231
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2234
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;->onConnectionLost()V

    .line 2235
    :cond_0
    return-void
.end method
