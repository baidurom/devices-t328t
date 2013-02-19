.class Lcom/htc/painting/penmenu15/view/ActionPanel$1;
.super Ljava/lang/Object;
.source "ActionPanel.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/ActionPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/ActionPanel;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/ActionPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/ActionPanel;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/ActionPanel;

    #getter for: Lcom/htc/painting/penmenu15/view/ActionPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->access$000(Lcom/htc/painting/penmenu15/view/ActionPanel;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/painting/penmenu15/view/ActionPanel;->inflateInternal(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->access$100(Lcom/htc/painting/penmenu15/view/ActionPanel;Landroid/content/Context;)V

    .line 631
    const/4 v0, 0x0

    return v0
.end method
