.class Lcom/htc/server/WirelessDisplayService$H$1;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/WirelessDisplayService$H;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService$H;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H$1;->this$1:Lcom/htc/server/WirelessDisplayService$H;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$H$1;->this$1:Lcom/htc/server/WirelessDisplayService$H;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const-string v0, "WirelessDisplayService"

    const-string v1, "Disable AP fialed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    return-void
.end method
