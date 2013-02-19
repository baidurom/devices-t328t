.class public Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothDevice.java"


# static fields
.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PROFILE_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.PROFILE_DISCONNECTED"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final EXTRA_AG_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.AG_STATE"

.field public static final EXTRA_OUT_RANGE:Ljava/lang/String; = "android.bluetooth.device.extra.OUT_RANGE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "android.bluetooth.device.extra.PROFILE"

.field public static final PROFILE_A2DP:I = 0x2

.field public static final PROFILE_HEADSET:I = 0x1

.field public static final PROFILE_HID:I = 0x4

.field public static final PROFILE_OPP:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0
.end method

.method public static getUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 1
    .parameter "device"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method
