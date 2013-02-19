.class Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/widget/HtcAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 784
    .local p0, this:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 837
    .local p0, this:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 838
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 790
    .local p0, this:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 791
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 792
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 797
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mMoreExpandFlag:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v1, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAdapterView;->access$000(Lcom/htc/widget/HtcAdapterView;Landroid/os/Parcelable;)V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->checkFocus()V

    .line 810
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 811
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 815
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 817
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    #calls: Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/widget/HtcAdapterView;->access$100(Lcom/htc/widget/HtcAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 825
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v3, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 826
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 827
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v4, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 828
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 829
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v4, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 830
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-boolean v3, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 832
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->checkFocus()V

    .line 833
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 834
    return-void
.end method
