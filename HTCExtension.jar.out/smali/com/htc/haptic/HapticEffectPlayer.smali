.class public interface abstract Lcom/htc/haptic/HapticEffectPlayer;
.super Ljava/lang/Object;
.source "HapticEffectPlayer.java"

# interfaces
.implements Lcom/htc/haptic/SingleHapticEffectPlayer;
.implements Lcom/htc/haptic/MutilHapticEffectPlayer;


# static fields
.field public static final REPEAT_INFINITE:B = -0x1t

.field public static final STATE_NOTPLAYING:I = -0x1

.field public static final STATE_PAUSED:I = -0x1

.field public static final STATE_PLAYING:I = -0x1

.field public static final STATE_UNKOWNN:I = -0x1


# virtual methods
.method public abstract getEffectProcessor()Lcom/htc/haptic/HapticEffectProcessor;
.end method

.method public abstract stopAll()V
.end method
