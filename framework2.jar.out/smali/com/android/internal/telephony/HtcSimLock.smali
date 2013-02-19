.class public Lcom/android/internal/telephony/HtcSimLock;
.super Ljava/lang/Object;
.source "HtcSimLock.java"


# static fields
.field public static final NETWORK_LOCK_NETWORK:I = 0x1

.field public static final NETWORK_LOCK_NETWORK_SUBSET:I = 0x2

.field public static final NETWORK_LOCK_SERVICE_CORPORATE:I = 0x8

.field public static final NETWORK_LOCK_SERVICE_IMSI:I = 0x10

.field public static final NETWORK_LOCK_SERVICE_PROVIDER:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    :try_start_0
    const-string v1, "htcsimlock-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 25
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "android_simlock"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getSubsidyLock()I
.end method

.method public static native setSubsidyLock(ILjava/lang/String;)I
.end method
