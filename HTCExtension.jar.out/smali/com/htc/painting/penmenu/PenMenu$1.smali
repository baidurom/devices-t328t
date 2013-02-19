.class Lcom/htc/painting/penmenu/PenMenu$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 278
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$1;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$1;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    .line 282
    return-void
.end method
