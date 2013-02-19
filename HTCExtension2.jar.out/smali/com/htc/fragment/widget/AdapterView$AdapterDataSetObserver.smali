.class Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/fragment/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/AdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 940
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/fragment/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1000
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/fragment/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1001
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 950
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/fragment/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 951
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget v1, v1, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/fragment/widget/AdapterView;->mOldItemCount:I

    .line 952
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 956
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget v0, v0, Lcom/htc/fragment/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget v0, v0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/fragment/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AdapterView;->access$000(Lcom/htc/fragment/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->checkFocus()V

    .line 964
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->requestLayout()V

    .line 965
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;,"Lcom/htc/fragment/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 973
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 975
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    #calls: Lcom/htc/fragment/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/fragment/widget/AdapterView;->access$100(Lcom/htc/fragment/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iget v1, v1, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/fragment/widget/AdapterView;->mOldItemCount:I

    .line 983
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput v3, v0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 984
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput v2, v0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 985
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput-wide v4, v0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 986
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput v2, v0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 987
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput-wide v4, v0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 988
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    iput-boolean v3, v0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 989
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->checkSelectionChanged()V

    .line 991
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->checkFocus()V

    .line 992
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/fragment/widget/AdapterView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AdapterView;->requestLayout()V

    .line 993
    return-void
.end method
