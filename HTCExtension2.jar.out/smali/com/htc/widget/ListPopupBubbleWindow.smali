.class public Lcom/htc/widget/ListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;,
        Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;,
        Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;,
        Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;,
        Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;,
        Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;,
        Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupBubbleWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mPopup:Lcom/htc/widget/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 236
    const/4 v0, 0x0

    const v1, 0x201007c

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 247
    const v0, 0x201007c

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 83
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 109
    iput v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    .line 110
    iput v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 114
    iput-boolean v7, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 115
    iput-boolean v7, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 116
    const v5, 0x7fffffff

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 119
    iput v7, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    .line 131
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    .line 132
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    .line 133
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    .line 134
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    .line 137
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 304
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    .line 272
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 273
    new-instance v5, Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    .line 274
    iget-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 277
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    const v5, 0x20501c4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxWidth:I

    .line 279
    const v5, 0x20501c5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMinWidth:I

    .line 300
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    .line 301
    return-void

    .line 281
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 284
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 286
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 288
    .local v3, width:I
    :goto_1
    const/high16 v5, 0x205

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxWidth:I

    .line 289
    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMinWidth:I

    .line 291
    const v5, 0x2050012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxHeight:I

    .line 293
    iget-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 294
    iget-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    .local v0, popDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 297
    iget v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxHeight:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxHeight:I

    goto :goto_0

    .line 286
    .end local v0           #popDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #width:I
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .locals 25

    .prologue
    .line 1391
    const/16 v21, 0x0

    .line 1393
    .local v21, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-nez v1, :cond_9

    .line 1394
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 1402
    .local v8, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow$1;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1412
    new-instance v2, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v8, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1419
    .local v9, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_2

    .line 1421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    .line 1422
    .local v18, info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1419
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1412
    .end local v9           #count:I
    .end local v16           #i:I
    .end local v18           #info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1425
    .restart local v9       #count:I
    .restart local v16       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1426
    .local v10, count2:I
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    .line 1428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    .line 1429
    .restart local v18       #info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1426
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1432
    .end local v18           #info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->enableAnimation(IZ)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusable(Z)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    new-instance v2, Lcom/htc/widget/ListPopupBubbleWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$2;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    .line 1458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 1461
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1463
    .local v11, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 1464
    .local v15, hintView:Landroid/view/View;
    if-eqz v15, :cond_5

    .line 1467
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1468
    .local v13, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1470
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v14, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1474
    .local v14, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1486
    const-string v1, "ListPopupBubbleWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hint position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1493
    .local v24, widthSpec:I
    const/4 v12, 0x0

    .line 1494
    .local v12, heightSpec:I
    move/from16 v0, v24

    invoke-virtual {v15, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1496
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1497
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    .line 1500
    move-object v11, v13

    .line 1503
    .end local v12           #heightSpec:I
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #widthSpec:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1, v11}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1516
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/16 v17, 0x1

    .line 1518
    .local v17, ignoreBottomDecorations:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v20

    .line 1523
    .local v20, maxHeight:I
    const/16 v22, 0x0

    .line 1524
    .local v22, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1525
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_7

    .line 1526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v22, v1, v2

    .line 1530
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 1531
    :cond_8
    add-int v1, v20, v22

    .line 1540
    :goto_6
    return v1

    .line 1476
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v17           #ignoreBottomDecorations:Z
    .end local v20           #maxHeight:I
    .end local v22           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    .restart local v9       #count:I
    .restart local v10       #count2:I
    .restart local v13       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15       #hintView:Landroid/view/View;
    .restart local v16       #i:I
    :pswitch_0
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1477
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1481
    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1482
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1505
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v11           #dropDownView:Landroid/view/ViewGroup;
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1506
    .restart local v11       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1507
    .local v23, view:Landroid/view/View;
    if-eqz v23, :cond_6

    .line 1508
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1510
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    goto/16 :goto_4

    .line 1516
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #view:Landroid/view/View;
    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    .line 1534
    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v17       #ignoreBottomDecorations:Z
    .restart local v20       #maxHeight:I
    .restart local v22       #padding:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v20, v21

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v19

    .line 1538
    .local v19, listContent:I
    if-lez v19, :cond_c

    add-int v21, v21, v22

    .line 1540
    :cond_c
    add-int v1, v19, v21

    goto :goto_6

    .line 1474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWidthLimit(I)I
    .locals 1
    .parameter "width"

    .prologue
    .line 634
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 635
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 636
    return p1
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1854
    const/4 v6, 0x0

    .line 1855
    .local v6, width:I
    const/4 v4, 0x0

    .line 1856
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 1857
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1859
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1861
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1862
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1863
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 1864
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 1865
    move v3, v5

    .line 1866
    const/4 v4, 0x0

    .line 1868
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1869
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1870
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1862
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1872
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1004
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1005
    check-cast v0, Landroid/view/ViewGroup;

    .line 1006
    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1009
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 825
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 826
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 802
    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    .line 803
    .local v0, info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    .line 804
    iput-object p2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    .line 805
    iput-boolean p3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    .line 806
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 780
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 781
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 751
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_0
    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    .line 757
    .local v0, info:Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    .line 758
    iput-object p2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    .line 759
    iput-boolean p3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    .line 760
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public clearListSelection()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1071
    .local v0, list:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 1073
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1076
    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->requestLayout()V

    .line 1078
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 934
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 935
    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 936
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 938
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 941
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 942
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 947
    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 948
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 950
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    .line 951
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 953
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 954
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 956
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpandDirection()I
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getExpandDirection()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    .line 1134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    const-wide/high16 v0, -0x8000

    .line 1168
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    const/4 v0, -0x1

    .line 1151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method getTriangleOffset()I
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getTriangleOffset()I

    move-result v0

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method internalDismiss()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 961
    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 962
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1226
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1232
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    .line 1236
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 1239
    .local v4, curIndex:I
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/PopupBubbleWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 1241
    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 1244
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 1245
    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .line 1247
    .local v6, lastItem:I
    if-eqz v0, :cond_1

    .line 1248
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 1249
    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 1251
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 1255
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 1259
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->clearListSelection()V

    .line 1260
    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v8, v7}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1261
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 1307
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4       #curIndex:I
    :cond_4
    move v2, v8

    .line 1239
    goto :goto_0

    .line 1249
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 1251
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 1266
    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1269
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1272
    .local v3, consumed:Z
    if-eqz v3, :cond_9

    .line 1275
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1280
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 1281
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 1283
    sparse-switch p1, :sswitch_data_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :cond_8
    move v7, v8

    .line 1307
    goto :goto_3

    .line 1293
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 1296
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 1299
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1359
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1362
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1363
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1364
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1365
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1366
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1380
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 1369
    .restart local v0       #anchorView:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1370
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1371
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1372
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1374
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1375
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 1380
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1327
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 1328
    sparse-switch p1, :sswitch_data_0

    .line 1340
    .end local v0           #consumed:Z
    :cond_0
    :goto_0
    return v0

    .line 1334
    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 1340
    .end local v0           #consumed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1328
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .parameter "position"

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1114
    .local v1, list:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1115
    .local v2, child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1116
    .local v6, adapter:Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 1118
    .end local v1           #list:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    .end local v2           #child:Landroid/view/View;
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 1120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 314
    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 319
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 320
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 322
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "register data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->enableAnimation(IZ)V

    .line 327
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    if-nez p1, :cond_2

    .line 330
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister list data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 317
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 555
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    .line 522
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->checkWidthLimit(I)I

    move-result p1

    .line 626
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 627
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 629
    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 631
    :cond_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 431
    return-void
