.class Lcom/android/server/am/ActivityManagerService$6;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->enableOobeOopProtection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4460
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4463
    const-string v0, "ActivityManager"

    const-string v1, "Start to apply OOP"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mFirstBootSetupEndReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4465
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mFirstBootSetupEndReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4466
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/ActivityManagerService;->mFirstBootSetupEndReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$802(Lcom/android/server/am/ActivityManagerService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 4468
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/am/ActivityManagerService;->mAllowKillingBackground:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$902(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 4469
    return-void
.end method
