.class Lcom/htc/widget/FastScroller$FlingRunnable;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mEndPostionXY:I

.field private mIsCloseWindow:Z

.field private mIsRunning:Z

.field private mLastFlingXY:I

.field private mLongMode:Z

.field private mPos:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 2
    .parameter

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    new-instance v0, Landroid/widget/Scroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {p1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2249
    return-void
.end method

.method private endFling()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2341
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2342
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2344
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2346
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    #setter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v1, v2}, Lcom/htc/widget/FastScroller;->access$602(Lcom/htc/widget/FastScroller;I)I

    .line 2348
    iget v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v0, v1, v2

    .line 2349
    .local v0, delta:I
    if-eqz v0, :cond_0

    .line 2351
    iget-boolean v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v1, :cond_1

    .line 2352
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 2359
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v1, v2, v3}, Lcom/htc/widget/FastScroller;->access$3300(Lcom/htc/widget/FastScroller;IZ)V

    .line 2378
    :goto_1
    return-void

    .line 2355
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/Gallery;

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2356
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3500(Lcom/htc/widget/FastScroller;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 2363
    .end local v0           #delta:I
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    #setter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v1, v2}, Lcom/htc/widget/FastScroller;->access$1002(Lcom/htc/widget/FastScroller;I)I

    .line 2365
    iget v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v0, v1, v2

    .line 2366
    .restart local v0       #delta:I
    if-eqz v0, :cond_3

    .line 2368
    iget-boolean v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v1, :cond_4

    .line 2369
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 2376
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v1, v2, v3}, Lcom/htc/widget/FastScroller;->access$3300(Lcom/htc/widget/FastScroller;IZ)V

    goto :goto_1

    .line 2372
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/Gallery;

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2373
    iget-object v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbRight:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$3600(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_2
.end method

.method private startCommon()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2254
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2256
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2258
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 2259
    .local v0, dataArea:I
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2260
    .local v3, totalItemCount:I
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemWidth:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;)I

    move-result v2

    .line 2262
    .local v2, itemWidth:I
    mul-int v4, v3, v2

    sub-int/2addr v4, v0

    if-lez v4, :cond_0

    .line 2263
    iput-boolean v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    .line 2278
    .end local v2           #itemWidth:I
    :goto_0
    iput-boolean v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2279
    return-void

    .line 2265
    .restart local v2       #itemWidth:I
    :cond_0
    iput-boolean v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0

    .line 2269
    .end local v0           #dataArea:I
    .end local v2           #itemWidth:I
    .end local v3           #totalItemCount:I
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 2270
    .restart local v0       #dataArea:I
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2271
    .restart local v3       #totalItemCount:I
    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemHeight:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$2900(Lcom/htc/widget/FastScroller;)I

    move-result v1

    .line 2273
    .local v1, itemHeight:I
    mul-int v4, v3, v1

    sub-int/2addr v4, v0

    if-lez v4, :cond_2

    .line 2274
    iput-boolean v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0

    .line 2276
    :cond_2
    iput-boolean v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 2335
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2386
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemCount:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3700(Lcom/htc/widget/FastScroller;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2388
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    .line 2460
    :goto_0
    return-void

    .line 2391
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #setter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5, v7}, Lcom/htc/widget/FastScroller;->access$3802(Lcom/htc/widget/FastScroller;Z)Z

    .line 2393
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2394
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 2396
    .local v1, more:Z
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2398
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 2401
    .local v3, x:I
    iget v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    sub-int v0, v5, v3

    .line 2402
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 2403
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2407
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    add-int/2addr v6, v0

    #setter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v5, v6}, Lcom/htc/widget/FastScroller;->access$602(Lcom/htc/widget/FastScroller;I)I

    .line 2409
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_2

    .line 2410
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 2420
    :goto_2
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3800(Lcom/htc/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2422
    iput v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2423
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2405
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2413
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6, v7}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2414
    if-lez v0, :cond_3

    .line 2415
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$3500(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_2

    .line 2417
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$3500(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_2

    .line 2426
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 2430
    .end local v0           #delta:I
    .end local v3           #x:I
    :cond_5
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 2433
    .local v4, y:I
    iget v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    sub-int v0, v5, v4

    .line 2434
    .restart local v0       #delta:I
    if-lez v0, :cond_6

    .line 2435
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$3100(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2439
    :goto_3
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v6

    add-int/2addr v6, v0

    #setter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v5, v6}, Lcom/htc/widget/FastScroller;->access$1002(Lcom/htc/widget/FastScroller;I)I

    .line 2441
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_7

    .line 2442
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 2452
    :goto_4
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3800(Lcom/htc/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2454
    iput v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2455
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2437
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$3100(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    .line 2445
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6, v7}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2446
    if-lez v0, :cond_8

    .line 2447
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbRight:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$3600(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v10}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_4

    .line 2449
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbRight:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$3600(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v10}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 2458
    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public startUsingDistance(III)V
    .locals 1
    .parameter "distance"
    .parameter "end"
    .parameter "pos"

    .prologue
    .line 2287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 2288
    return-void
.end method

.method public startUsingDistance(IIIZ)V
    .locals 6
    .parameter "distance"
    .parameter "end"
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    const/4 v1, 0x0

    .line 2296
    iput-boolean p4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    .line 2298
    if-nez p1, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v0, p3, p4}, Lcom/htc/widget/FastScroller;->access$3300(Lcom/htc/widget/FastScroller;IZ)V

    .line 2315
    :goto_0
    return-void

    .line 2303
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startCommon()V

    .line 2305
    iput p3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    .line 2306
    iput v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2307
    iput p2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    .line 2309
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2310
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$3400(Lcom/htc/widget/FastScroller;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2314
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$3400(Lcom/htc/widget/FastScroller;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2325
    if-eqz p1, :cond_0

    .line 2326
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    .line 2328
    :cond_0
    return-void
.end method
