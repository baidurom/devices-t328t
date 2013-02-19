.class public Lcom/htc/widget/HeaderBarDropDown;
.super Landroid/widget/LinearLayout;
.source "HeaderBarDropDown.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# instance fields
.field private bubbleView:Landroid/view/View;

.field private clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private enableOffset:Z

.field private frontImage:Landroid/widget/ImageView;

.field private indicatorOffset:I

.field private indicatorView:Landroid/widget/ImageView;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listFooterView:Landroid/view/View;

.field private listHeaderView:Landroid/view/View;

.field private popupAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

.field private popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private popupMaxWidth:I

.field private primaryText:Landroid/widget/TextView;

.field private progressOffset:I

.field private progressUpdate:Z

.field private progressView:Landroid/view/View;

.field private secondaryText:Landroid/widget/TextView;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private skipChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    .line 49
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 52
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 150
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 151
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 206
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 207
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 210
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 212
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 213
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 215
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 216
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 219
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 220
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 223
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 224
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 732
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 806
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 65
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    .line 49
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 52
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 150
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 151
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 206
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 207
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 210
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 212
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 213
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 215
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 216
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 219
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 220
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 223
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 224
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 732
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 806
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 75
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrset"
    .parameter "style"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    .line 49
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 52
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 150
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 151
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 206
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 207
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 210
    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 212
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 213
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 215
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 216
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 219
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 220
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 223
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 224
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 732
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 806
    iput-boolean v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 85
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupEnvironment()V

    .line 86
    return-void
.end method

.method private cleanPreviousWindow()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string v0, "HeaderBar"

    const-string v1, "show() clean popup window adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 416
    iput-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    const-string v0, "HeaderBar"

    const-string v1, "show() clean expandable popup window adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 426
    iput-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 428
    :cond_1
    return-void
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 697
    if-nez p1, :cond_0

    .line 724
    :goto_0
    return v3

    .line 700
    :cond_0
    const/4 v11, 0x0

    .line 701
    .local v11, maxWidth:I
    const/4 v9, 0x0

    .line 703
    .local v9, itemType:I
    const/4 v10, 0x0

    .line 705
    .local v10, itemView:Landroid/view/View;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 706
    .local v12, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 708
    .local v8, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, loopi:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    .local v7, groupCount:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 710
    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 711
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 713
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 715
    const/4 v2, 0x0

    .local v2, loopj:I
    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .local v6, childCount:I
    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    .line 717
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 718
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 720
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 708
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #loopj:I
    .end local v6           #childCount:I
    :cond_2
    move v3, v11

    .line 724
    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 652
    if-nez p1, :cond_1

    move v5, v8

    .line 692
    :cond_0
    :goto_0
    return v5

    .line 655
    :cond_1
    const/4 v5, 0x0

    .line 656
    .local v5, maxWidth:I
    const/4 v2, 0x0

    .line 657
    .local v2, itemType:I
    const/4 v6, 0x0

    .line 659
    .local v6, positionType:I
    const/4 v3, 0x0

    .line 661
    .local v3, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 662
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 664
    .local v1, heightMeasureSpec:I
    const/4 v4, 0x0

    .local v4, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 666
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 668
    if-eq v6, v2, :cond_2

    .line 670
    move v2, v6

    .line 671
    const/4 v3, 0x0

    .line 674
    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 675
    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    .line 676
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 680
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 682
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 683
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 686
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 688
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 689
    iget-object v8, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupBubbleView()V
    .locals 5

    .prologue
    .line 830
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 834
    .local v0, bubbleSize:I
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    .line 835
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v3, "common_notification_on"

    const v4, 0x208003d

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 840
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    .line 842
    .end local v0           #bubbleSize:I
    :cond_0
    return-void
.end method

.method private setupEnvironment()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 91
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 96
    :cond_0
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setGravity(I)V

    .line 97
    invoke-virtual {p0, v7}, Lcom/htc/widget/HeaderBarDropDown;->setOrientation(I)V

    .line 98
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v5, "section_divider_top"

    const v6, 0x2080099

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0, v8}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    .line 107
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 110
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x2090039

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPressImageView()Landroid/widget/ImageView;

    .line 114
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    const v4, 0x208018e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 120
    :cond_3
    const v3, 0x20e00a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 121
    .local v0, leftPadding:I
    const v3, 0x20e00a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 123
    .local v2, rightPadding:I
    const v3, 0x2020044

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    .line 124
    const v3, 0x2020045

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    .line 125
    const v3, 0x20200d4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    .end local v0           #leftPadding:I
    .end local v2           #rightPadding:I
    :cond_4
    iget v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    if-gez v3, :cond_5

    .line 133
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    .line 134
    :cond_5
    return-void
.end method

.method private setupFrontImage()V
    .locals 6

    .prologue
    .line 736
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 740
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20e0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 741
    .local v1, imageSize:I
    const v4, 0x20e0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 745
    .local v2, leftMargin:I
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    .line 746
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 747
    .local v0, frontParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 750
    iget-object v4, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 752
    .end local v0           #frontParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #imageSize:I
    .end local v2           #leftMargin:I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private setupProgressView()V
    .locals 5

    .prologue
    .line 811
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 815
    .local v1, resources:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v2, :cond_0

    .line 816
    const v2, 0x20e00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 818
    :cond_0
    const v2, 0x20e0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 820
    .local v0, progressSize:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x209003b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    .line 821
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HeaderBarDropDown;->addView(Landroid/view/View;I)V

    .line 825
    .end local v0           #progressSize:I
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 823
    .restart local v0       #progressSize:I
    .restart local v1       #resources:Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    .line 341
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    .line 332
    return-void
