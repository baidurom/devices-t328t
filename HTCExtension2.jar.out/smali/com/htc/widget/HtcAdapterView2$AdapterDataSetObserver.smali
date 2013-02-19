.class Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcAdapterView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field protected mDataSetListener:Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;

.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/widget/HtcAdapterView2;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAdapterView2;)V
    .locals 1
    .parameter

    .prologue
    .line 1055
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView2<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1142
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView2<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1143
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 1080
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView2<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1081
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    .line 1082
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1086
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAdapterView2;->access$000(Lcom/htc/widget/HtcAdapterView2;Landroid/os/Parcelable;)V

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1093
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->checkFocus()V

    .line 1094
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->requestLayout()V

    .line 1097
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;->onOnDataSetChange()V

    .line 1101
    :cond_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView2<TT;>.AdapterDataSetObserver;"
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000

    .line 1109
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1111
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    #calls: Lcom/htc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/widget/HtcAdapterView2;->access$100(Lcom/htc/widget/HtcAdapterView2;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    .line 1119
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput v5, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1120
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput v4, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 1121
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 1122
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput v4, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 1123
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 1126
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 1127
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 1130
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    iput-boolean v5, v0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1131
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->checkSelectionChanged()V

    .line 1133
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->checkFocus()V

    .line 1134
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView2;->requestLayout()V

    .line 1135
    return-void
.end method

.method public setDataSetListener(Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;)V
    .locals 0
    .parameter "dataSetListener"

    .prologue
    .line 1070
    .local p0, this:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,"Lcom/htc/widget/HtcAdapterView2<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;

    .line 1071
    return-void
.end method
