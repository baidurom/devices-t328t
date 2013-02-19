.class Lcom/htc/painting/penmenu/PenMenu$7$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu$7;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/painting/penmenu/PenMenu$7;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu$7;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$7$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "PenMenu"

    const-string v1, "mPenTypeLoadingListener runnable - onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$7$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$7;

    iget-object v0, v0, Lcom/htc/painting/penmenu/PenMenu$7;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$7$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$7;

    iget-object v0, v0, Lcom/htc/painting/penmenu/PenMenu$7;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->saveSetting()V

    .line 853
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$7$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$7;

    iget-object v0, v0, Lcom/htc/painting/penmenu/PenMenu$7;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->restoreSetting()V

    .line 855
    :cond_0
    return-void
.end method
