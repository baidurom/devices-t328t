.class Lcom/htc/widget/HtcAbsListView$2;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4897
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4899
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 4900
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-boolean v2, v1, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 4901
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/htc/widget/HtcAbsListView;->access$3100(Lcom/htc/widget/HtcAbsListView;Z)V

    .line 4902
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$3200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4903
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/htc/widget/HtcAbsListView;->access$3300(Lcom/htc/widget/HtcAbsListView;Z)V

    .line 4905
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4906
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4909
    :cond_1
    return-void
.end method
