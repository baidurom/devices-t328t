.class public interface abstract Landroid/media/HtcIfAudioManager;
.super Ljava/lang/Object;
.source "HtcIfAudioManager.java"


# static fields
.field public static final EXTRA_BEATSEFFECT_STATUS:Ljava/lang/String; = "android.media.EXTRA_BEATSEFFECT_STATUS"

.field public static final EXTRA_CALLER_NAME:Ljava/lang/String; = "android.media.EXTRA_CALLER_NAME"

.field public static final EXTRA_EFFECT_ID:Ljava/lang/String; = "android.media.EXTRA_EFFECT_ID"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final GLOBAL_BEATSEFFECT_CHANGE:Ljava/lang/String; = "android.media.GLOBAL_BEATSEFFECT_CHANGE"

.field public static final GLOBAL_SOUNDEFFECT_BASSBOOSTER:I = 0x321

.field public static final GLOBAL_SOUNDEFFECT_BEATS:I = 0x384

.field public static final GLOBAL_SOUNDEFFECT_BLUES:I = 0x32a

.field public static final GLOBAL_SOUNDEFFECT_CLASSICAL:I = 0x32b

.field public static final GLOBAL_SOUNDEFFECT_COUNTRY:I = 0x32c

.field public static final GLOBAL_SOUNDEFFECT_DANCE:I = 0x326

.field public static final GLOBAL_SOUNDEFFECT_ERROR:I = -0x64

.field public static final GLOBAL_SOUNDEFFECT_JAZZ:I = 0x32d

.field public static final GLOBAL_SOUNDEFFECT_LATIN:I = 0x32e

.field public static final GLOBAL_SOUNDEFFECT_LIVE:I = 0x325

.field public static final GLOBAL_SOUNDEFFECT_LOUDNESS:I = 0x324

.field public static final GLOBAL_SOUNDEFFECT_MIDBOOSTER:I = 0x322

.field public static final GLOBAL_SOUNDEFFECT_NEWAGE:I = 0x32f

.field public static final GLOBAL_SOUNDEFFECT_NONE:I = 0x320

.field public static final GLOBAL_SOUNDEFFECT_PIANO:I = 0x330

.field public static final GLOBAL_SOUNDEFFECT_POP:I = 0x331

.field public static final GLOBAL_SOUNDEFFECT_RNB:I = 0x332

.field public static final GLOBAL_SOUNDEFFECT_ROCK:I = 0x333

.field public static final GLOBAL_SOUNDEFFECT_SRS:I = 0x2

.field public static final GLOBAL_SOUNDEFFECT_SWEETENER:I = 0x328

.field public static final GLOBAL_SOUNDEFFECT_TREBLEBOOSTER:I = 0x323

.field public static final GLOBAL_SOUNDEFFECT_VOCALBOOSTER:I = 0x329

.field public static final GLOBAL_SOUNDEFFECT_WARMTH:I = 0x327

.field public static final HEADSET_ERROR:I = -0x3e9

.field public static final OTHER_HEADSET:I = 0x3f2

.field public static final PRO_BEATS_HEADSET:I = 0x3eb

.field public static final SOLO_BEATS_HEADSET:I = 0x3e9

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STUDIO_BEATS_HEADSET:I = 0x3ea

.field public static final UR_BEATS_HEADSET:I = 0x3e8

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final isSupportBeats:Z = true


# virtual methods
.method public abstract getBeatsHeadset()I
.end method

.method public abstract getBeatsState()Z
.end method

.method public abstract getGlobalEffect()I
.end method

.method public abstract getHeadsetProfile()[I
.end method

.method public abstract getLastAudibleStreamVolume(I)I
.end method

.method public abstract getSpeakerProfile()[I
.end method

.method public abstract isBTConnected()Z
.end method

.method public abstract isBeatsHeadset()Z
.end method

.method public abstract isBeatsHeadsetBT()Z
.end method

.method public abstract isHeadsetPlugged()Z
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract queryGlobalEffectList()[I
.end method

.method public abstract registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
.end method

.method public abstract setBeatsHeadset(I)V
.end method

.method public abstract setBeatsState(ZLjava/lang/String;)V
.end method

.method public abstract setCSCallVolumeOn(Z)V
.end method

.method public abstract setGlobalEffect(ILjava/lang/String;)V
.end method

.method public abstract setHeadsetProfile([I)V
.end method

.method public abstract setIgnoreNotificationMuteSetting(Z)I
.end method

.method public abstract setSpeakerProfile([I)V
.end method

.method public abstract setVolumePanelOrientation(I)V
.end method

.method public abstract unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
.end method
