.class public Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothAdapter;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static disableFromPowerSaver(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "btAdapter"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disableFromPowerSaver()Z

    move-result v0

    return v0
.end method

.method public static getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1
    .parameter "btAdapter"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, result:I
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    .line 75
    :cond_0
    return v0
.end method

.method public static isAudioGatewaySupported(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "btAdapter"

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isAudioGatewaySupported()Z

    move-result v0

    return v0
.end method

.method public static listBondedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Set;
    .locals 1
    .parameter "btAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->listBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Z
    .locals 1
    .parameter "btAdapter"
    .parameter "mode"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v0

    return v0
.end method

.method public static setScanMode(Landroid/bluetooth/BluetoothAdapter;II)Z
    .locals 1
    .parameter "btAdapter"
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method
