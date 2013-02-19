.class public abstract Lcom/htc/view/table/AbstractAdapterView;
.super Landroid/view/ViewGroup;
.source "AbstractAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/table/AbstractAdapterView$1;,
        Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;,
        Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;,
        Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;,
        Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;,
        Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;,
        Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;
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
.field public static INVALID_POSITION:I = 0x0

.field public static INVALID_ROW_ID:J = 0x0L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field protected static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field protected static final SYNC_SELECTED_POSITION:I


# instance fields
.field protected mBlockLayoutRequests:Z

.field protected mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field mEmptyView:Landroid/view/View;

.field protected mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mInLayout:Z

.field protected mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field protected mNeedSync:Z

.field protected mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mNextSelectedRowId:J

.field protected mOldItemCount:I

.field protected mOldSelectedPosition:I

.field protected mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;

.field protected mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

.field protected mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/view/table/AbstractAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field protected mSpecificTop:I

.field protected mSyncHeight:J

.field protected mSyncMode:I

.field protected mSyncPosition:I

.field protected mSyncRowId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, -0x1

    sput v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    .line 257
    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 301
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 52
    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 81
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    .line 185
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 195
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 204
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 214
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 266
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    .line 275
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    .line 298
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 81
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    .line 185
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 195
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 204
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 214
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 266
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    .line 275
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    .line 298
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 81
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 99
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    .line 185
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 195
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 204
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 214
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 266
    sget v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    .line 275
    sget-wide v0, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    .line 298
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/htc/view/table/AbstractAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/view/table/AbstractAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/view/table/AbstractAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/view/table/AbstractAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1101
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1105
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1107
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1110
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/view/table/AbstractAdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 p1, 0x0

    .line 923
    :cond_0
    if-eqz p1, :cond_3

    .line 924
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractAdapterView;->setVisibility(I)V

    .line 935
    :goto_0
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 936
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView;->onLayout(ZIIII)V

    .line 942
    :cond_1
    :goto_1
    return-void

    .line 929
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 939
    :cond_3
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 568
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
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
    .line 585
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
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
    .line 621
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
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
    .line 602
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockLayoutRequests(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1386
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 1387
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1120
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 900
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 901
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 902
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 906
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 907
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 908
    iget-object v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 909
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/view/table/AbstractAdapterView;->updateEmptyStatus(Z)V

    .line 911
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 901
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 902
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 906
    goto :goto_2

    :cond_8
    move v3, v5

    .line 907
    goto :goto_3
.end method

.method protected checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1195
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->selectionChanged()V

    .line 1197
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    .line 1198
    iget-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    .line 1200
    :cond_1
    return-void
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
    .line 999
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1000
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
    .line 987
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 988
    return-void
.end method

.method protected findSyncPosition()I
    .locals 19

    .prologue
    .line 1215
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 1217
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1218
    sget v14, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    .line 1290
    :cond_0
    :goto_0
    return v14

    .line 1221
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 1222
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    .line 1225
    .local v14, seed:I
    sget-wide v15, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1226
    sget v14, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    goto :goto_0

    .line 1230
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1231
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1238
    .local v3, endTime:J
    move v5, v14

    .line 1241
    .local v5, first:I
    move v10, v14

    .line 1244
    .local v10, last:I
    const/4 v11, 0x0

    .line 1254
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1255
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1256
    sget v14, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    goto :goto_0

    .line 1274
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1276
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1277
    move v14, v10

    .line 1279
    const/4 v11, 0x0

    .line 1259
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1260
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1261
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1266
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1267
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1269
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1290
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    sget v14, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    goto :goto_0

    .line 1266
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1267
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1280
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1282
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1283
    move v14, v5

    .line 1285
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

    .prologue
    .line 743
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 844
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 794
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 955
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 956
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
    .line 964
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 965
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    sget-wide v1, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

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
    .line 808
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 358
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 433
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 485
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 6
    .parameter "view"

    .prologue
    .line 760
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    move-object v3, p1

    .line 763
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

    move-result v5

    if-nez v5, :cond_0

    .line 764
    move-object v3, v4

    goto :goto_0

    .line 766
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 768
    .local v1, e:Ljava/lang/ClassCastException;
    sget v5, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    .line 780
    .end local v1           #e:Ljava/lang/ClassCastException;
    :goto_1
    return v5

    .line 772
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getChildCount()I

    move-result v0

    .line 773
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 774
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 775
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 773
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 780
    :cond_2
    sget v5, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 724
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 725
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 726
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 727
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 729
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 702
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 690
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method protected handleDataChanged()V
    .locals 7

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1128
    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 1129
    .local v0, count:I
    const/4 v1, 0x0

    .line 1131
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 1136
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1139
    iput-boolean v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 1143
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->findSyncPosition()I

    move-result v2

    .line 1144
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 1146
    invoke-virtual {p0, v2, v5}, Lcom/htc/view/table/AbstractAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1147
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 1149
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractAdapterView;->setNextSelectedPositionInt(I)V

    .line 1150
    const/4 v1, 0x1

    .line 1154
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 1156
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1159
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 1160
    add-int/lit8 v2, v0, -0x1

    .line 1162
    :cond_1
    if-gez v2, :cond_2

    .line 1163
    const/4 v2, 0x0

    .line 1167
    :cond_2
    invoke-virtual {p0, v2, v5}, Lcom/htc/view/table/AbstractAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1168
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1170
    invoke-virtual {p0, v2, v6}, Lcom/htc/view/table/AbstractAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1172
    :cond_3
    if-ltz v3, :cond_4

    .line 1173
    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractAdapterView;->setNextSelectedPositionInt(I)V

    .line 1174
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->checkSelectionChanged()V

    .line 1175
    const/4 v1, 0x1

    .line 1179
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1181
    sget v4, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 1182
    sget-wide v4, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 1183
    sget v4, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 1184
    sget-wide v4, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 1185
    iput-boolean v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 1186
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->checkSelectionChanged()V

    .line 1188
    :cond_5
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 858
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1306
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
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
    .line 677
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mLayoutHeight:I

    .line 678
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractAdapterView;->playSoundEffect(I)V

    .line 377
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)V

    .line 378
    const/4 v0, 0x1

    .line 381
    :cond_0
    return v0
