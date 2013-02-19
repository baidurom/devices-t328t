.class Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 239
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    monitor-enter v3

    .line 240
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 243
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 245
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 248
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 250
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkCapabilities;

    invoke-direct {v4}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 320
    :cond_1
    :goto_0
    monitor-exit v3

    .line 321
    :goto_1
    return-void

    .line 253
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 257
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recieve from WifiStateMachine. mNetworkInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 261
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_3

    .line 262
    const-string v2, "WifiStateTracker"

    const-string/jumbo v4, "mLinkProperties is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 265
    :cond_3
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLinkProperties = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 268
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_4

    .line 269
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkCapabilities;

    invoke-direct {v4}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 273
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 274
    .local v1, state:Landroid/net/NetworkInfo$State;
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v2, v1, :cond_5

    .line 275
    monitor-exit v3

    goto/16 :goto_1

    .line 320
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 277
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_5
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 280
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send to ConnectivityService. mNetworkInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 285
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 288
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 289
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 290
    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.net.wifi.CW_STATE_CHANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 294
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W][cW-fake wifi]Recieve from WifiStateMachine. mNetworkInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 298
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_8

    .line 299
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 301
    :cond_8
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 303
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_9

    .line 304
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkCapabilities;

    invoke-direct {v4}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 306
    :cond_9
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 307
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W][cW-fake wifi] the fake wifi status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v2, v1, :cond_a

    .line 309
    monitor-exit v3

    goto/16 :goto_1

    .line 311
    :cond_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 314
    const-string v2, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W][cW-fake wifi]Send to ConnectivityService. mNetworkInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
