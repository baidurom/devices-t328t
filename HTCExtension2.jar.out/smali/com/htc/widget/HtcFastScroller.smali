.class public Lcom/htc/widget/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2

.field static sSymbol:Ljava/lang/String;


# instance fields
.field isCorrectThumbDrawable:Z

.field private isGoogleStyle:Z

.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field protected final mContext:Landroid/content/Context;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDownCancel:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchY:F

.field private mItemCount:I

.field mList:Lcom/htc/widget/HtcAbsListView;

.field mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private final mOverlayMarginTop:I

.field private final mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field private mOverlayW:I

.field private mOverlayY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field mRes:Landroid/content/res/Resources;

.field protected mResOverlay:I

.field protected mResOverlay_big:I

.field protected mResThumb:I

.field protected mResThumb_big:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/HtcFastScroller;->MIN_PAGES:I

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/htc/widget/HtcFastScroller;->PRESSED_STATES:[I

    .line 73
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/widget/HtcFastScroller;->DEFAULT_STATES:[I

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/HtcFastScroller;->ATTRS:[I

    .line 204
    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V
    .locals 4
    .parameter "context"
    .parameter "listView"

    .prologue
    const v3, 0x208003e

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mItemCount:I

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 164
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 170
    const v0, 0x208003f

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb:I

    .line 177
    const v0, 0x20800f5

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb_big:I

    .line 184
    iput v3, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay:I

    .line 191
    iput v3, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay_big:I

    .line 202
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isCorrectThumbDrawable:Z

    .line 205
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 208
    iput v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPadding:I

    .line 209
    iput v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayMarginTop:I

    .line 212
    new-instance v0, Lcom/htc/widget/HtcFastScroller$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFastScroller$1;-><init>(Lcom/htc/widget/HtcFastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 236
    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    .line 237
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    .line 238
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFastScroller;->init(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1087
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 1088
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1089
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1090
    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 1091
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1092
    return-void
.end method

.method private decideOverlayDrawable(Z)V
    .locals 4
    .parameter "useBigDrawable"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    const-string v2, "common_scroller_base"

    const v3, 0x208003e

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 1143
    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1043
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 1044
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcFastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_4

    .line 1048
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    .line 1082
    :cond_3
    :goto_0
    return v8

    .line 1052
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    sub-int p1, p1, v13

    .line 1053
    if-gez p1, :cond_5

    .line 1054
    const/4 v8, 0x0

    goto :goto_0

    .line 1056
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    sub-int p3, p3, v13

    .line 1058
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v12, v13, v14

    .line 1060
    .local v12, trackHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 1061
    .local v9, section:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1062
    .local v11, sectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 1063
    .local v5, nextSectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    .line 1064
    .local v10, sectionCount:I
    sub-int v7, v5, v11

    .line 1066
    .local v7, positionsInSection:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1067
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_6

    const/4 v2, 0x0

    .line 1069
    .local v2, incrementalPos:F
    :goto_1
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 1070
    .local v6, posWithinSection:F
    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 1075
    .local v8, result:I
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 1076
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1077
    .local v3, lastChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 1079
    .local v4, lastItemVisible:F
    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_0

    .line 1067
    .end local v2           #incrementalPos:F
    .end local v3           #lastChild:Landroid/view/View;
    .end local v4           #lastItemVisible:F
    .end local v6           #posWithinSection:F
    .end local v8           #result:I
    :cond_6
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAbsListView;->getPaddingTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 451
    iget-boolean v7, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v7, :cond_3

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Lcom/htc/widget/HtcFastScroller;->ATTRS:[I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 454
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 455
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 458
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 459
    const/4 v7, 0x5

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPosition:I

    .line 461
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 463
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    .line 467
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 468
    new-instance v7, Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller;)V

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 469
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 470
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 471
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 472
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 474
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 475
    .local v3, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 476
    .local v4, textColorNormal:I
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 480
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v7

    if-lez v7, :cond_0

    .line 481
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8, v6, v6}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 484
    :cond_0
    iput v6, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    .line 485
    iget-boolean v7, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v7, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->refreshDrawableState()V

    .line 488
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcFastScroller;->mScaledTouchSlop:I

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller;->mMatchDragPosition:Z

    .line 495
    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView;->getVerticalScrollbarPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcFastScroller;->setScrollbarPosition(I)V

    .line 522
    .end local v2           #ta:Landroid/content/res/TypedArray;
    .end local v3           #textColor:Landroid/content/res/ColorStateList;
    .end local v4           #textColorNormal:I
    :goto_1
    return-void

    .restart local v2       #ta:Landroid/content/res/TypedArray;
    .restart local v3       #textColor:Landroid/content/res/ColorStateList;
    .restart local v4       #textColorNormal:I
    :cond_2
    move v5, v6

    .line 493
    goto :goto_0

    .line 501
    .end local v2           #ta:Landroid/content/res/TypedArray;
    .end local v3           #textColor:Landroid/content/res/ColorStateList;
    .end local v4           #textColorNormal:I
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 502
    .local v1, res:Landroid/content/res/Resources;
    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    .line 505
    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb_big:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_2
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 512
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 514
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 515
    new-instance v5, Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller;)V

    iput-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 517
    iput v6, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    .line 518
    iput-boolean v6, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    .line 520
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcFastScroller;->setScrollbarPosition(I)V

    goto :goto_1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 265
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/htc/widget/HtcFastScroller;->PRESSED_STATES:[I

    .line 267
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 273
    :cond_1
    return-void

    .line 265
    .end local v0           #state:[I
    :cond_2
    sget-object v0, Lcom/htc/widget/HtcFastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 368
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 376
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    div-int/lit8 v4, v0, 0x3

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 346
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 349
    .local v0, viewWidth:I
    iget-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isCorrectThumbDrawable:Z

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 355
    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 365
    return-void

    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9
    .parameter "drawable"
    .parameter "isDrawableBig"

    .prologue
    const/4 v8, 0x1

    .line 399
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 401
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 405
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 408
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_2

    .line 409
    const v4, 0x20e00b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 410
    const v4, 0x20e00b2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 412
    const v4, 0x20e00b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    .line 413
    const v4, 0x20e00b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    .line 421
    :goto_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 422
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 423
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 424
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    .line 427
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const v5, -0xe5e5e6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v2, textbounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 434
    if-eqz p2, :cond_3

    .line 435
    const/4 v3, 0x0

    .line 436
    .local v3, width:I
    const/4 v0, 0x0

    .line 437
    .local v0, height:I
    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int v3, v4, v5

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    if-le v3, v4, :cond_0

    .line 438
    iput v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 439
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int v0, v4, v5

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    if-le v0, v4, :cond_1

    .line 440
    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 446
    .end local v0           #height:I
    .end local v3           #width:I
    :cond_1
    :goto_1
    iput-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 447
    return-void

    .line 418
    .end local v2           #textbounds:Landroid/graphics/Rect;
    :cond_2
    const v4, 0x20e00b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    .line 419
    const v4, 0x20e00b8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    goto :goto_0

    .line 442
    .restart local v2       #textbounds:Landroid/graphics/Rect;
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 443
    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    goto :goto_1
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 385
    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    .line 395
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 396
    return-void

    .line 392
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    .line 393
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 1106
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    if-eqz v0, :cond_2

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1111
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 1114
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->cancelFling()V

    .line 1115
    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mPendingDrag:Z

    .line 1097
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 653
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcFastScroller;->draw2(Landroid/graphics/Canvas;)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mState:I

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    move/from16 v21, v0

    .line 664
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v20

    .line 665
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 667
    .local v13, scrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;
    const/4 v5, -0x1

    .line 668
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 669
    invoke-virtual {v13}, Lcom/htc/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v5

    .line 670
    const/16 v22, 0x68

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    mul-int/lit8 v23, v5, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 673
    :cond_2
    const/4 v9, 0x0

    .line 674
    .local v9, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 683
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 684
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 687
    .end local v9           #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 689
    .local v14, thumbBounds:Landroid/graphics/Rect;
    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 690
    .restart local v9       #left:I
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v8, v22, 0x2

    .line 691
    .local v8, halfThumbHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 692
    .local v18, trackWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v9

    div-int/lit8 v23, v18, 0x2

    sub-int v17, v22, v23

    .line 693
    .local v17, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v24

    sub-int v24, v24, v8

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 698
    .end local v8           #halfThumbHeight:I
    .end local v9           #left:I
    .end local v14           #thumbBounds:Landroid/graphics/Rect;
    .end local v17           #trackLeft:I
    .end local v18           #trackWidth:I
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 700
    const/16 v22, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayPosition:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 705
    const/4 v9, 0x0

    .line 706
    .restart local v9       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 712
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 722
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 725
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 726
    .local v11, pos:Landroid/graphics/RectF;
    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->left:F

    .line 727
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->right:F

    .line 728
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->top:F

    .line 729
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    .end local v9           #left:I
    .end local v11           #pos:Landroid/graphics/RectF;
    .end local v16           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 737
    .local v10, paint:Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 738
    .local v6, descent:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 739
    .local v12, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcFastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 740
    .local v15, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 741
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v7, v22, 0x2

    .line 742
    .local v7, hOff:I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v19, v22, 0x2

    .line 743
    .local v19, vOff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x4

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 677
    .end local v6           #descent:F
    .end local v7           #hOff:I
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #rectF:Landroid/graphics/RectF;
    .end local v15           #tmpRect:Landroid/graphics/Rect;
    .end local v19           #vOff:I
    .restart local v9       #left:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v22, v0

    mul-int v22, v22, v5

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xd0

    move/from16 v22, v0

    sub-int v9, v20, v22

    .line 678
    goto/16 :goto_1

    .line 680
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v23, v0

    mul-int v23, v23, v5

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xd0

    move/from16 v23, v0

    add-int v9, v22, v23

    goto/16 :goto_1

    .line 716
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    .line 746
    .end local v9           #left:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 747
    if-nez v5, :cond_7

    .line 748
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 749
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 752
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 706
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 586
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v8, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 592
    .local v7, y:I
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v5

    .line 593
    .local v5, viewWidth:I
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 594
    .local v3, scrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 595
    .local v0, alpha:I
    const/4 v4, 0x0

    .line 596
    .local v4, thumbLeft:I
    const/4 v2, 0x0

    .line 597
    .local v2, overlayLeft:I
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 598
    invoke-virtual {v3}, Lcom/htc/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 599
    const/16 v8, 0x68

    if-ge v0, v8, :cond_2

    .line 601
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xd0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 602
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 603
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 606
    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 608
    :cond_3
    const/4 v8, 0x0

    int-to-float v9, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 609
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    const/4 v8, 0x0

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    :cond_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-nez v8, :cond_6

    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v8, :cond_7

    .line 614
    :cond_6
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 618
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 619
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller;->decideOverlayDrawable(Z)V

    .line 624
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/htc/widget/HtcFastScroller;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 628
    :cond_7
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 629
    if-nez v0, :cond_9

    .line 630
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 621
    :cond_8
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller;->decideOverlayDrawable(Z)V

    goto :goto_1

    .line 632
    :cond_9
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    if-le v8, v9, :cond_a

    iget v6, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 633
    .local v6, w:I
    :goto_2
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    if-le v8, v9, :cond_b

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 634
    .local v1, h:I
    :goto_3
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    sub-int v9, v5, v6

    add-int v10, v7, v1

    invoke-virtual {v8, v9, v7, v5, v10}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    .line 636
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x0

    const/16 v10, 0xa

    iget v11, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v11, v11, 0xa

    invoke-virtual {v8, v9, v10, v5, v11}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 632
    .end local v1           #h:I
    .end local v6           #w:I
    :cond_a
    iget v6, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    goto :goto_2

    .line 633
    .restart local v6       #w:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    goto :goto_3
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "canvas"
    .parameter "paint"
    .parameter "text"
    .parameter "bounds"

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v11

    .line 537
    .local v11, viewWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    .line 544
    .local v10, viewHeight:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 545
    .local v9, textbounds:Landroid/graphics/Rect;
    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 546
    if-nez p4, :cond_2

    .line 547
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int v12, v11, v12

    div-int/lit8 v6, v12, 0x2

    .line 548
    .local v6, px_left:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int v7, v6, v12

    .line 550
    .local v7, px_right:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    sub-int v12, v11, v12

    div-int/lit8 v3, v12, 0x2

    .line 551
    .local v3, d_left:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    add-int v4, v3, v12

    .line 554
    .local v4, d_right:I
    sub-int v12, v7, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    if-ge v12, v13, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    sub-int v12, v11, v12

    div-int/lit8 v6, v12, 0x2

    .line 556
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 560
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v13, v10, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v12, v3, v13, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 564
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 566
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    .end local p4
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p4

    invoke-direct {v0, v12, v13, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 568
    .end local v3           #d_left:I
    .end local v4           #d_right:I
    .end local v6           #px_left:I
    .end local v7           #px_right:I
    .restart local p4
    :cond_2
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v13

    .line 569
    .local v5, px:I
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int v8, v12, v13

    .line 573
    .local v8, py:I
    add-int/lit8 v12, v5, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v13, v8

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v13, v8

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 868
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 869
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 870
    instance-of v1, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 871
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    .line 872
    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 883
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 884
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 885
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 886
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 891
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 892
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 909
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 911
    return-void

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isCorrectThumbDrawable:Z

    if-nez v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 896
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 900
    :goto_1
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller;->isCorrectThumbDrawable:Z

    goto :goto_0

    .line 898
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 906
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_4
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 907
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1275
    iget-boolean v3, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v3, :cond_4

    .line 1277
    const/4 v0, 0x0

    .line 1278
    .local v0, inTrack:Z
    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 1282
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 1289
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    .line 1291
    .end local v0           #inTrack:Z
    :cond_0
    :goto_1
    return v1

    .restart local v0       #inTrack:Z
    :cond_1
    move v0, v2

    .line 1282
    goto :goto_0

    .line 1285
    :pswitch_0
    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1289
    goto :goto_1

    .line 1291
    .end local v0           #inTrack:Z
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_5

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x19

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_5

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x19

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-lez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1134
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1120
    :pswitch_1
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1122
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->beginDrag()V

    .line 1123
    const/4 v0, 0x1

    goto :goto_1

    .line 1125
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mInitialTouchY:F

    .line 1126
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1131
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mLongList:Z

    .line 798
    :cond_0
    return-void
.end method

.method onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 810
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v0, :cond_4

    .line 812
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 813
    iput p4, p0, Lcom/htc/widget/HtcFastScroller;->mItemCount:I

    .line 814
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lcom/htc/widget/HtcFastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mLongList:Z

    .line 816
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    .line 817
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mLongList:Z

    .line 819
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 820
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 821
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 845
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 814
    goto :goto_0

    .line 826
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 827
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 829
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 830
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetThumbPos()V

    .line 831
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 834
    :cond_5
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 835
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    .line 838
    iput p2, p0, Lcom/htc/widget/HtcFastScroller;->mVisibleItem:I

    .line 839
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eq v0, v4, :cond_2

    .line 840
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 841
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 919
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    .line 758
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 759
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 763
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v5, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 771
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v1, :cond_2

    .line 772
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 773
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 774
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 775
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 776
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 777
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 778
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    .end local v0           #pos:Landroid/graphics/RectF;
    :cond_1
    :goto_1
    return-void

    .line 766
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "me"

    .prologue
    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    .line 1150
    .local v4, is2Point:Z
    :goto_0
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    .line 1151
    const/4 v8, 0x0

    .line 1271
    :goto_1
    return v8

    .line 1148
    .end local v4           #is2Point:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1154
    .restart local v4       #is2Point:Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1157
    .local v2, action:I
    if-eqz v4, :cond_5

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    .line 1158
    .local v0, X:F
    :goto_2
    if-eqz v4, :cond_6

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v1, v8, v9

    .line 1160
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_2

    const/16 v8, 0x105

    if-ne v2, v8, :cond_9

    .line 1161
    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1163
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->isInScrollingContainer()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1164
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v8, :cond_4

    .line 1165
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 1166
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->beginDrag()V

    .line 1167
    const/4 v8, 0x1

    goto :goto_1

    .line 1157
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 1158
    .restart local v0       #X:F
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 1169
    .restart local v1       #Y:F
    :cond_7
    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mInitialTouchY:F

    .line 1170
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->startPendingDrag()V

    .line 1271
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 1172
    :cond_9
    const/4 v8, 0x1

    if-ne v2, v8, :cond_f

    .line 1173
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_b

    .line 1175
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->beginDrag()V

    .line 1177
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    .line 1179
    .local v6, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    .line 1180
    .local v5, newThumbY:I
    if-gez v5, :cond_e

    .line 1181
    const/4 v5, 0x0

    .line 1185
    :cond_a
    :goto_4
    iput v5, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 1186
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->scrollTo(F)V

    .line 1188
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->cancelPendingDrag()V

    .line 1191
    .end local v5           #newThumbY:I
    .end local v6           #viewHeight:I
    :cond_b
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1192
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v8, :cond_c

    .line 1196
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1197
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 1199
    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    .line 1200
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 1201
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 1202
    .local v3, handler:Landroid/os/Handler;
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1203
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    if-nez v8, :cond_d

    .line 1204
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1207
    :cond_d
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1208
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1182
    .end local v3           #handler:Landroid/os/Handler;
    .restart local v5       #newThumbY:I
    .restart local v6       #viewHeight:I
    :cond_e
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_a

    .line 1183
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_4

    .line 1210
    .end local v5           #newThumbY:I
    .end local v6           #viewHeight:I
    :cond_f
    const/4 v8, 0x2

    if-ne v2, v8, :cond_17

    .line 1211
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_12

    .line 1212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1213
    .local v7, y:F
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mInitialTouchY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12

    .line 1214
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 1215
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v8, :cond_10

    .line 1216
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 1218
    :cond_10
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v8, :cond_11

    .line 1219
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1220
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 1223
    :cond_11
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->cancelFling()V

    .line 1224
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->cancelPendingDrag()V

    .line 1228
    .end local v7           #y:F
    :cond_12
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1229
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    .line 1231
    .restart local v6       #viewHeight:I
    float-to-int v8, v1

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    .line 1232
    .restart local v5       #newThumbY:I
    if-gez v5, :cond_14

    .line 1233
    const/4 v5, 0x0

    .line 1237
    :cond_13
    :goto_5
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_15

    .line 1238
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1234
    :cond_14
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_13

    .line 1235
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_5

    .line 1240
    :cond_15
    iput v5, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 1242
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_16

    .line 1243
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->scrollTo(F)V

    .line 1245
    :cond_16
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1247
    .end local v5           #newThumbY:I
    .end local v6           #viewHeight:I
    :cond_17
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    .line 1248
    invoke-virtual {p0}, Lcom/htc/widget/HtcFastScroller;->cancelPendingDrag()V

    .line 1251
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    if-nez v8, :cond_8

    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1252
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v8, :cond_18

    .line 1256
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1257
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 1259
    :cond_18
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    .line 1260
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 1261
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 1262
    .restart local v3       #handler:Landroid/os/Handler;
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1263
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    if-nez v8, :cond_19

    .line 1264
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1267
    :cond_19
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1268
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcAbsListView;->getCount()I

    move-result v2

    .line 923
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 924
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v7, v19, v20

    .line 925
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 927
    .local v17, sections:[Ljava/lang/Object;
    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 928
    move-object/from16 v0, v17

    array-length v9, v0

    .line 929
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 930
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 931
    add-int/lit8 v15, v9, -0x1

    .line 933
    :cond_0
    move v3, v15

    .line 934
    .local v3, exactSection:I
    move/from16 v16, v15

    .line 935
    .local v16, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 942
    .local v8, index:I
    move v10, v2

    .line 943
    .local v10, nextIndex:I
    move v13, v8

    .line 944
    .local v13, prevIndex:I
    move v14, v15

    .line 945
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 947
    .local v12, nextSection:I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 952
    :cond_1
    if-ne v10, v8, :cond_3

    .line 954
    :cond_2
    if-lez v15, :cond_3

    .line 955
    add-int/lit8 v15, v15, -0x1

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 957
    if-eq v13, v8, :cond_4

    .line 958
    move v14, v15

    .line 959
    move/from16 v16, v15

    .line 974
    :cond_3
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 976
    .local v11, nextNextSection:I
    :goto_1
    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 977
    add-int/lit8 v11, v11, 0x1

    .line 978
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 961
    .end local v11           #nextNextSection:I
    :cond_4
    if-nez v15, :cond_2

    .line 964
    const/16 v16, 0x0

    .line 965
    goto :goto_0

    .line 983
    .restart local v11       #nextNextSection:I
    :cond_5
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 984
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 985
    .local v5, fNext:F
    if-ne v14, v3, :cond_9

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_9

    .line 986
    move v8, v13

    .line 1001
    :cond_6
    :goto_2
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_7

    add-int/lit8 v8, v2, -0x1

    .line 1003
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    check-cast v4, Lcom/htc/widget/HtcExpandableListView;

    .line 1007
    .local v4, expList:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v8}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 1032
    .end local v3           #exactSection:I
    .end local v4           #expList:Lcom/htc/widget/HtcExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    :goto_3
    if-ltz v16, :cond_12

    .line 1033
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 1034
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    :cond_8
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    .line 1039
    .end local v18           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 988
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 989
    sub-int v19, v10, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v20, p1, v6

    mul-float v19, v19, v20

    sub-float v20, v5, v6

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v13, v19

    goto/16 :goto_2

    .line 994
    :cond_a
    move v8, v13

    .line 995
    if-gez v8, :cond_6

    .line 996
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1010
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListView;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    goto/16 :goto_3

    .line 1013
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcAbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 1016
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionIndex:I
    :cond_d
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 1018
    .restart local v8       #index:I
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_e

    add-int/lit8 v8, v2, -0x1

    .line 1020
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    check-cast v4, Lcom/htc/widget/HtcExpandableListView;

    .line 1022
    .restart local v4       #expList:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 1029
    .end local v4           #expList:Lcom/htc/widget/HtcExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16       #sectionIndex:I
    goto/16 :goto_3

    .line 1024
    .end local v16           #sectionIndex:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListView;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 1027
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcAbsListView;->setSelection(I)V

    goto :goto_6

    .line 1034
    .restart local v16       #sectionIndex:I
    .restart local v18       #text:Ljava/lang/String;
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1037
    .end local v18           #text:Ljava/lang/String;
    :cond_12
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x2

    .line 246
    iput-boolean p1, p0, Lcom/htc/widget/HtcFastScroller;->mAlwaysShow:Z

    .line 247
    if-eqz p1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 281
    iput p1, p0, Lcom/htc/widget/HtcFastScroller;->mPosition:I

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 854
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    .line 332
    iget-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->isGoogleStyle:Z

    if-eqz v1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->refreshDrawableState()V

    .line 334
    :cond_0
    return-void

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    .line 315
    :pswitch_2
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetThumbPos()V

    .line 320
    :cond_1
    :pswitch_3
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 321
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 322
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetOverlayPos()V

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 328
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method startPendingDrag()V
    .locals 4

    .prologue
    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mPendingDrag:Z

    .line 1101
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1102
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 526
    return-void
.end method

.method updateFirstVisibleItemPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 805
    iput p1, p0, Lcom/htc/widget/HtcFastScroller;->mVisibleItem:I

    .line 806
    return-void
.end method
