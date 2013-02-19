.class Lcom/htc/painting/penmenu15/view/OptionPanel$1;
.super Ljava/lang/Object;
.source "OptionPanel.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/OptionPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/OptionPanel;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/OptionPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/OptionPanel;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel$1;->this$0:Lcom/htc/painting/penmenu15/view/OptionPanel;

    #getter for: Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->access$000(Lcom/htc/painting/penmenu15/view/OptionPanel;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/painting/penmenu15/view/OptionPanel;->inflateInternal(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->access$100(Lcom/htc/painting/penmenu15/view/OptionPanel;Landroid/content/Context;)V

    .line 823
    const/4 v0, 0x0

    return v0
.end method
