.class Lcom/htc/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/htc/widget/AdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 773
    .local p0, this:Lcom/htc/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 821
    .local p0, this:Lcom/htc/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 822
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 779
    .local p0, this:Lcom/htc/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 780
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget v1, v1, Lcom/htc/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/AdapterView;->mOldItemCount:I

    .line 781
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v1}, Lcom/htc/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 785
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget v0, v0, Lcom/htc/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget v0, v0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/widget/AdapterView;->access$000(Lcom/htc/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 792
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->checkFocus()V

    .line 793
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->requestLayout()V

    .line 794
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 798
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 800
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    #calls: Lcom/htc/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/widget/AdapterView;->access$100(Lcom/htc/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iget v1, v1, Lcom/htc/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/AdapterView;->mOldItemCount:I

    .line 808
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput v3, v0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput v2, v0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    .line 810
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput-wide v4, v0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    .line 811
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput v2, v0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    .line 812
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput-wide v4, v0, Lcom/htc/widget/AdapterView;->mNextSelectedRowId:J

    .line 813
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    iput-boolean v3, v0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 814
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->checkSelectionChanged()V

    .line 816
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->checkFocus()V

    .line 817
    iget-object v0, p0, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/AdapterView;->requestLayout()V

    .line 818
    return-void
.end method
