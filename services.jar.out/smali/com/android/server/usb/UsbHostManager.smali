.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .parameter "context"
    .parameter "settingsManager"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private isBlackListed(III)Z
    .locals 2
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    .line 87
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-eq p2, v0, :cond_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 76
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 81
    :goto_1
    return v2

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private startPs3PairingService()V
    .locals 5

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/start ps3service"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 231
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 232
    .local v2, status:I
    if-nez v2, :cond_0

    .line 233
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v4, "PS3 Pairing successful"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :goto_0
    return-void

    .line 235
    .restart local v1       #p:Ljava/lang/Process;
    .restart local v2       #status:I
    :cond_0
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v4, "PS3 Pairing Failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 237
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v4, "PS3 Pairing Fail: IOException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v4, "PS3 Pairing Fail: InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .locals 34
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 114
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 115
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v33

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v4

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 119
    :cond_2
    :try_start_1
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v32, v4, 0x5

    .line 120
    .local v32, numInterfaces:I
    move/from16 v0, v32

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .local v17, interfaces:[Landroid/os/Parcelable;
    const/16 v28, 0x0

    .local v28, ival:I
    const/16 v24, 0x0

    .line 124
    .local v24, eval:I
    const/16 v27, 0x0

    .local v27, intf:I
    move/from16 v29, v28

    .end local v28           #ival:I
    .local v29, ival:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_5

    .line 125
    add-int/lit8 v28, v29, 0x1

    .end local v29           #ival:I
    .restart local v28       #ival:I
    :try_start_2
    aget v5, p7, v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .local v5, interfaceId:I
    add-int/lit8 v29, v28, 0x1

    .end local v28           #ival:I
    .restart local v29       #ival:I
    :try_start_3
    aget v6, p7, v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 127
    .local v6, interfaceClass:I
    add-int/lit8 v28, v29, 0x1

    .end local v29           #ival:I
    .restart local v28       #ival:I
    :try_start_4
    aget v7, p7, v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    .local v7, interfaceSubclass:I
    add-int/lit8 v29, v28, 0x1

    .end local v28           #ival:I
    .restart local v29       #ival:I
    :try_start_5
    aget v8, p7, v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 129
    .local v8, interfaceProtocol:I
    add-int/lit8 v28, v29, 0x1

    .end local v29           #ival:I
    .restart local v28       #ival:I
    :try_start_6
    aget v31, p7, v29

    .line 131
    .local v31, numEndpoints:I
    move/from16 v0, v31

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 132
    .local v9, endpoints:[Landroid/os/Parcelable;
    const/16 v23, 0x0

    .local v23, endp:I
    move/from16 v25, v24

    .end local v24           #eval:I
    .local v25, eval:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 133
    add-int/lit8 v24, v25, 0x1

    .end local v25           #eval:I
    .restart local v24       #eval:I
    aget v20, p8, v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 134
    .local v20, address:I
    add-int/lit8 v25, v24, 0x1

    .end local v24           #eval:I
    .restart local v25       #eval:I
    :try_start_7
    aget v21, p8, v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 135
    .local v21, attributes:I
    add-int/lit8 v24, v25, 0x1

    .end local v25           #eval:I
    .restart local v24       #eval:I
    :try_start_8
    aget v30, p8, v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 136
    .local v30, maxPacketSize:I
    add-int/lit8 v25, v24, 0x1

    .end local v24           #eval:I
    .restart local v25       #eval:I
    :try_start_9
    aget v26, p8, v24

    .line 137
    .local v26, interval:I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v30

    move/from16 v3, v26

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v23

    .line 132
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 142
    .end local v20           #address:I
    .end local v21           #attributes:I
    .end local v26           #interval:I
    .end local v30           #maxPacketSize:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    :try_start_a
    monitor-exit v33
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 145
    :cond_4
    :try_start_b
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 124
    add-int/lit8 v27, v27, 0x1

    move/from16 v24, v25

    .end local v25           #eval:I
    .restart local v24       #eval:I
    move/from16 v29, v28

    .end local v28           #ival:I
    .restart local v29       #ival:I
    goto :goto_1

    .line 148
    .end local v5           #interfaceId:I
    .end local v6           #interfaceClass:I
    .end local v7           #interfaceSubclass:I
    .end local v8           #interfaceProtocol:I
    .end local v9           #endpoints:[Landroid/os/Parcelable;
    .end local v23           #endp:I
    .end local v29           #ival:I
    .end local v31           #numEndpoints:I
    .restart local v28       #ival:I
    :catch_0
    move-exception v22

    .line 151
    .local v22, e:Ljava/lang/Exception;
    :goto_3
    :try_start_c
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v22

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    monitor-exit v33

    goto/16 :goto_0

    .line 155
    .end local v22           #e:Ljava/lang/Exception;
    .end local v28           #ival:I
    .restart local v29       #ival:I
    :cond_5
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 157
    .local v10, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 161
    const/16 v19, 0x54c

    .line 162
    .local v19, SONY_VENDOR_ID:I
    const/16 v18, 0x268

    .line 163
    .local v18, SONY_PS3_PRODUCT_ID:I
    const/16 v4, 0x54c

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    const/16 v4, 0x268

    move/from16 v0, p3

    if-ne v0, v4, :cond_6

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->startPs3PairingService()V

    .line 167
    :cond_6
    monitor-exit v33
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 148
    .end local v10           #device:Landroid/hardware/usb/UsbDevice;
    .end local v18           #SONY_PS3_PRODUCT_ID:I
    .end local v19           #SONY_VENDOR_ID:I
    .restart local v5       #interfaceId:I
    :catch_1
    move-exception v22

    move/from16 v28, v29

    .end local v29           #ival:I
    .restart local v28       #ival:I
    goto :goto_3

    .end local v24           #eval:I
    .restart local v6       #interfaceClass:I
    .restart local v7       #interfaceSubclass:I
    .restart local v8       #interfaceProtocol:I
    .restart local v9       #endpoints:[Landroid/os/Parcelable;
    .restart local v23       #endp:I
    .restart local v25       #eval:I
    .restart local v31       #numEndpoints:I
    :catch_2
    move-exception v22

    move/from16 v24, v25

    .end local v25           #eval:I
    .restart local v24       #eval:I
    goto :goto_3
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 174
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 177
    :cond_0
    monitor-exit v2

    .line 178
    return-void

    .line 177
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_0
    const-string v2, "  USB Host State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4
    .parameter "devices"

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "deviceName"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 209
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 189
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 190
    monitor-exit v2

    .line 191
    return-void

    .line 190
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
