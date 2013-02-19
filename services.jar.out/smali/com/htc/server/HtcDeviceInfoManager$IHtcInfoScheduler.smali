.class interface abstract Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IHtcInfoScheduler"
.end annotation


# static fields
.field public static final ADD_ANR:I = 0x6

.field public static final ADD_CRASH:I = 0x5

.field public static final ADD_KERNEL_CRASH:I = 0x14

.field public static final ADD_RADIO_CRASH:I = 0x15

.field public static final ADD_SYSTEM_CRASH:I = 0x13

.field public static final APP_DIED:I = 0x10

.field public static final FLUSH:I = 0x0

.field public static final FLUSH_CLIENT_INFO:I = 0x2

.field public static final FLUSH_USAGE_TIME:I = 0x1

.field public static final KILL_ALL_PROC:I = 0x9

.field public static final KILL_PROC:I = 0x8

.field public static final LOGHWINFOTIME:I = 0x18

.field public static final LOGINSTALLEDAPP:I = 0x16

.field public static final LOGLOCATIONINFO:I = 0x19

.field public static final LOGSWINFOTIME:I = 0x17

.field public static final RESET:I = 0xa

.field public static final SCREEN_OFF:I = 0xe

.field public static final SCREEN_ON:I = 0xd

.field public static final SENTINEL:I = 0xc

.field public static final SET_TOP:I = 0x4

.field public static final START_PHONE_CALL:I = 0x11

.field public static final START_PROC:I = 0x7

.field public static final STOP:I = 0xb

.field public static final STOP_PHONE_CALL:I = 0x12

.field public static final UPDATE:I = 0x3

.field public static final USER_ACTIVITY:I = 0xf


# virtual methods
.method public abstract addANR(Ljava/lang/String;)V
.end method

.method public abstract addCrash(Ljava/lang/String;)V
.end method

.method public abstract addSysCrash()V
.end method

.method public abstract appDied(I)V
.end method

.method public abstract flush()V
.end method

.method public abstract killAllProcess()V
.end method

.method public abstract killProcess(Ljava/lang/String;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setNewTopApp(Ljava/lang/String;)V
.end method

.method public abstract setup(Landroid/content/Context;)V
.end method

.method public abstract startProcess(Ljava/lang/String;II)V
.end method

.method public abstract stop()V
.end method

.method public abstract synchronizedFlush()V
.end method

.method public abstract update(Ljava/lang/String;)V
.end method

.method public abstract userActivity(J)V
.end method
