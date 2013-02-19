.class Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;,"Lcom/htc/fragment/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/AdapterView;Lcom/htc/fragment/widget/AdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1004
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;,"Lcom/htc/fragment/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;-><init>(Lcom/htc/fragment/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1010
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;,"Lcom/htc/fragment/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/fragment/widget/AdapterView;

    #calls: Lcom/htc/fragment/widget/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AdapterView;->access$200(Lcom/htc/fragment/widget/AdapterView;)V

    goto :goto_0
.end method
