.class public Lcom/htc/wrap/android/media/HtcWrapRingtoneManager;
.super Landroid/media/RingtoneManager;
.source "HtcWrapRingtoneManager.java"


# static fields
.field public static final ACTION_HTC_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "mode"

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 1
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"
    .parameter "mode"

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 34
    return-void
.end method
