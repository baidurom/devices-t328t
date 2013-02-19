.class Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
.super Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;
.source "RoundPenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 1
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->mClickTarget:Landroid/view/View;

    .line 946
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 950
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
