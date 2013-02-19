.class public final Lcom/android/internal/telephony/ims/ISIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "ISIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ISIM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V
    .locals 1
    .parameter "p"
    .parameter "slotId"
    .parameter "appId"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mSlotId:I

    .line 46
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mAppId:Ljava/lang/String;

    .line 47
    sput-object p3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 54
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ISIM"

    const-string v1, "ISIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 63
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ISIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fd5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 78
    const-string v0, "ISIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 83
    const-string v0, "ISIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
