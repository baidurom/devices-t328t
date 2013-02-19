.class Lcom/htc/painting/penmenu15/RoundPenMenu$2;
.super Landroid/content/BroadcastReceiver;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$2;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2022
    const-string v0, "PenMenuNew"

    const-string v1, "Received Pen Service intent"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$2;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    return-void
.end method
