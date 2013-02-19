.class public abstract Lcom/htc/widget/HtcAdapterView;
.super Landroid/view/ViewGroup;
.source "HtcAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAdapterView$1;,
        Lcom/htc/widget/HtcAdapterView$ListStyle;,
        Lcom/htc/widget/HtcAdapterView$SelectionNotifier;,
        Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;,
        Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;,
        Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;,
        Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mMoreExpandFlag:Z

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 68
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 85
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 95
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 127
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 159
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 170
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 202
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 207
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 226
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1201
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mMoreExpandFlag:Z

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 85
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 95
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 127
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 159
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 170
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 202
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 207
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 226
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1201
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mMoreExpandFlag:Z

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 85
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 95
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 127
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 159
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 170
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 202
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 207
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 226
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1201
    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mMoreExpandFlag:Z

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 885
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 889
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 891
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 894
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 947
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 948
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    .line 949
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 950
    .local v1, itemCount:I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 953
    .end local v1           #itemCount:I
    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 p1, 0x0

    .line 725
    :cond_0
    if-eqz p1, :cond_3

    .line 726
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    .line 737
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 738
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 744
    :cond_1
    :goto_1
    return-void

    .line 731
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 448
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 461
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 489
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 474
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 958
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 703
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 704
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 708
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 709
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 710
    iget-object v3, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 711
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    .line 713
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 703
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 704
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 708
    goto :goto_2

    :cond_8
    move v3, v5

    .line 709
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1025
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->selectionChanged()V

    .line 1027
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1028
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 1030
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 900
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 901
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const/4 v1, 0x1

    .line 905
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 782
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 774
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1041
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1043
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1044
    const/4 v14, -0x1

    .line 1116
    :cond_0
    :goto_0
    return v14

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1048
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1051
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1052
    const/4 v14, -0x1

    goto :goto_0

    .line 1056
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1057
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1064
    .local v3, endTime:J
    move v5, v14

    .line 1067
    .local v5, first:I
    move v10, v14

    .line 1070
    .local v10, last:I
    const/4 v11, 0x0

    .line 1080
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1081
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1082
    const/4 v14, -0x1

    goto :goto_0

    .line 1100
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1102
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1103
    move v14, v10

    .line 1105
    const/4 v11, 0x0

    .line 1085
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1086
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1087
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1092
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1093
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1095
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1116
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1092
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1093
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1106
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1108
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1109
    move v14, v5

    .line 1111
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 578
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 662
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 621
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 753
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 754
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 758
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 759
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 631
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 277
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 343
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 389
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 591
    move-object v3, p1

    .line 594
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 595
    move-object v3, v4

    goto :goto_0

    .line 597
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 611
    :cond_0
    :goto_1
    return v5

    .line 603
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v0

    .line 604
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 605
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 604
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 562
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 563
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 564
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 565
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 567
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 548
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 539
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 962
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 963
    .local v0, count:I
    const/4 v1, 0x0

    .line 965
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 970
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 973
    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 977
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->findSyncPosition()I

    move-result v2

    .line 978
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 980
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 981
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 983
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    .line 984
    const/4 v1, 0x1

    .line 988
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 990
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 993
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 994
    add-int/lit8 v2, v0, -0x1

    .line 996
    :cond_1
    if-gez v2, :cond_2

    .line 997
    const/4 v2, 0x0

    .line 1001
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1002
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1004
    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1006
    :cond_3
    if-ltz v3, :cond_4

    .line 1007
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    .line 1008
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    .line 1009
    const/4 v1, 0x1

    .line 1013
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1015
    iput v6, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1016
    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 1017
    iput v6, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1018
    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 1019
    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1020
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    .line 1022
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 672
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1128
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 843
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 844
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 934
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 935
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 936
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 937
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 941
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 942
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 943
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 944
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 924
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 925
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 926
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 927
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 930
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 529
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    .line 530
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 910
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 913
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 915
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 916
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 917
    const/4 v1, 0x1

    .line 919
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->playSoundEffect(I)V

    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 299
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1161
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1162
    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1163
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    .line 1164
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1166
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1167
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1168
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1169
    if-eqz v1, :cond_0

    .line 1170
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1172
    :cond_0
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1189
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1175
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1176
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1177
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1178
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1182
    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1183
    if-eqz v1, :cond_3

    .line 1184
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1186
    :cond_3
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1180
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 524
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 502
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 514
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 863
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 864
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 870
    new-instance v0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView;Lcom/htc/widget/HtcAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 879
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 880
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->sendAccessibilityEvent(I)V

    .line 882
    :cond_3
    return-void

    .line 874
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 647
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    .line 649
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 650
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 651
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    .line 652
    return-void

    .line 650
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 678
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 680
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    .line 681
    if-nez p1, :cond_1

    .line 682
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 685
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 686
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 678
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 685
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 690
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 691
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 693
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 694
    if-eqz p1, :cond_1

    .line 695
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    .line 698
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 699
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 691
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 698
    goto :goto_1
.end method

.method public setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    .locals 0
    .parameter "style"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1199
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    return-void
.end method

.method setMoreExpandFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1203
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mMoreExpandFlag:Z

    .line 1204
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1146
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1147
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 1149
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1150
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1151
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1153
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 764
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 269
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 270
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 332
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->setLongClickable(Z)V

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 336
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 385
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 386
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1136
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1137
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 1138
    return-void
.end method

.method public abstract setSelection(I)V
.end method
