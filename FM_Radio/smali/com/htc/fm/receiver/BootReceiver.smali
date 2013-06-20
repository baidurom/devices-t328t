.class public Lcom/htc/fm/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 17
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+onReceiver() intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    invoke-direct {v1, p1}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, tPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    invoke-virtual {v1, v5}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->save(Z)V

    .line 21
    const-string v2, "BootReceiver"

    const-string v3, "  onReceiver() power off."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-direct {v0, p1}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, tAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;
    invoke-virtual {v0, v5}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->setMute(Z)V

    .line 25
    const-string v2, "BootReceiver"

    const-string v3, "  onReceiver() audio is not mute."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-onReceiver() intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