.end method

.method protected rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1352
    iput-boolean v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 1353
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncHeight:J

    .line 1354
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1356
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1357
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 1358
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    .line 1359
    if-eqz v1, :cond_0

    .line 1360
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    .line 1362
    :cond_0
    iput v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    .line 1379
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1365
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1366
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1367
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1368
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 1372
    :goto_1
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    .line 1373
    if-eqz v1, :cond_3

    .line 1374
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    .line 1376
    :cond_3
    iput v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1370
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 668
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 638
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 654
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 1084
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1085
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectionNotifier:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 1091
    new-instance v0, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;-><init>(Lcom/htc/view/table/AbstractAdapterView;Lcom/htc/view/table/AbstractAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectionNotifier:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectionNotifier:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectionNotifier:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1098
    :cond_2
    :goto_0
    return-void

    .line 1095
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/table/AbstractAdapterView;->fireOnSelected()V

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
    .line 825
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mEmptyView:Landroid/view/View;

    .line 827
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 828
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 829
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/view/table/AbstractAdapterView;->updateEmptyStatus(Z)V

    .line 830
    return-void

    .line 828
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 868
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 870
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableState:Z

    .line 871
    if-nez p1, :cond_1

    .line 872
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 875
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 876
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 868
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 875
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 884
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 885
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 887
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 888
    if-eqz p1, :cond_1

    .line 889
    iput-boolean v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mDesiredFocusableState:Z

    .line 892
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 893
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 885
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 892
    goto :goto_1
.end method

.method protected setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1332
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 1333
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 1335
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1336
    iput p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    .line 1337
    iget-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    .line 1339
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 974
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 346
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemClickListener;

    .line 347
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 418
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractAdapterView;->setLongClickable(Z)V

    .line 421
    :cond_0
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    .line 422
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 477
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemSelectedListener:Lcom/htc/view/table/AbstractAdapterView$OnItemSelectedListener;

    .line 478
    return-void
.end method

.method protected setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1318
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView;,"Lcom/htc/view/table/AbstractAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 1319
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 1320
    return-void
.end method

.method public abstract setSelection(I)V
.end method
