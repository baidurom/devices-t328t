.class Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;
.super Landroid/os/Handler;
.source "HtcAdapterView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAdapterView2;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAdapterView2;)V
    .locals 0
    .parameter

    .prologue
    .line 1146
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView2<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAdapterView2;Lcom/htc/widget/HtcAdapterView2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1146
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView2<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1152
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView2<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1160
    :goto_0
    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView2;

    #calls: Lcom/htc/widget/HtcAdapterView2;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/widget/HtcAdapterView2;->access$200(Lcom/htc/widget/HtcAdapterView2;)V

    goto :goto_0
.end method
