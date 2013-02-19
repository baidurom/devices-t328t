.class Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimSlotManager;->access$102(Lcom/android/internal/telephony/SimSlotManager;Z)Z

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #calls: Lcom/android/internal/telephony/SimSlotManager;->tryPwrupSwitch()V
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$200(Lcom/android/internal/telephony/SimSlotManager;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    return-void
.end method
