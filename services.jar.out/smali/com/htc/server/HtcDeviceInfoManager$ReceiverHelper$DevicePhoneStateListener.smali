.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DevicePhoneStateListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 327
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "phoneNumber"

    .prologue
    .line 330
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 335
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 338
    :pswitch_1
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged, phone disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 343
    :pswitch_2
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "DevicePhoneStateListener.onCallStateChanged, phone connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
