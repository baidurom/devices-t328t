.class Lcom/android/server/WifiService$17;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
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
    .line 2388
    iput-object p1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2392
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mProcessingMHS:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2393
    const-string v1, "WifiService"

    const-string v2, "GOT ConnectivityManager.HTC_PERMITTED_TETHER_ACTION"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableMhsFeature:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mProcessingMHS:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2410
    :cond_0
    :goto_0
    return-void

    .line 2396
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v2, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 2397
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, -0x23

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mMhsStatus:I
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4602(Lcom/android/server/WifiService;I)I

    .line 2398
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMhsStatus:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2399
    const-string v1, "WifiService"

    const-string v2, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v1, v7}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2401
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mProcessingMHS:Z
    invoke-static {v1, v6}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    .line 2402
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4700(Lcom/android/server/WifiService;)Z

    goto :goto_0

    .line 2403
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMhsStatus:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 2404
    const-string v1, "WifiService"

    const-string v2, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v1, v6}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2406
    iget-object v1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mProcessingMHS:Z
    invoke-static {v1, v6}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    goto :goto_0
.end method
