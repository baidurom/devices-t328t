.class public final Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothClass;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothClass.java"


# static fields
.field public static final MODEL_CARKIT:I = 0xb

.field public static final MODEL_HID:I = 0xc

.field public static final MODEL_HID_MOUSE:I = 0xd

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_BPP:I = 0x3

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z
    .locals 1
    .parameter "bluetoothClass"
    .parameter "profile"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    return v0
.end method
