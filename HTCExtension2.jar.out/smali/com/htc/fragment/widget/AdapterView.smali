.class public abstract Lcom/htc/fragment/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/AdapterView$1;,
        Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;,
        Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;,
        Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;,
        Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
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
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fragment/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificLeft:I

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J

.field mSyncWidth:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 72
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 94
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 209
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 214
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 233
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 94
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 209
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 214
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 233
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 94
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 209
    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 214
    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 233
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/fragment/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1044
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1048
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 1049
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1050
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1053
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/fragment/widget/AdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 857
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const/4 p1, 0x0

    .line 861
    :cond_0
    if-eqz p1, :cond_3

    .line 862
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AdapterView;->setVisibility(I)V

    .line 873
    :goto_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 874
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mTop:I

    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mRight:I

    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView;->onLayout(ZIIII)V

    .line 880
    :cond_1
    :goto_1
    return-void

    .line 867
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 877
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 878
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 505
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
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
    .line 522
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
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
    .line 558
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
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
    .line 539
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1096
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

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
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 838
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 839
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 840
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 844
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 845
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 846
    iget-object v3, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 847
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/fragment/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 849
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 839
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 840
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 844
    goto :goto_2

    :cond_8
    move v3, v5

    .line 845
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1163
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1164
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->selectionChanged()V

    .line 1165
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 1166
    iget-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 1168
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1063
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 1068
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1069
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 1075
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1076
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1079
    :cond_1
    if-nez v0, :cond_3

    .line 1080
    if-eqz v1, :cond_2

    .line 1081
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1083
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1084
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1087
    :cond_3
    return v0
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
    .line 937
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 938
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
    .line 925
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 926
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1179
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 1181
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1182
    const/4 v14, -0x1

    .line 1254
    :cond_0
    :goto_0
    return v14

    .line 1185
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 1186
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 1189
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1190
    const/4 v14, -0x1

    goto :goto_0

    .line 1194
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1195
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1202
    .local v3, endTime:J
    move v5, v14

    .line 1205
    .local v5, first:I
    move v10, v14

    .line 1208
    .local v10, last:I
    const/4 v11, 0x0

    .line 1218
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1219
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1220
    const/4 v14, -0x1

    goto :goto_0

    .line 1238
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1240
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1241
    move v14, v10

    .line 1243
    const/4 v11, 0x0

    .line 1223
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1224
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1225
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1230
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1231
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1233
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1254
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1230
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1231
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1244
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1246
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1247
    move v14, v5

    .line 1249
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
    .line 687
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 790
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 738
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 893
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 894
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
    .line 902
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 903
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
    .line 752
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 292
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 367
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 419
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 704
    move-object v3, p1

    .line 707
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

    .line 708
    move-object v3, v4

    goto :goto_0

    .line 710
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 724
    :cond_0
    :goto_1
    return v5

    .line 716
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 717
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 718
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 719
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 717
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 667
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 668
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 669
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 670
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 672
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
    .line 645
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 632
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1100
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 1101
    .local v0, count:I
    const/4 v1, 0x0

    .line 1103
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 1108
    iget-boolean v4, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1111
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 1115
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 1116
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 1118
    invoke-virtual {p0, v2, v7}, Lcom/htc/fragment/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1119
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 1121
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1122
    const/4 v1, 0x1

    .line 1126
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 1128
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1131
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 1132
    add-int/lit8 v2, v0, -0x1

    .line 1134
    :cond_1
    if-gez v2, :cond_2

    .line 1135
    const/4 v2, 0x0

    .line 1139
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/htc/fragment/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1140
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1142
    invoke-virtual {p0, v2, v5}, Lcom/htc/fragment/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1144
    :cond_3
    if-ltz v3, :cond_4

    .line 1145
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1146
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->checkSelectionChanged()V

    .line 1147
    const/4 v1, 0x1

    .line 1151
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1153
    iput v6, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 1154
    iput-wide v8, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 1155
    iput v6, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 1156
    iput-wide v8, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 1157
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 1158
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->checkSelectionChanged()V

    .line 1160
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 800
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1266
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 616
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mLayoutHeight:I

    .line 617
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mLayoutWidth:I

    .line 618
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AdapterView;->playSoundEffect(I)V

    .line 311
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V

    .line 312
    const/4 v0, 0x1

    .line 315
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1298
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1299
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 1302
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncHeight:J

    .line 1303
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mLayoutWidth:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncWidth:J

    .line 1305
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1307
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1308
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 1309
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 1312
    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSpecificTop:I

    .line 1315
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSpecificLeft:I

    .line 1318
    :cond_0
    iput v4, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncMode:I

    .line 1340
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1321
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1322
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1323
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1324
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 1328
    :goto_1
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 1331
    if-eqz v1, :cond_3

    .line 1333
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSpecificTop:I

    .line 1334
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSpecificLeft:I

    .line 1337
    :cond_3
    iput v5, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1326
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 605
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 575
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 591
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 1022
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1023
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectionNotifier:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 1029
    new-instance v0, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;-><init>(Lcom/htc/fragment/widget/AdapterView;Lcom/htc/fragment/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectionNotifier:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectionNotifier:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectionNotifier:Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1038
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1039
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 1041
    :cond_3
    return-void

    .line 1033
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/AdapterView;->fireOnSelected()V

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

    .prologue
    .line 771
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 773
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 774
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 775
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 776
    return-void

    .line 774
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 810
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 812
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableState:Z

    .line 813
    if-nez p1, :cond_1

    .line 814
    iput-boolean v2, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 817
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 818
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 810
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 817
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 826
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 827
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 829
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 830
    if-eqz p1, :cond_1

    .line 831
    iput-boolean v3, p0, Lcom/htc/fragment/widget/AdapterView;->mDesiredFocusableState:Z

    .line 834
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 835
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 827
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 834
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1284
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    .line 1285
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    .line 1287
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1288
    iput p1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 1289
    iget-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 1291
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 912
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 280
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;

    .line 281
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 352
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AdapterView;->setLongClickable(Z)V

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    .line 356
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 411
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemSelectedListener:Lcom/htc/fragment/widget/AdapterView$OnItemSelectedListener;

    .line 412
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1274
    .local p0, this:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 1275
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    .line 1276
    return-void
.end method

.method public abstract setSelection(I)V
.end method
