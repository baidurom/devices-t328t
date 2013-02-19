.class public final Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothA2dp;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothA2dp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesDeviceMatchBeatsHeadset(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->doesDeviceMatchBeatsHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesDeviceMatchBeatsSpeaker(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->doesDeviceMatchBeatsSpeaker(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesDeviceMatchBose(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->doesDeviceMatchBose(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConnectionState(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setAVRCPOn(Landroid/bluetooth/BluetoothA2dp;Z)V
    .locals 0
    .parameter "bluetoothA2dp"
    .parameter "on"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAVRCPOn(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .parameter "bluetoothA2dp"
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 28
    invoke-static {p0}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
