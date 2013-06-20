.class public Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonsReceiver.java"


# static fields
.field private static final OWNER_NAME:Ljava/lang/String; = "htcfm"

.field private static final OWNER_SETTING:Ljava/lang/String; = "headsetowner"

.field private static final TAG:Ljava/lang/String; = "MediaButtonsReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getCurrentHeadsetOwner(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyEvent(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    const-string v1, "MediaButtonsReceiver"

    const-string v2, "+getKeyEvent()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, event:Landroid/view/KeyEvent;
    invoke-static {p1}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->isMediaButtonsOwn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #event:Landroid/view/KeyEvent;
    check-cast v0, Landroid/view/KeyEvent;

    .line 50
    .restart local v0       #event:Landroid/view/KeyEvent;
    :cond_0
    const-string v1, "MediaButtonsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-getKeyEvent() event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method private static isMediaButtonsOwn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    const-string v0, "htcfm"

    invoke-static {p0}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->getCurrentHeadsetOwner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static registerMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 3
    .parameter "context"
    .parameter "audioManager"

    .prologue
    .line 22
    const-string v0, "MediaButtonsReceiver"

    const-string v1, "+registerMediaButtonReceiver()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 24
    const-string v0, "MediaButtonsReceiver"

    const-string v1, "now registerMediaButtonReceiver()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, "htcfm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    const-string v0, "MediaButtonsReceiver"

    const-string v1, "-registerMediaButtonReceiver()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static unregisterMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 3
    .parameter "context"
    .parameter "audioManager"

    .prologue
    .line 30
    const-string v0, "MediaButtonsReceiver"

    const-string v1, "+unregisterMediaButtonReceiver()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    const-string v0, "MediaButtonsReceiver"

    const-string v1, "-unregisterMediaButtonReceiver()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "+onReceive()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->getKeyEvent(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 58
    .local v0, event:Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 59
    .local v1, tIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "-onReceive()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "  KeyEvent.KEYCODE_MEDIA_NEXT"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSeekUpIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    const-string v2, "com.htc.fm.uihelper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "  KeyEvent.KEYCODE_MEDIA_PREVIOUS"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSeekDownIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    const-string v2, "com.htc.fm.uihelper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "  KeyEvent.KEYCODE_HEADSETHOOK"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSwitchTurnIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    const-string v2, "com.htc.fm.uihelper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v2, "MediaButtonsReceiver"

    const-string v3, "  KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSwitchTurnIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    const-string v2, "com.htc.fm.uihelper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 62
    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_1
    .end sparse-switch
.end method
