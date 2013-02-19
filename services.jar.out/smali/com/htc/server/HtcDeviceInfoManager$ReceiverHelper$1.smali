.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;
.super Ljava/lang/Thread;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$telephony:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;->val$telephony:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 233
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;->val$telephony:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 234
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 235
    return-void
.end method
