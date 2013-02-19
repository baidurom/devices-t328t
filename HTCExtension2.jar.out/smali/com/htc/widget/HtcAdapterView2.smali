.class public abstract Lcom/htc/widget/HtcAdapterView2;
.super Landroid/view/ViewGroup;
.source "HtcAdapterView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAdapterView2$1;,
        Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;,
        Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAdapterView2$OnDataSetListener;,
        Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;,
        Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;,
        Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;,
        Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;,
        Lcom/htc/widget/HtcAdapterView2$ListStyle;
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
.field public static final INVALID_COLUMN_ID:J = -0x8000000000000000L

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

.field mNextSelectedColumnId:J

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedColumnId:J

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

.field mSelectedColumnId:J

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView2",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificLeft:I

.field mSpecificTop:I

.field private mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

.field mSyncColumnId:J

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J

.field mSyncWidth:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 306
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 67
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 94
    sget-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 105
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 116
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 127
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 192
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 198
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 204
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 210
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 216
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 222
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 273
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedColumnId:J

    .line 279
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 284
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 303
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 94
    sget-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 105
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 116
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 127
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 192
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 198
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 204
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 210
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 216
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 222
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 273
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedColumnId:J

    .line 279
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 284
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 303
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 94
    sget-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 105
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 116
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 127
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 192
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 198
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 204
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 210
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 216
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 222
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 273
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedColumnId:J

    .line 279
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 284
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 303
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAdapterView2;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAdapterView2;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAdapterView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView2;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1185
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedItemPosition()I

    move-result v3

    .line 1189
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 1190
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1191
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;->onItemSelected(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1194
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;->onNothingSelected(Lcom/htc/widget/HtcAdapterView2;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 954
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    const/4 p1, 0x0

    .line 958
    :cond_0
    if-eqz p1, :cond_3

    .line 959
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView2;->setVisibility(I)V

    .line 970
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 971
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2;->onLayout(ZIIII)V

    .line 977
    :cond_1
    :goto_1
    return-void

    .line 964
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView2;->setVisibility(I)V

    goto :goto_0

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView2;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 605
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
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
    .line 622
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
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
    .line 658
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
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
    .line 639
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1237
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

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
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 936
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 937
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 941
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 942
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 943
    iget-object v3, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 944
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAdapterView2;->updateEmptyStatus(Z)V

    .line 946
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 936
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 937
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 941
    goto :goto_2

    :cond_8
    move v3, v5

    .line 942
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1311
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1312
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedColumnId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1313
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->selectionChanged()V

    .line 1314
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 1315
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedColumnId:J

    .line 1325
    :cond_1
    :goto_0
    return-void

    .line 1318
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1319
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->selectionChanged()V

    .line 1320
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 1321
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1204
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v0, 0x0

    .line 1209
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1210
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 1216
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1217
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1220
    :cond_1
    if-nez v0, :cond_3

    .line 1221
    if-eqz v1, :cond_2

    .line 1222
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1224
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1225
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1228
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
    .line 1041
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1042
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
    .line 1029
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1030
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1336
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1338
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1339
    const/4 v14, -0x1

    .line 1413
    :cond_0
    :goto_0
    return v14

    .line 1342
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 1343
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1347
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-eqz v15, :cond_2

    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_3

    .line 1348
    :cond_2
    const/4 v14, -0x1

    goto :goto_0

    .line 1353
    :cond_3
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1354
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1361
    .local v3, endTime:J
    move v5, v14

    .line 1364
    .local v5, first:I
    move v10, v14

    .line 1367
    .local v10, last:I
    const/4 v11, 0x0

    .line 1377
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1378
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_6

    .line 1379
    const/4 v14, -0x1

    goto :goto_0

    .line 1397
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_4
    if-nez v6, :cond_5

    if-eqz v11, :cond_a

    if-nez v7, :cond_a

    .line 1399
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 1400
    move v14, v10

    .line 1402
    const/4 v11, 0x0

    .line 1382
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_7

    .line 1383
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1384
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1389
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_8

    const/4 v7, 0x1

    .line 1390
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_9

    const/4 v6, 0x1

    .line 1392
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 1413
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_7
    const/4 v14, -0x1

    goto :goto_0

    .line 1389
    .restart local v12       #rowId:J
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 1390
    .restart local v7       #hitLast:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 1403
    .restart local v6       #hitFirst:Z
    :cond_a
    if-nez v7, :cond_b

    if-nez v11, :cond_6

    if-nez v6, :cond_6

    .line 1405
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 1406
    move v14, v5

    .line 1408
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
    .line 794
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 887
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 841
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 986
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 987
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
    .locals 4
    .parameter "position"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const-wide/high16 v1, -0x8000

    .line 995
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1000
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1001
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 1005
    .local v1, id:J
    :cond_0
    :goto_0
    return-wide v1

    .line 1001
    .end local v1           #id:J
    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 1003
    :cond_2
    if-eqz v0, :cond_3

    if-gez p1, :cond_4

    .restart local v1       #id:J
    :cond_3
    :goto_1
    goto :goto_0

    .end local v1           #id:J
    :cond_4
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 851
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getListStyle()Lcom/htc/widget/HtcAdapterView2$ListStyle;
    .locals 1

    .prologue
    .line 337
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;
    .locals 1

    .prologue
    .line 395
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 470
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 522
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v5, -0x1

    .line 811
    move-object v3, p1

    .line 814
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

    .line 815
    move-object v3, v4

    goto :goto_0

    .line 817
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 831
    :cond_0
    :goto_1
    return v5

    .line 823
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getChildCount()I

    move-result v0

    .line 824
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 825
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 826
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 824
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 774
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 775
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedItemPosition()I

    move-result v1

    .line 776
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 777
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 779
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 744
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 749
    .local v0, id:J
    :goto_0
    return-wide v0

    .line 747
    .end local v0           #id:J
    :cond_0
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .restart local v0       #id:J
    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 728
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-wide/high16 v5, -0x8000

    .line 1241
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1242
    .local v0, count:I
    const/4 v1, 0x0

    .line 1244
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 1249
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1252
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1256
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->findSyncPosition()I

    move-result v2

    .line 1257
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 1259
    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView2;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1260
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 1262
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView2;->setNextSelectedPositionInt(I)V

    .line 1263
    const/4 v1, 0x1

    .line 1267
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 1269
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getSelectedItemPosition()I

    move-result v2

    .line 1272
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 1273
    add-int/lit8 v2, v0, -0x1

    .line 1275
    :cond_1
    if-gez v2, :cond_2

    .line 1276
    const/4 v2, 0x0

    .line 1280
    :cond_2
    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView2;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1281
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1283
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAdapterView2;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1285
    :cond_3
    if-ltz v3, :cond_4

    .line 1286
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAdapterView2;->setNextSelectedPositionInt(I)V

    .line 1287
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->checkSelectionChanged()V

    .line 1288
    const/4 v1, 0x1

    .line 1292
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1294
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 1295
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 1296
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 1297
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 1300
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 1301
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 1304
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1305
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->checkSelectionChanged()V

    .line 1307
    :cond_5
    return-void
.end method

.method public isHorizontalStyle()Z
    .locals 2

    .prologue
    .line 350
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    sget-object v1, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 897
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1425
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
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
    .line 714
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mLayoutHeight:I

    .line 715
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView2;->playSoundEffect(I)V

    .line 414
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)V

    .line 415
    const/4 v0, 0x1

    .line 418
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1477
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1478
    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1481
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1482
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mLayoutWidth:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncWidth:J

    .line 1483
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1485
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1486
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 1487
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1488
    if-eqz v1, :cond_0

    .line 1489
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1491
    :cond_0
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    .line 1536
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1494
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1495
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1496
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1497
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 1501
    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1502
    if-eqz v1, :cond_3

    .line 1503
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1505
    :cond_3
    iput v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    goto :goto_0

    .line 1499
    :cond_4
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    goto :goto_1

    .line 1508
    .end local v0           #adapter:Landroid/widget/Adapter;,"TT;"
    .end local v1           #v:Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncHeight:J

    .line 1509
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v2, :cond_7

    .line 1511
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1512
    .restart local v1       #v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 1513
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1514
    if-eqz v1, :cond_6

    .line 1515
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1517
    :cond_6
    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    goto :goto_0

    .line 1520
    .end local v1           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1521
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1522
    .restart local v0       #adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-ltz v2, :cond_9

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1523
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 1527
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1528
    if-eqz v1, :cond_8

    .line 1529
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1531
    :cond_8
    iput v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    goto :goto_0

    .line 1525
    :cond_9
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    goto :goto_2
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 705
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 675
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 691
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 1164
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1165
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;

    if-nez v0, :cond_1

    .line 1171
    new-instance v0, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView2;Lcom/htc/widget/HtcAdapterView2$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAdapterView2$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1179
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1180
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView2;->sendAccessibilityEvent(I)V

    .line 1182
    :cond_3
    return-void

    .line 1175
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView2;->fireOnSelected()V

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
    .line 868
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2;->mEmptyView:Landroid/view/View;

    .line 870
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 871
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 872
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAdapterView2;->updateEmptyStatus(Z)V

    .line 873
    return-void

    .line 871
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 906
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 907
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 909
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableState:Z

    .line 910
    if-nez p1, :cond_1

    .line 911
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableInTouchModeState:Z

    .line 914
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 915
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 907
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 914
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 923
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 924
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 926
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableInTouchModeState:Z

    .line 927
    if-eqz p1, :cond_1

    .line 928
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDesiredFocusableState:Z

    .line 931
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 932
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 924
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 931
    goto :goto_1
.end method

.method public setListStyle(Lcom/htc/widget/HtcAdapterView2$ListStyle;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 324
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2;->mStyle:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 325
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1450
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 1453
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 1456
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1457
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1458
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 1463
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1464
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1465
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1016
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 383
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    .line 384
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 455
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView2;->setLongClickable(Z)V

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    .line 459
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 514
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView2$OnItemSelectedListener;

    .line 515
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1433
    .local p0, this:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 1436
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 1442
    :goto_0
    return-void

    .line 1439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    goto :goto_0
.end method

.method public abstract setSelection(I)V
.end method
