.class Lcom/htc/painting/penmenu/PenMenu$7;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
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
    .line 839
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$7;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$7;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1300(Lcom/htc/painting/penmenu/PenMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$7$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu/PenMenu$7$1;-><init>(Lcom/htc/painting/penmenu/PenMenu$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 858
    return-void
.end method
