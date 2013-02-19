.class final Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
.super Landroid/os/Handler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceInfoManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 728
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    .line 729
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 730
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 735
    return-void
.end method
