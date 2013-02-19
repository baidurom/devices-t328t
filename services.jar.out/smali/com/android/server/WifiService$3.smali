.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 826
    const-string v4, "cw_reg_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 827
    .local v1, cwState:I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] get cwState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/16 v4, 0x65

    if-ne v1, v4, :cond_1

    .line 831
    const-string v4, "WifiService"

    const-string v5, "[C+W] get C+W register success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v5, "cw_reg_expire"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    #setter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v4, v5, v6}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;J)J

    .line 834
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] get C+W register expired time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v6}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setCWExpiredReregisterAlarm()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)V

    .line 837
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/server/WifiService$AsyncServiceHandler;->removeMessages(I)V

    .line 838
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 839
    iget-object v5, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, v5, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 844
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v4}, Lcom/android/server/WifiService;->getWagAsUserDefined()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v4}, Lcom/android/server/WifiService;->getWagAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 846
    .local v0, addr:Ljava/net/InetAddress;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] get C+W user defined WAG Server address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0           #addr:Ljava/net/InetAddress;
    :goto_0
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 868
    :goto_1
    return-void

    .line 849
    :cond_0
    :try_start_1
    const-string v4, "chinanetcw.chinatelecom.cn"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 850
    .restart local v0       #addr:Ljava/net/InetAddress;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] get C+W WAG Server address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 853
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 854
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] Unable to add route for WAG server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v4, 0x66

    if-ne v1, v4, :cond_3

    .line 860
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->increseCwRetryCounter()I

    move-result v3

    .line 861
    .local v3, retryCounter:I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] retryCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-nez v3, :cond_2

    .line 863
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregister()V

    .line 864
    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    goto :goto_1

    .line 866
    .end local v3           #retryCounter:I
    :cond_3
    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    goto/16 :goto_1
.end method
