.class public Lcom/htc/widget/HtcPopupWindowWrapper;
.super Ljava/lang/Object;
.source "HtcPopupWindowWrapper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Lcom/htc/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;
    }
.end annotation


# instance fields
.field private clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mArchorView:Landroid/view/View;

.field private mCustomizeTriangleOffset:I

.field private mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mExpandDirection:I

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mPopupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private mPopupMaxWidth:I

.field private mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

.field private mTaggleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 64
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 74
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 75
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcPopupWindowWrapper;)Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    return-object v0
.end method

.method private getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 312
    :goto_0
    return-object v1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-nez v1, :cond_1

    .line 310
    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    goto :goto_0
.end method

.method private getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 301
    :goto_0
    return-object v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v1, :cond_1

    .line 299
    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 535
    const/4 v6, 0x0

    .line 536
    .local v6, width:I
    const/4 v3, 0x0

    .line 537
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 538
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 540
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 542
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 543
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 544
    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 545
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 546
    move v3, v5

    .line 547
    const/4 v4, 0x0

    .line 549
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 550
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 551
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private setArchorViewBackground(Z)Z
    .locals 4
    .parameter "bPressed"

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getTaggleView()Landroid/view/View;

    move-result-object v2

    .line 247
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v2

    .line 250
    :cond_0
    if-nez v2, :cond_1

    .line 270
    :goto_0
    return v3

    .line 253
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 254
    .local v0, paddingLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 256
    .local v1, paddingRight:I
    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    .line 268
    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setOnGlobalLayoutListener(Z)Z
    .locals 3
    .parameter "bEnable"

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 228
    .local v1, vto:Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 231
    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method private setPopupExpShow(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 287
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 289
    :cond_0
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupShow(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 275
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->shrinkAdapter()V

    .line 280
    :cond_1
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPopup()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 317
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    .line 322
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    .line 323
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    .line 324
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    move v4, v5

    .line 361
    :goto_1
    return v4

    .line 322
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    if-eqz v4, :cond_6

    .line 328
    :cond_2
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 329
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v1

    .line 330
    .local v1, lpbw:Lcom/htc/widget/ListPopupBubbleWindow;
    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 333
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    .line 334
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    if-eqz v4, :cond_5

    .line 335
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 336
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    invoke-virtual {v4}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->getAdapter()Lcom/htc/widget/IHtcShareViaAdapter;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    invoke-virtual {v4}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->getAdapter()Lcom/htc/widget/IHtcShareViaAdapter;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 343
    :goto_2
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_3

    .line 344
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 346
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mCustomizeTriangleOffset:I

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setTriangleOffset(I)V

    .line 347
    invoke-virtual {v1, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 349
    invoke-virtual {v1, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 352
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 353
    iget v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setExpandDirection(I)V

    .line 354
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 355
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 356
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_4
    move v4, v6

    .line 361
    goto :goto_1

    .line 339
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 340
    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    goto :goto_2

    .end local v1           #lpbw:Lcom/htc/widget/ListPopupBubbleWindow;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_6
    move v4, v5

    .line 359
    goto/16 :goto_1
.end method

.method private showPopupExp()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 366
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    .line 371
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListAdapter;

    move-object v0, v4

    .line 372
    .local v0, adapterExp:Landroid/widget/ExpandableListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    move v4, v5

    .line 407
    :goto_1
    return v4

    .line 371
    .end local v0           #adapterExp:Landroid/widget/ExpandableListAdapter;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    .restart local v0       #adapterExp:Landroid/widget/ExpandableListAdapter;
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_4

    .line 378
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 380
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    move-result-object v1

    .line 381
    .local v1, elpbw:Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    if-eqz v1, :cond_3

    .line 382
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 383
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 384
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 386
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    .line 387
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 389
    :cond_2
    iget v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mCustomizeTriangleOffset:I

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setTriangleOffset(I)V

    .line 390
    invoke-virtual {v1, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 392
    invoke-virtual {v1, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 393
    invoke-virtual {v1, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 396
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 397
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    .line 398
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 399
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 400
    iget v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setExpandDirection(I)V

    .line 401
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 402
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .end local v1           #elpbw:Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    :cond_4
    move v4, v6

    .line 407
    goto :goto_1
.end method

.method private tryShow()Z
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopup()Z

    move-result v0

    .line 412
    .local v0, bShowPopup:Z
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupExp()Z

    move-result v1

    .line 414
    .local v1, bShowPopupExp:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 446
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    .line 447
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    .line 448
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 453
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismissWithoutAnimation()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismissWithoutAnimation()V

    .line 464
    :cond_1
    return-void
.end method

.method public getArchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    return-object v0
.end method

.method public getExpandDirection()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->getExpandDirection()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    .line 217
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    return v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandDirection()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    goto :goto_0
.end method

.method public getTaggleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    return-object v0
.end method

.method getTriangleOffset()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mCustomizeTriangleOffset:I

    return v0
.end method

.method public isPopupExpShowing()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 558
    const/4 v5, 0x0

    .line 559
    .local v5, width:I
    const/4 v3, 0x0

    .line 560
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 561
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 563
    .local v6, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 565
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 566
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 567
    invoke-interface {p1, v2, v8, v9, v9}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 568
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    .line 569
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return v5
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 428
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->shrinkAdapter()V

    .line 431
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 432
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 436
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 438
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 440
    :cond_3
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupExpShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    goto :goto_0

    .line 482
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    goto :goto_0

    .line 485
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v1, :cond_4

    .line 486
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 488
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, arg0:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 157
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 172
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 174
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 134
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 136
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 148
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 149
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 151
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 134
    goto :goto_0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 242
    return-void
.end method

.method public setArchorView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    .line 99
    return-void
.end method

.method public setExpandDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 203
    iput p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mExpandDirection:I

    .line 204
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 517
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 519
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 421
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 527
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 507
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;)V
    .locals 0
    .parameter "shareViaClickListener"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mShareViaOnItemClickListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    .line 511
    return-void
.end method

.method public setTaggleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    .line 115
    return-void
.end method

.method setTriangleOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 177
    iput p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mCustomizeTriangleOffset:I

    .line 178
    return-void
.end method

.method public showPopupWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    return-void
.end method
