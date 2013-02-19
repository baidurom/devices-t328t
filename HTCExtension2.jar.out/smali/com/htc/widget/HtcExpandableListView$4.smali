.class Lcom/htc/widget/HtcExpandableListView$4;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$4;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$4;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$800(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2677
    return-void
.end method