.end method

.method public dismiss()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 314
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 322
    :cond_1
    const-string v0, "HeaderBar"

    const-string v1, "dismiss() from external call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public enableIndicatorOffset(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    .line 157
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    if-gez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e00a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :goto_0
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 161
    return-void

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPressImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1019
    const v0, 0x2020020

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    .line 1020
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    .line 145
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 146
    return-void
.end method

.method public onDismiss()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 577
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 579
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 590
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v0

    .line 591
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v1

    .line 594
    .local v1, paddingRight:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarDropDown;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 597
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v4, 0x2030057

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 603
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPressImageView()Landroid/widget/ImageView;

    .line 605
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    const v3, 0x208018e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 609
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 611
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    :cond_4
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 628
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 278
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 280
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 287
    :cond_1
    const-string v0, "HeaderBar"

    const-string v2, "setAdapter(ExpandableListAdapter) clean another"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 297
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 298
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 302
    :cond_3
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdapter(ExpandableListAdapter):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    :cond_4
    move-object v0, v1

    .line 278
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 242
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 244
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 251
    :cond_1
    const-string v0, "HeaderBar"

    const-string v2, "setAdapter(ListAdapter) clean another"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 261
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 262
    iput-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 266
    :cond_3
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdapter(ListAdapter):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    :cond_4
    move-object v0, v1

    .line 242
    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 877
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleText(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    .line 884
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    const v1, 0x20300e2

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 887
    return-void

    .line 885
    :cond_0
    const v1, 0x20300e4

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 850
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupBubbleView()V

    .line 852
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 856
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 864
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 865
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    goto :goto_0

    .line 864
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 173
    const-string v0, "HeaderBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop down setEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :cond_0
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    if-gez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e00a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    .line 181
    :cond_1
    if-nez p1, :cond_3

    .line 182
    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 185
    :goto_1
    return-void

    .line 176
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarDropDown;->enableOffset:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorOffset:I

    :goto_2
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public setFrontImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 771
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 772
    return-void
.end method

.method public setFrontImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 781
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    return-void
.end method

.method public setFrontImageResource(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 791
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 792
    return-void
.end method

.method public setFrontImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 801
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 802
    return-void
.end method

.method public setFrontImageVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupFrontImage()V

    .line 761
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->frontImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 387
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 389
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 231
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 399
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 401
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 360
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 365
    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 375
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 377
    :cond_0
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 974
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :cond_0
    return-void
.end method

.method public setProgressVisibility(I)V
    .locals 4
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 913
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->setupProgressView()V

    .line 915
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 926
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->bubbleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 927
    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarDropDown;->progressUpdate:Z

    .line 932
    const-string v1, "HeaderBar"

    const-string v2, "update progress layout parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 926
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBarDropDown;->progressOffset:I

    goto :goto_1
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 994
    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    :cond_0
    return-void
.end method

.method public setSecondaryVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 954
    :cond_0
    return-void
.end method

.method public show()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 442
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarDropDown;->cleanPreviousWindow()V

    .line 444
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    .line 452
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 455
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 458
    const-string v5, "HeaderBar"

    const-string v6, "show() create popup window"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    .line 461
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 463
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    .line 464
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 466
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 467
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 469
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 470
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 471
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 475
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 476
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 478
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 479
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 481
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    .line 482
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    .line 490
    .local v3, paddingRight:I
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 492
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 493
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    :cond_6
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 508
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    .line 510
    .local v1, adapterExp:Landroid/widget/ExpandableListAdapter;
    :cond_8
    if-eqz v1, :cond_d

    .line 514
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 515
    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 518
    const-string v5, "HeaderBar"

    const-string v6, "show() create expandable window"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    .line 521
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 523
    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    .line 524
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 526
    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    .line 527
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 529
    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    .line 530
    .local v4, wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 531
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 532
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 533
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v10}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 536
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarDropDown;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarDropDown;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 537
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 539
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 540
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 542
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingLeft()I

    move-result v2

    .line 543
    .restart local v2       #paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPaddingRight()I

    move-result v3

    .line 551
    .restart local v3       #paddingRight:I
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    .line 553
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 554
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    :cond_c
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarDropDown;->skipChange:Z

    .line 565
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarDropDown;->getPressImageView()Landroid/widget/ImageView;

    .line 566
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 567
    iget-object v5, p0, Lcom/htc/widget/HeaderBarDropDown;->indicatorView:Landroid/widget/ImageView;

    const v6, 0x2080190

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #adapterExp:Landroid/widget/ExpandableListAdapter;
    :cond_e
    move-object v0, v1

    .line 450
    goto/16 :goto_1
.end method

.method updateResource()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResource():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030052

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/widget/HeaderBarDropDown;->secondaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 200
    :cond_1
    return-void
.end method
