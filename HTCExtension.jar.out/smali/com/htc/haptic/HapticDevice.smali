.class public Lcom/htc/haptic/HapticDevice;
.super Ljava/lang/Object;
.source "HapticDevice.java"


# static fields
.field public static final PRIORITY_ALARM:I = 0xd

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_EFFECT:I = 0x1

.field public static final PRIORITY_FEEDBACK:I = 0x2

.field public static final PRIORITY_NORMAL_MAX:I = 0xf

.field public static final PRIORITY_NORMAL_MIN:I = 0x0

.field public static final PRIORITY_OEM_MAX:I = 0xf

.field public static final PRIORITY_RINGTONE:I = 0xe

.field public static final STATE_ATTACHED:I = 0x1

.field public static final STATE_BUSY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHapticDevice(Landroid/content/Context;)Lcom/htc/haptic/HapticDevice;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createOemHapticDevice(Landroid/content/Context;)Lcom/htc/haptic/HapticDevice;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceCount()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .parameter "deviceIndex"

    .prologue
    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public static isHapticSupported()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0

    .prologue
    .line 119
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public createHapticEffectPlayer(Lcom/htc/haptic/HapticEffectProcessor;)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "effectProcessor"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHapticEffectPlayer(Ljava/lang/String;)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHapticEffectPlayer([B)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "ivtRawData"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    return-void
.end method

.method public getCapabilityBool(II)Z
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilityInt32(II)I
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method public getCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public getPropertyBool(I)Z
    .locals 1
    .parameter "nDevPropType"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getPropertyInt32(I)I
    .locals 1
    .parameter "nDevPropType"

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 1
    .parameter "nDevPropType"

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOemPriority()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public playEffect(Lcom/htc/haptic/HapticEffectProcessor;)V
    .locals 0
    .parameter "processor"

    .prologue
    .line 102
    return-void
.end method

.method public playEffect(Lcom/htc/haptic/HapticEffectProcessor;I)V
    .locals 0
    .parameter "processor"
    .parameter "effectIndex"

    .prologue
    .line 105
    return-void
.end method

.method public playEffect([B)V
    .locals 0
    .parameter "ivtRawData"

    .prologue
    .line 96
    return-void
.end method

.method public playEffect([BI)V
    .locals 0
    .parameter "ivtRawData"
    .parameter "effectIndex"

    .prologue
    .line 99
    return-void
.end method

.method public setPriority(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(II)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(ILjava/lang/String;)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(IZ)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public stopAllPlayingEffects()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
