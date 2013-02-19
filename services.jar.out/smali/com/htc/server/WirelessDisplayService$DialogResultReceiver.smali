.class Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1575
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 1578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1580
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.internal.app.intent.extra.OUTPUTTV_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1581
    .local v1, finalDialogResult:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver intent com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT, extra value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    if-ne v1, v5, :cond_1

    .line 1583
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V
    invoke-static {v2, v5}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1588
    .end local v1           #finalDialogResult:I
    :cond_0
    :goto_0
    return-void

    .line 1584
    .restart local v1       #finalDialogResult:I
    :cond_1
    if-nez v1, :cond_0

    .line 1585
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v3, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V
    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;I)V

    goto :goto_0
.end method
