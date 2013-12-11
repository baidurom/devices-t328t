.class public final Lcom/android/internal/telephony/gsm/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter "slotId"
    .parameter "appId"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 37
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mSlotId:I

    .line 38
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mAppId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 44
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "GSM"

    const-string v1, "UsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 55
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/internal/telephony/gsm/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 107
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "3F007F10"

    goto :goto_0

    .line 91
    :sswitch_1
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 94
    :sswitch_2
    const-string v0, "3F00"

    goto :goto_0

    .line 98
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_2
        0x4f30 -> :sswitch_3
        0x6f05 -> :sswitch_1
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f38 -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_1
        0x6f40 -> :sswitch_1
        0x6f45 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f4e -> :sswitch_1
        0x6f62 -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 115
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 120
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
