.class public Lcom/htc/widget/HtcFastScroller3;
.super Ljava/lang/Object;
.source "HtcFastScroller3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcFastScroller3$ScrollFade;
    }
.end annotation


# static fields
.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private computeX:I

.field draw2_flag:Z

.field private drawX:I

.field private isOverlayEnabled:Z

.field private mChangedBounds:Z

.field protected final mContext:Landroid/content/Context;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/widget/HtcAbsListView2;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private final mOverlayMarginTop:I

.field private final mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field private mOverlayW:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mResOverlay:I

.field protected mResThumb:I

.field protected mResTrack:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbX:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I

.field private minThumbWidth:I

.field private needResetThumbWidth:Z

.field private oldTotalItemCount:I

.field private rangeX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V
    .locals 4
    .parameter "context"
    .parameter "listView"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlaySize:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    .line 98
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller3;->isOverlayEnabled:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller3;->needResetThumbWidth:Z

    .line 103
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->minThumbWidth:I

    .line 115
    const v0, 0x2080135

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    .line 120
    const v0, 0x208003e

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    .line 125
    const v0, 0x2080134

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResTrack:I

    .line 128
    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 132
    iput v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPadding:I

    .line 133
    iput v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayMarginTop:I

    .line 318
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    .line 321
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->rangeX:I

    .line 323
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->computeX:I

    .line 325
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->drawX:I

    .line 136
    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    .line 137
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->init(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcFastScroller3;)Lcom/htc/widget/HtcAbsListView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 709
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 710
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 711
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 712
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 551
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 552
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 554
    instance-of v1, v0, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 555
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    .line 556
    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter2;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 567
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 568
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 569
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 570
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    .line 576
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 577
    return-void

    .line 572
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 573
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 237
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFastScroller3;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/htc/widget/HtcFastScroller3;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    .line 241
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 249
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 251
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPos:Landroid/graphics/RectF;

    .line 252
    new-instance v2, Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller3;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    .line 253
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    .line 254
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 256
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    .line 267
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iput v4, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    .line 270
    iput-boolean v4, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    .line 271
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 193
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    .line 197
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 200
    return-void
.end method

.method private resetThumbPos()V
    .locals 6

    .prologue
    .line 185
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    .line 188
    .local v0, viewHeight:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    return-void
.end method

