.class public Lcom/htc/widget/LinearPage;
.super Landroid/widget/LinearLayout;
.source "LinearPage.java"

# interfaces
.implements Lcom/htc/widget/MultiPageLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/LinearPage$ScrollRunnable;
    }
.end annotation


# static fields
.field static final SCROLL_ANIMATING:I = 0x2

.field static final SCROLL_REST:I = 0x1

.field static final TAG:Ljava/lang/String; = "LinearPage"


# instance fields
.field mCanvas:Landroid/graphics/Canvas;

.field mCount:I

.field mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

.field mNextPageBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

.field mOrientation:I

.field mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

.field mScrollMode:I

.field mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/LinearPage;->mCount:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    .line 64
    invoke-direct {p0}, Lcom/htc/widget/LinearPage;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/LinearPage;->mCount:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    .line 69
    invoke-direct {p0}, Lcom/htc/widget/LinearPage;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/LinearPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/LinearPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/LinearPage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/LinearPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/LinearPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    .line 74
    return-void
.end method

.method private reportScrollStateChange(Z)V
    .locals 1
    .parameter "right"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    if-eqz v0, :cond_0

    .line 620
    if-eqz p1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;->onToNextPage()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;->onBackPreviousPage()V

    goto :goto_0
.end method

.method private shrinkPage(II)V
    .locals 5
    .parameter "delta"
    .parameter "index"

    .prologue
    .line 629
    const-string v2, "LinearPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shrink page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0, p2}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 631
    .local v1, page:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 632
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 633
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/LinearPage;->addPage(Landroid/view/View;I)V

    .line 82
    return-void
.end method

.method public addPage(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/LinearPage;->addPage(Landroid/view/View;IZ)V

    .line 90
    return-void
.end method

.method public addPage(Landroid/view/View;IZ)V
    .locals 3
    .parameter "view"
    .parameter "index"
    .parameter "shift"

    .prologue
    .line 97
    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/LinearPage;->addView(Landroid/view/View;I)V

    .line 99
    if-eqz p3, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/LinearPage;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/LinearPage;->scrollTo(II)V

    .line 102
    :cond_0
    return-void
.end method

.method public animateBackPreviousPage()V
    .locals 11

    .prologue
    const/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v1

    .line 262
    .local v1, childCount:I
    if-ge v1, v9, :cond_0

    .line 263
    invoke-direct {p0, v5}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    .line 290
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    .line 270
    invoke-virtual {p0, v5}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    .local v4, pageWidth:I
    :goto_1
    const-string v5, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateBackPreviousPage() distance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    neg-int v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-le v1, v9, :cond_2

    .line 282
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 283
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v8}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 284
    .local v3, newLp:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 285
    invoke-virtual {p0, v8}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v5, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShiftAndScale(IIZ)V

    goto :goto_0

    .line 274
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #newLp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #pageWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v4

    .restart local v4       #pageWidth:I
    goto :goto_1

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    goto :goto_0
.end method

.method public animateShiftBy(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 331
    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateShiftBy() distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    .line 335
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    .line 336
    return-void
.end method

.method public animateShiftBy(II)V
    .locals 3
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 348
    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateShiftBy() distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    .line 350
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    .line 351
    return-void
.end method

.method public animateToNextPage()V
    .locals 9

    .prologue
    const/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 297
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v1

    .line 298
    .local v1, childCount:I
    if-ge v1, v7, :cond_0

    .line 299
    invoke-direct {p0, v6}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    .line 320
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    .local v2, pageWidth:I
    :goto_1
    const-string v3, "LinearPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateToNextPage() distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-le v1, v7, :cond_2

    .line 316
    iget-object v3, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v3, v2, v8, v6}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShiftAndScale(IIZ)V

    goto :goto_0

    .line 310
    .end local v2           #pageWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v2

    .restart local v2       #pageWidth:I
    goto :goto_1

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v3, v2, v8, v6}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    goto :goto_0
.end method

.method createCacheBitmap()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v2

    .line 180
    .local v2, cacheW:I
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getHeight()I

    move-result v1

    .line 182
    .local v1, cacheH:I
    const-string v4, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish measure bitmap size, w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_1

    move-object v0, v5

    .line 185
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 187
    const-string v4, "LinearPage"

    const-string v5, "bitmap size the same, no need to generate another bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_1
    return-void

    .line 184
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_0

    .line 193
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    iput-object v5, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    .line 198
    :cond_3
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 202
    const-string v4, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create cache bitmap w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_4

    .line 215
    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 206
    :catch_0
    move-exception v3

    .line 210
    .local v3, e:Ljava/lang/OutOfMemoryError;
    iput-object v5, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 217
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_1
.end method

.method ensureScrollRunnable()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/LinearPage$ScrollRunnable;-><init>(Lcom/htc/widget/LinearPage;)V

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    goto :goto_0
.end method

.method measureBitmapWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 159
    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 168
    :cond_2
    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 227
    const-string v0, "LinearPage"

    const-string v1, "onConfigurationChanged newConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->createCacheBitmap()V

    .line 232
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 375
    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 241
    const-string v1, "LinearPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged() w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 247
    .local v0, orientation:I
    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 250
    :cond_0
    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    .line 251
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->createCacheBitmap()V

    .line 253
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 254
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    .line 156
    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 109
    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), and shift to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/LinearPage;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/LinearPage;->scrollTo(II)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->removeViewAt(I)V

    .line 112
    return-void
.end method

.method public rotationChanged()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    .line 367
    return-void
.end method

.method public setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
    .locals 0
    .parameter "sizes"
    .parameter "paddings"

    .prologue
    .line 130
    return-void
.end method

.method public setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "portraitSizes"
    .parameter "landscapeSizes"

    .prologue
    .line 142
    invoke-virtual {p1}, [Landroid/view/ViewGroup$LayoutParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    .line 143
    invoke-virtual {p2}, [Landroid/view/ViewGroup$LayoutParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    .line 144
    return-void
.end method
