.class public Lcom/android/internal/telephony/gsm/HtcGsmModemLink;
.super Landroid/os/Handler;
.source "HtcGsmModemLink.java"


# static fields
.field private static final EVENT_3GIND:I = 0x1

.field private static final EVENT_MODEM_LINK_UPDATE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mDataActivityState:I

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mModemLinkOn:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 29
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemLinkStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 30
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemLinkStatus(Landroid/os/Handler;)V

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mModemLinkOn:Z

    .line 41
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "GSM"

    const-string v1, "HtcGsmModemLink finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public getDataActivityState()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mDataActivityState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v5, :cond_1

    .line 59
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " HtcGsmModemLink drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 66
    .local v0, ar:Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 69
    .local v4, status:[I
    aget v5, v4, v6

    if-ne v5, v2, :cond_2

    .line 70
    .local v2, modemLinkState:Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mModemLinkOn:Z

    if-eq v5, v2, :cond_0

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mModemLinkOn:Z

    .line 72
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataActivity()V

    goto :goto_0

    .end local v2           #modemLinkState:Z
    :cond_2
    move v2, v6

    .line 69
    goto :goto_1

    .line 76
    .end local v4           #status:[I
    :pswitch_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 77
    .local v1, inds:[I
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 78
    aget v3, v1, v6

    .line 79
    .local v3, state:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mDataActivityState:I

    if-eq v3, v5, :cond_0

    .line 80
    iput v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mDataActivityState:I

    .line 81
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mModemLinkOn:Z

    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataActivity()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isModemLinkOn()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->mModemLinkOn:Z

    return v0
.end method
