.class Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/painting/penmenu15/RoundPenMenu$2;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu$2;)V
    .locals 0
    .parameter

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;->this$1:Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;->this$1:Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    iget-object v0, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$2;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$2$1;->this$1:Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    iget-object v1, v1, Lcom/htc/painting/penmenu15/RoundPenMenu$2;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I
    invoke-static {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2300(Lcom/htc/painting/penmenu15/RoundPenMenu;)I

    move-result v1

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->loadPenSet(I)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    .line 2029
    return-void
.end method
