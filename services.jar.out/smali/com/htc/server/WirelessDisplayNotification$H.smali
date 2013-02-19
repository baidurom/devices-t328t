.class final Lcom/htc/server/WirelessDisplayNotification$H;
.super Landroid/os/Handler;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final EVENT_BTN_CLICK:I = 0x1f5


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayNotification;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification$H;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 445
    return-void
.end method

.method private handleBtnClick()V
    .locals 7

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, bMirrorEnablingOrDisabling:Z
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$H;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayNotification;->access$600(Lcom/htc/server/WirelessDisplayNotification;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wireless_display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/WirelessDisplayManager;

    .line 462
    .local v4, wdm:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v4, :cond_1

    .line 463
    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v2

    .line 464
    .local v2, nMirrorState:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 470
    .end local v2           #nMirrorState:I
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 471
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v3, switchMirrorIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$H;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayNotification;->access$600(Lcom/htc/server/WirelessDisplayNotification;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    .end local v3           #switchMirrorIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 464
    .restart local v2       #nMirrorState:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    .end local v2           #nMirrorState:I
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, dongleListIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$H;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayNotification;->access$600(Lcom/htc/server/WirelessDisplayNotification;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayNotification$H;->handleBtnClick()V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method
