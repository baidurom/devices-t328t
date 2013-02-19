.class Lcom/htc/fragment/widget/BinGridView;
.super Landroid/widget/GridView;
.source "BinGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/fragment/widget/DragSource;
.implements Lcom/htc/fragment/widget/DropTarget;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final BLANK_SIZE:I = 0x2


# instance fields
.field private binAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private display:Landroid/view/Display;

.field private dummyAdapter:Landroid/widget/BaseAdapter;

.field private final dummyItemCount:I

.field private focusRect:Landroid/graphics/RectF;

.field private gridLocation:[I

.field private gridPoolIcon:Landroid/graphics/drawable/Drawable;

.field private isBinAdapter:Z

.field private isDrawNextItem:Z

.field private isPortrait:Z

.field private landColumnNum:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mDragId:J

.field private mDragItemView:Landroid/view/View;

.field private mDragger:Lcom/htc/fragment/widget/DragController;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDrop:Z

.field private mIsFocused:Z

.field private mIsRemove:Z

.field private mIsUnremovable:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPoolFocusWidth:I

.field private mRemoveUri:Landroid/net/Uri;

.field private nextLocation:[I

.field private numColumn:I

.field private orientation:I

.field private portColumnNum:I

.field private removeableColor:I

.field private skipFocusLine:Z

.field private unremoveableColor:I

.field private verticalPadding:I

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    .line 150
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->removeableColor:I

    .line 151
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->unremoveableColor:I

    .line 153
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->skipFocusLine:Z

    .line 216
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    .line 217
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->portColumnNum:I

    .line 218
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->landColumnNum:I

    .line 219
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    .line 248
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    .line 249
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->orientation:I

    .line 251
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    .line 253
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->display:Landroid/view/Display;

    .line 280
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    .line 284
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 337
    iput v2, p0, Lcom/htc/fragment/widget/BinGridView;->dummyItemCount:I

    .line 340
    new-instance v0, Lcom/htc/fragment/widget/BinGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/BinGridView$1;-><init>(Lcom/htc/fragment/widget/BinGridView;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->dummyAdapter:Landroid/widget/BaseAdapter;

    .line 373
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    .line 568
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->gridLocation:[I

    .line 569
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    .line 93
    invoke-direct {p0}, Lcom/htc/fragment/widget/BinGridView;->setOrientation()V

    .line 94
    invoke-direct {p0}, Lcom/htc/fragment/widget/BinGridView;->gInit()V

    .line 95
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->setColumnWidthByCurrentMode()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    .line 150
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->removeableColor:I

    .line 151
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->unremoveableColor:I

    .line 153
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->skipFocusLine:Z

    .line 216
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    .line 217
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->portColumnNum:I

    .line 218
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->landColumnNum:I

    .line 219
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    .line 248
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    .line 249
    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->orientation:I

    .line 251
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    .line 253
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->display:Landroid/view/Display;

    .line 280
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    .line 284
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 337
    iput v2, p0, Lcom/htc/fragment/widget/BinGridView;->dummyItemCount:I

    .line 340
    new-instance v0, Lcom/htc/fragment/widget/BinGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/BinGridView$1;-><init>(Lcom/htc/fragment/widget/BinGridView;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->dummyAdapter:Landroid/widget/BaseAdapter;

    .line 373
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    .line 568
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->gridLocation:[I

    .line 569
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    .line 103
    invoke-direct {p0}, Lcom/htc/fragment/widget/BinGridView;->setOrientation()V

    .line 104
    invoke-direct {p0}, Lcom/htc/fragment/widget/BinGridView;->gInit()V

    .line 105
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->setColumnWidthByCurrentMode()V

    .line 109
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 110
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 112
    return-void
.end method

.method private gInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 75
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->mIsFocused:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 78
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->mPoolFocusWidth:I

    .line 79
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 81
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->mIsUnremovable:Z

    .line 82
    return-void
.end method

.method private getLocationForNewItem([I)V
    .locals 4
    .parameter "location"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->gridLocation:[I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->getLocationOnScreen([I)V

    .line 576
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->gridLocation:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 577
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->gridLocation:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 578
    return-void
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->display:Landroid/view/Display;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->orientation:I

    .line 262
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->orientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    .line 263
    return-void

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 616
    move-object v0, p6

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 617
    .local v0, info:Lcom/htc/fragment/widget/TaskInfo;
    check-cast p1, Lcom/htc/fragment/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_0

    iget v1, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    if-nez v1, :cond_0

    .line 618
    const/4 v1, 0x0

    .line 621
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addtoDB()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/BinAdapter;

    .line 517
    .local v7, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 518
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 519
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    if-eqz v0, :cond_0

    .line 522
    const/16 v1, 0x3e9

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->mRemoveUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/htc/fragment/widget/BinGridView;->mDragId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsDrop:Z

    .line 524
    iput-boolean v10, p0, Lcom/htc/fragment/widget/BinGridView;->mIsRemove:Z

    .line 528
    return-void

    .line 526
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 453
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x2

    const/high16 v4, 0x4000

    const/high16 v5, 0x4120

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget v1, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    if-gez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 167
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getWidth()I

    move-result v4

    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    sub-int v1, v4, v1

    int-to-float v1, v1

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 170
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    add-int/lit8 v2, v2, 0x4

    :cond_1
    sub-int v2, v3, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 174
    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsFocused:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->skipFocusLine:Z

    if-nez v1, :cond_8

    .line 176
    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsUnremovable:Z

    if-eqz v1, :cond_6

    .line 178
    iget v1, p0, Lcom/htc/fragment/widget/BinGridView;->unremoveableColor:I

    if-gez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->unremoveableColor:I

    .line 181
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->unremoveableColor:I

    .line 192
    .local v0, color:I
    :goto_1
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_3

    .line 193
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 196
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/fragment/widget/BinGridView;->mPoolFocusWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->focusRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/fragment/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 208
    .end local v0           #color:I
    :goto_2
    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsDrop:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsRemove:Z

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 211
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 213
    :cond_4
    return-void

    .line 169
    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/BinGridView;->widgetSpace:I

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    .line 185
    :cond_6
    iget v1, p0, Lcom/htc/fragment/widget/BinGridView;->removeableColor:I

    if-gez v1, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_selection_highlight"

    const v4, 0x2060033

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/BinGridView;->removeableColor:I

    .line 189
    :cond_7
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->removeableColor:I

    .restart local v0       #color:I
    goto :goto_1

    .line 206
    .end local v0           #color:I
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public endDragOneItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    aput v1, v0, v2

    .line 322
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    aput v1, v0, v3

    .line 329
    :goto_1
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iput-boolean v3, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 334
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDragItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aput v2, v0, v2

    .line 325
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aput v2, v0, v3

    goto :goto_1
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsDrop:Z

    .line 86
    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsRemove:Z

    .line 87
    return-void
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 141
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsDrop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsRemove:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsDrop:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->mIsRemove:Z

    .line 145
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    invoke-direct {p0}, Lcom/htc/fragment/widget/BinGridView;->setOrientation()V

    .line 275
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->setColumnWidthByCurrentMode()V

    .line 277
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 278
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 586
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/BinGridView;->setFocus(Z)V

    move-object v0, p6

    .line 587
    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 588
    .local v0, info:Lcom/htc/fragment/widget/TaskInfo;
    iget v1, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    if-nez v1, :cond_0

    .line 589
    iput-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->mIsUnremovable:Z

    .line 593
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->invalidate()V

    .line 594
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsUnremovable:Z

    goto :goto_0
.end method

.method public onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setFocus(Z)V

    .line 608
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->invalidate()V

    .line 609
    return-void
.end method

.method public onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 600
    return-void
.end method

.method public onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 535
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 537
    .local v2, loc:[I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 538
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->endDragOneItem()V

    .line 539
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    move-object v6, p1

    .line 541
    check-cast v6, Lcom/htc/fragment/widget/DropTarget;

    if-eq p0, v6, :cond_1

    move-object v1, p6

    .line 542
    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    .line 544
    .local v1, info:Lcom/htc/fragment/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 545
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 546
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 547
    .local v3, removeUri:Landroid/net/Uri;
    const-string v6, "gId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, tabId:Ljava/lang/String;
    const-string v6, "remove"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 549
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "gId"

    invoke-virtual {v6, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 550
    iput-object v3, p0, Lcom/htc/fragment/widget/BinGridView;->mRemoveUri:Landroid/net/Uri;

    .line 551
    iget-wide v6, v1, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    iput-wide v6, p0, Lcom/htc/fragment/widget/BinGridView;->mDragId:J

    .line 553
    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/BinGridView;->getLocationForNewItem([I)V

    .line 554
    iget-object v6, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v6, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 556
    instance-of v6, p1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v6, :cond_0

    .line 557
    check-cast p1, Lcom/htc/fragment/widget/CarouselWidget;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/htc/fragment/widget/CarouselWidget;->doAnimationForDifferentTarget(Lcom/htc/fragment/widget/DropTarget;)V

    .line 565
    .end local v0           #adapter:Lcom/htc/fragment/widget/BinAdapter;
    .end local v1           #info:Lcom/htc/fragment/widget/TaskInfo;
    .end local v3           #removeUri:Landroid/net/Uri;
    .end local v4           #tabId:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 560
    .restart local p1
    :cond_1
    iget-object v6, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 561
    iget-object v6, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 562
    iget-object v6, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v6, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    goto :goto_0
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 501
    if-eqz p1, :cond_0

    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    .end local p1
    if-ne p0, p1, :cond_2

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 507
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    .line 509
    :cond_2
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 4
    .parameter "target"
    .parameter "success"

    .prologue
    .line 487
    if-eqz p2, :cond_1

    .line 488
    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    .end local p1
    if-ne p0, p1, :cond_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    .restart local p1
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 491
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 492
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/BinGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 120
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    :goto_0
    return v0

    .line 467
    :cond_0
    iput-object p2, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    .line 468
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 469
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, p0, v2, v0}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    .line 471
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 668
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/BinGridView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchPosition:I

    .line 692
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 695
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 698
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    .line 699
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 700
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 704
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 714
    :cond_2
    :goto_0
    return-void

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragItemView:Landroid/view/View;

    .line 710
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 711
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/BinGridView;->performHapticFeedback(I)Z

    .line 713
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/fragment/widget/BinGridView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 632
    iget-object v1, p0, Lcom/htc/fragment/widget/BinGridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 635
    .local v0, retValue:Z
    return v0
.end method

.method setColumnWidthByCurrentMode()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 226
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->portColumnNum:I

    if-gez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->portColumnNum:I

    .line 229
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->portColumnNum:I

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    .line 239
    :goto_0
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    if-gez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    .line 242
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setNumColumns(I)V

    .line 243
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setVerticalSpacing(I)V

    .line 244
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setGravity(I)V

    .line 245
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setStretchMode(I)V

    .line 246
    return-void

    .line 233
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->landColumnNum:I

    if-gez v0, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->landColumnNum:I

    .line 236
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/BinGridView;->landColumnNum:I

    iput v0, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    goto :goto_0
.end method

.method public setDragger(Lcom/htc/fragment/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/htc/fragment/widget/BinGridView;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 480
    return-void
.end method

.method public setDrawNextItem(Z)V
    .locals 13
    .parameter "enable"

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 381
    iget-boolean v8, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    if-ne v8, p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    .line 385
    iget-boolean v8, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    if-ne v8, v12, :cond_8

    .line 387
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 388
    .local v0, childCount:I
    const/4 v4, 0x0

    .line 391
    .local v4, columnWidth:I
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 392
    .local v5, firstView:Landroid/view/View;
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 394
    .local v6, previousView:Landroid/view/View;
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 397
    :cond_1
    const-string v8, "Carousel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDrawNextItem:false "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput-boolean v9, p0, Lcom/htc/fragment/widget/BinGridView;->isDrawNextItem:Z

    goto :goto_0

    .line 403
    :cond_2
    iget v8, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    if-gez v8, :cond_3

    .line 404
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x2050001

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    .line 407
    :cond_3
    const/4 v8, 0x2

    if-ge v0, v8, :cond_5

    .line 408
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getWidth()I

    move-result v8

    iget v10, p0, Lcom/htc/fragment/widget/BinGridView;->mPaddingLeft:I

    sub-int/2addr v8, v10

    iget v10, p0, Lcom/htc/fragment/widget/BinGridView;->mPaddingRight:I

    sub-int/2addr v8, v10

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    div-int v4, v8, v10

    .line 413
    :goto_1
    iget v8, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    div-int v7, v0, v8

    .line 414
    .local v7, row:I
    iget v8, p0, Lcom/htc/fragment/widget/BinGridView;->numColumn:I

    rem-int v3, v0, v8

    .line 417
    .local v3, col:I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    if-nez v3, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v11, p0, Lcom/htc/fragment/widget/BinGridView;->verticalPadding:I

    add-int/2addr v8, v11

    :goto_2
    add-int v2, v10, v8

    .line 418
    .local v2, childTop:I
    if-nez v3, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 421
    .local v1, childLeft:I
    :goto_3
    iget-object v8, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aput v1, v8, v9

    .line 422
    iget-object v8, p0, Lcom/htc/fragment/widget/BinGridView;->nextLocation:[I

    aput v2, v8, v12

    .line 425
    iget-object v8, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    .line 426
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x208019e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    .line 429
    :cond_4
    iget-object v8, p0, Lcom/htc/fragment/widget/BinGridView;->gridPoolIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    const-string v8, "Carousel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDrawNextItem:true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0           #childCount:I
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v3           #col:I
    .end local v4           #columnWidth:I
    .end local v5           #firstView:Landroid/view/View;
    .end local v6           #previousView:Landroid/view/View;
    .end local v7           #row:I
    :goto_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->invalidate()V

    goto/16 :goto_0

    .line 410
    .restart local v0       #childCount:I
    .restart local v4       #columnWidth:I
    .restart local v5       #firstView:Landroid/view/View;
    .restart local v6       #previousView:Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v12}, Lcom/htc/fragment/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v4, v8, v10

    goto :goto_1

    .restart local v3       #col:I
    .restart local v7       #row:I
    :cond_6
    move v8, v9

    .line 417
    goto :goto_2

    .line 418
    .restart local v2       #childTop:I
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v1, v8, v4

    goto :goto_3

    .line 437
    .end local v0           #childCount:I
    .end local v2           #childTop:I
    .end local v3           #col:I
    .end local v4           #columnWidth:I
    .end local v5           #firstView:Landroid/view/View;
    .end local v6           #previousView:Landroid/view/View;
    .end local v7           #row:I
    :cond_8
    const-string v8, "Carousel"

    const-string v9, "setDrawNextItem:false"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/fragment/widget/BinGridView;->mIsFocused:Z

    .line 132
    return-void
.end method

.method public startDragOneItem()V
    .locals 3

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 297
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 298
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->binAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    .line 303
    iget-object v0, p0, Lcom/htc/fragment/widget/BinGridView;->dummyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDragItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/BinGridView;->isBinAdapter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
