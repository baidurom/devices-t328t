.class Lcom/android/server/WifiService$11;
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
    .line 1127
    iput-object p1, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1130
    const-string v1, "mirror_display_status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1131
    .local v0, state:Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD] get WFD state change = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPreviousWFDState:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3900(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->setWirelessDisplayStarted(Z)V

    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPreviousWFDState:Z
    invoke-static {v1, v0}, Lcom/android/server/WifiService;->access$3902(Lcom/android/server/WifiService;Z)Z

    .line 1136
    return-void
.end method
