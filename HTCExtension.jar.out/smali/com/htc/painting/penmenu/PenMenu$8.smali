.class Lcom/htc/painting/penmenu/PenMenu$8;
.super Landroid/content/BroadcastReceiver;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 917
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 919
    if-eqz p2, :cond_0

    .line 920
    const-string v1, "SIP_VISIBLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 925
    .local v0, IME_Visible:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const-string v2, "key_ime_show"

    #calls: Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1400(Lcom/htc/painting/penmenu/PenMenu;Ljava/lang/String;Z)V

    .line 927
    .end local v0           #IME_Visible:Z
    :cond_0
    return-void
.end method
