.class public final Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothHeadset;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothHeadset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 144
    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "device"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
