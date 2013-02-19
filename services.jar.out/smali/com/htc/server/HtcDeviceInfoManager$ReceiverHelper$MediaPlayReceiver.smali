.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPlayReceiver"
.end annotation


# static fields
.field private static final ACT_START:I = 0x1

.field private static final ACT_STOP:I = 0x2


# instance fields
.field private mInfoOperators:[Lcom/htc/server/HtcInfoOperator;


# direct methods
.method public constructor <init>([Lcom/htc/server/HtcInfoOperator;)V
    .locals 0
    .parameter "infoOperators"

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 363
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    .line 366
    const-string v7, "HtcDeviceInfoManager"

    const-string v8, "MediaReceiver.onReceive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v7, "type"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 370
    .local v6, type:I
    const-string v7, "act"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 371
    .local v0, act:I
    const-string v7, "pid"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 376
    .local v5, pid:I
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v1, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 377
    .local v4, op:Lcom/htc/server/HtcInfoOperator;
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 378
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->start(II)V

    .line 376
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stop(II)V

    goto :goto_1

    .line 382
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method