.end method

.method public setExpandDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    .line 986
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 416
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 656
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    .line 657
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 578
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    .line 579
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1025
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1207
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 1208
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 485
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .parameter "modal"

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    .line 391
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 392
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 972
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 668
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 683
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "selectedListener"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 698
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 348
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    .line 349
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .parameter "prompt"

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    .line 712
    .local v0, showing:Z
    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 715
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 716
    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 719
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1052
    .local v0, list:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1053
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1054
    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    .line 1055
    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setItemChecked(IZ)V

    .line 1059
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setSoftInputMode(I)V

    .line 458
    return-void
.end method

.method setTriangleOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setTriangleOffset(I)V

    .line 831
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 594
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    .line 595
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 615
    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 616
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 844
    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->buildDropDown()I

    move-result v6

    .line 846
    .local v6, height:I
    const/4 v4, 0x0

    .line 847
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 849
    .local v5, heightSpec:I
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 850
    .local v7, noInputMethod:Z
    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/htc/widget/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    .line 852
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 853
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    .line 856
    const/4 v4, -0x1

    .line 863
    :goto_1
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    .line 866
    if-eqz v7, :cond_4

    move v5, v6

    .line 867
    :goto_2
    if-eqz v7, :cond_6

    .line 868
    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 883
    :goto_4
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 885
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    .line 928
    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    .line 850
    goto :goto_0

    .line 857
    :cond_2
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    .line 858
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    .line 860
    :cond_3
    iget v4, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    .line 866
    goto :goto_2

    :cond_5
    move v0, v2

    .line 868
    goto :goto_3

    .line 872
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    .line 877
    :cond_8
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 878
    move v5, v6

    goto :goto_4

    .line 880
    :cond_9
    iget v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    .line 883
    goto :goto_5

    .line 888
    :cond_b
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    .line 889
    const/4 v4, -0x1

    .line 898
    :goto_8
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    .line 899
    const/4 v5, -0x1

    .line 908
    :goto_9
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 909
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 913
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 914
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 915
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setListViewHook(Lcom/htc/widget/HtcListView;)V

    .line 916
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 918
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->startIntroAnimation()V

    .line 919
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    .line 921
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 922
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->clearListSelection()V

    .line 924
    :cond_d
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 891
    :cond_e
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    .line 892
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    .line 894
    :cond_f
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    .line 901
    :cond_10
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    .line 902
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v6}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    .line 904
    :cond_11
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto/16 :goto_9

    :cond_12
    move v1, v2

    .line 913
    goto :goto_a
.end method
