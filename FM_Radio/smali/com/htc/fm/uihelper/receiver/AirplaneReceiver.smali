.class public Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneReceiver.java"


# static fields
.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "AirplaneReceiver"


# instance fields
.field private final mModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;


# direct methods
.method public constructor <init>(Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;)V
    .locals 0
    .parameter "modeListener"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;->mModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

    .line 24
    return-void
.end method

.method public static getAirplaneModeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v0, "AirplaneReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;->mModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;->mModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;->onAirplaneModeChanged(Z)V

    .line 32
    :cond_0
    return-void
.end method
