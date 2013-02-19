.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;
.super Landroid/database/ContentObserver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 0
    .parameter "ctx"
    .parameter "handler"
    .parameter "infoOperator"

    .prologue
    .line 390
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 391
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;->mContext:Landroid/content/Context;

    .line 392
    iput-object p3, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 393
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    .line 397
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 398
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "screen_off_timeout"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$300()J

    move-result-wide v8

    invoke-static {v1, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 402
    .local v2, duration:J
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 403
    .local v6, op:Lcom/htc/server/HtcInfoOperator;
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-eqz v7, :cond_0

    .line 404
    invoke-virtual {v6, v2, v3}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    .line 402
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$300()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 408
    .end local v6           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method