.method private scrollTo(F)V
    .locals 21
    .parameter "position"

    .prologue
    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v2

    .line 581
    .local v2, count:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 582
    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    .line 583
    .local v6, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 585
    .local v16, sections:[Ljava/lang/Object;
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 586
    move-object/from16 v0, v16

    array-length v8, v0

    .line 587
    .local v8, nSections:I
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    .line 588
    .local v14, section:I
    if-lt v14, v8, :cond_0

    .line 589
    add-int/lit8 v14, v8, -0x1

    .line 591
    :cond_0
    move v3, v14

    .line 592
    .local v3, exactSection:I
    move v15, v14

    .line 593
    .local v15, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 600
    .local v7, index:I
    move v9, v2

    .line 601
    .local v9, nextIndex:I
    move v12, v7

    .line 602
    .local v12, prevIndex:I
    move v13, v14

    .line 603
    .local v13, prevSection:I
    add-int/lit8 v11, v14, 0x1

    .line 605
    .local v11, nextSection:I
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 610
    :cond_1
    if-ne v9, v7, :cond_3

    .line 612
    :cond_2
    if-lez v14, :cond_3

    .line 613
    add-int/lit8 v14, v14, -0x1

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 615
    if-eq v12, v7, :cond_2

    .line 616
    move v13, v14

    .line 617
    move v15, v14

    .line 627
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .line 629
    .local v10, nextNextSection:I
    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_4

    .line 630
    add-int/lit8 v10, v10, 0x1

    .line 631
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 636
    :cond_4
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 637
    .local v5, fPrev:F
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 638
    .local v4, fNext:F
    if-ne v13, v3, :cond_a

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_a

    .line 639
    move v7, v12

    .line 649
    :cond_5
    :goto_1
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 657
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListViewCore2;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    .line 679
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    :goto_2
    if-ltz v15, :cond_10

    .line 680
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .line 681
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    .line 683
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 687
    if-nez v15, :cond_8

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    .line 693
    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .line 699
    .restart local v17       #text:Ljava/lang/String;
    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    .line 705
    .end local v17           #text:Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 642
    .restart local v3       #exactSection:I
    .restart local v4       #fNext:F
    .restart local v5       #fPrev:F
    .restart local v8       #nSections:I
    .restart local v9       #nextIndex:I
    .restart local v10       #nextNextSection:I
    .restart local v11       #nextSection:I
    .restart local v12       #prevIndex:I
    .restart local v13       #prevSection:I
    .restart local v14       #section:I
    :cond_a
    add-int/lit8 v7, v12, -0x1

    .line 643
    if-gez v7, :cond_5

    .line 644
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 660
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAbsListView2;->setSelection(I)V

    goto/16 :goto_2

    .line 663
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v7           #index:I
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    .end local v15           #sectionIndex:I
    :cond_c
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    .line 671
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListViewCore2;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    .line 676
    :goto_6
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_2

    .line 674
    .end local v15           #sectionIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAbsListView2;->setSelection(I)V

    goto :goto_6

    .line 681
    .restart local v15       #sectionIndex:I
    .restart local v17       #text:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 696
    :cond_f
    sget-object v17, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_4

    .line 703
    .end local v17           #text:Ljava/lang/String;
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "drawable"
    .parameter "res"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    .line 213
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    .line 218
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 221
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    .line 222
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    .line 228
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 229
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    .line 225
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->minThumbWidth:I

    .line 205
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->minThumbWidth:I

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 208
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw2(Landroid/graphics/Canvas;)V

    .line 463
    :cond_0
    return-void
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    move/from16 v19, v0

    .line 337
    .local v19, x:I
    const/16 v20, 0x14

    .line 338
    .local v20, y2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v17

    .line 339
    .local v17, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v16

    .line 340
    .local v16, viewHeight:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    .line 341
    .local v9, scrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;
    const/4 v5, -0x1

    .line 344
    .local v5, alpha:I
    const/4 v11, 0x0

    .line 345
    .local v11, thumbTop:I
    const/4 v7, 0x0

    .line 346
    .local v7, overlayTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 347
    invoke-virtual {v9}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v5

    .line 348
    const/16 v21, 0x68

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0xd0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    mul-int/lit8 v22, v5, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 355
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x205

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 357
    .local v14, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 359
    .local v10, thumbBounds:Landroid/graphics/Rect;
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 360
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 361
    .local v13, trackHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v12

    div-int/lit8 v22, v13, 0x2

    sub-int v15, v21, v22

    .line 362
    .local v15, trackTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v22

    sub-int v22, v22, v14

    add-int v23, v15, v13

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    .end local v10           #thumbBounds:Landroid/graphics/Rect;
    .end local v12           #top:I
    .end local v13           #trackHeight:I
    .end local v15           #trackTop:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView2;->computeHorizontalScrollRange()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView2;->computeHorizontalScrollExtent()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcFastScroller3;->rangeX:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAbsListView2;->computeHorizontalScrollOffset()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcFastScroller3;->computeX:I

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->computeX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->rangeX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->rangeX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcFastScroller3;->computeX:I

    .line 382
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->computeX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    mul-int/lit8 v23, v14, 0x2

    sub-int v22, v22, v23

    mul-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->rangeX:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcFastScroller3;->drawX:I

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->drawX:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->drawX:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    move/from16 v21, v0

    sub-int v21, v17, v21

    mul-int/lit8 v22, v14, 0x2

    sub-int v21, v21, v22

    mul-int v21, v21, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    div-int v8, v21, v22

    .line 407
    .local v8, reducedX:I
    add-int v21, v8, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    add-int v21, v8, v14

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    .end local v8           #reducedX:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 427
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFastScroller3;->isOverlayEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcFastScroller3;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 435
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 436
    if-nez v5, :cond_a

    .line 437
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    goto/16 :goto_0

    .line 438
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v23, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto/16 :goto_0

    .line 442
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    move/from16 v18, v0

    .line 443
    .local v18, w:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    .line 445
    .local v6, h:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    mul-int/lit8 v22, v6, 0x2

    sub-int v22, v16, v22

    add-int v23, v19, v18

    sub-int v24, v16, v6

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto/16 :goto_0

    .line 442
    .end local v6           #h:I
    .end local v18           #w:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    move/from16 v18, v0

    goto :goto_1

    .line 443
    .restart local v18       #w:I
    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    goto :goto_2
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "paint"
    .parameter "text"
    .parameter "bounds"

    .prologue
    const/4 v9, 0x0

    .line 295
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    .line 296
    .local v5, viewWidth:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v4, textbounds:Landroid/graphics/Rect;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, p3, v9, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 298
    if-nez p4, :cond_1

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0xa

    .line 300
    .local v1, px_left:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, 0x14

    .line 301
    .local v2, px_right:I
    sub-int v6, v2, v1

    iget v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    if-ge v6, v7, :cond_0

    .line 302
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 303
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 306
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    new-instance p4, Landroid/graphics/Rect;

    .end local p4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {p4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    .end local v1           #px_left:I
    .end local v2           #px_right:I
    .restart local p4
    :cond_1
    iget v6, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 311
    .local v0, px:I
    iget v6, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v6, v7

    .line 313
    .local v3, py:I
    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    int-to-float v6, v0

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 805
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    .line 806
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x19

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 806
    goto :goto_0

    .line 810
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

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
    .line 715
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 719
    const/4 v0, 0x1

    .line 722
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/HtcAbsListView2;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->oldTotalItemCount:I

    if-eq v0, p4, :cond_0

    .line 499
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller3;->needResetThumbWidth:Z

    .line 501
    :cond_0
    sub-int v0, p4, p3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v4, :cond_3

    .line 503
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->needResetThumbWidth:Z

    if-eqz v0, :cond_2

    if-lez p3, :cond_2

    .line 504
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    div-int/2addr v0, p4

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    .line 506
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->minThumbWidth:I

    if-ge v0, v1, :cond_1

    .line 507
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->minThumbWidth:I

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    .line 509
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller3;->needResetThumbWidth:Z

    .line 510
    iput p4, p0, Lcom/htc/widget/HtcFastScroller3;->oldTotalItemCount:I

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    .line 514
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    if-eqz v0, :cond_3

    .line 515
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    .line 516
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 519
    :cond_3
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 520
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    if-ne p2, v0, :cond_5

    .line 529
    :cond_4
    :goto_0
    return-void

    .line 523
    :cond_5
    iput p2, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    .line 524
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v4, :cond_4

    .line 525
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 477
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v0, v1, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 728
    .local v2, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v11, :cond_1

    move v4, v7

    .line 735
    .local v4, is2Point:Z
    :goto_0
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-nez v9, :cond_2

    if-nez v4, :cond_2

    move v7, v8

    .line 797
    :cond_0
    :goto_1
    return v7

    .end local v4           #is2Point:Z
    :cond_1
    move v4, v8

    .line 728
    goto :goto_0

    .line 740
    .restart local v4       #is2Point:Z
    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v0, v9, v10

    .line 741
    .local v0, X:F
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v1, v9, v10

    .line 743
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_3

    const/16 v9, 0x105

    if-ne v2, v9, :cond_c

    .line 750
    :cond_3
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v10}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v9, v7, :cond_6

    move v7, v8

    .line 751
    goto :goto_1

    .line 740
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 741
    .restart local v0       #X:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 754
    .restart local v1       #Y:F
    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 755
    :cond_7
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-nez v8, :cond_8

    .line 756
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 758
    :cond_8
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 759
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-nez v8, :cond_a

    :cond_9
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    if-eqz v8, :cond_b

    .line 760
    :cond_a
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 763
    :cond_b
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->cancelFling()V

    goto :goto_1

    .line 766
    :cond_c
    if-ne v2, v7, :cond_d

    .line 767
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    .line 768
    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    .line 769
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 770
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    .line 771
    .local v3, handler:Landroid/os/Handler;
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 772
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 775
    .end local v3           #handler:Landroid/os/Handler;
    :cond_d
    if-ne v2, v11, :cond_10

    .line 776
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    .line 777
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    .line 779
    .local v6, viewWidth:I
    float-to-int v8, v0

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    .line 780
    .local v5, newThumbX:I
    if-gez v5, :cond_f

    .line 781
    const/4 v5, 0x0

    .line 785
    :cond_e
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v8, v11, :cond_0

    .line 788
    iput v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    .line 791
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    if-eqz v8, :cond_0

    .line 792
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller3;->scrollTo(F)V

    goto/16 :goto_1

    .line 782
    :cond_f
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_e

    .line 783
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v5, v6, v8

    goto :goto_4

    .end local v5           #newThumbX:I
    .end local v6           #viewWidth:I
    :cond_10
    move v7, v8

    .line 797
    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 537
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    .line 173
    return-void

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    goto :goto_0

    .line 153
    :pswitch_2
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    .line 158
    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetOverlayPos()V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    .line 168
    .local v0, viewHeight:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbX:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 275
    return-void
.end method
