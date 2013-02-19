.class Lcom/htc/painting/penmenu/PenManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenManager;->initPenTypes(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenManager;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenManager$1;->this$0:Lcom/htc/painting/penmenu/PenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager$1;->this$0:Lcom/htc/painting/penmenu/PenManager;

    #calls: Lcom/htc/painting/penmenu/PenManager;->refreshPenTypes(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/htc/painting/penmenu/PenManager;->access$200(Lcom/htc/painting/penmenu/PenManager;Landroid/content/Context;)V

    .line 317
    return-void
.end method
