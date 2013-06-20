.class public Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetReceiver"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;)V
    .locals 0
    .parameter "audioManager"
    .parameter "onHeadsetModeListener"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    iput-object p2, p0, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;->mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

    .line 25
    return-void
.end method

.method public static getHeadsetIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const-string v2, "HeadsetReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;->mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;->mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;->onHeadsetModeChanged(Z)V

    .line 33
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 31
    goto :goto_0
.end method
