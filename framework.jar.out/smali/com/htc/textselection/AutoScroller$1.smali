.class Lcom/htc/textselection/AutoScroller$1;
.super Landroid/os/Handler;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/AutoScroller;


# direct methods
.method constructor <init>(Lcom/htc/textselection/AutoScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/textselection/AutoScroller$1;->this$0:Lcom/htc/textselection/AutoScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/textselection/AutoScroller$1;->this$0:Lcom/htc/textselection/AutoScroller;

    #calls: Lcom/htc/textselection/AutoScroller;->doAutoScroll(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/htc/textselection/AutoScroller;->access$000(Lcom/htc/textselection/AutoScroller;Landroid/os/Message;)V

    .line 41
    :cond_0
    return-void
.end method
