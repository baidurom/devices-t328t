.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$1;,
        Lcom/android/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x1090068

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private enableCloseAnimation:Z

.field private enableHtcPopup:Z

.field private htcPopupWindowWidth:I

.field private mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    .line 84
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 110
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 113
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x1050007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 119
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 121
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 122
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 9
    .parameter "adapter"

    .prologue
    const/4 v7, 0x0

    .line 371
    const/4 v5, 0x0

    .line 372
    .local v5, width:I
    const/4 v4, 0x0

    .line 373
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 374
    .local v3, itemType:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 376
    .local v6, widthMeasureSpec:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 378
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 379
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 390
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 391
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 393
    :cond_0
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 394
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    .line 395
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return v5
.end method

.method private measureContentWidthSpecial(Landroid/widget/ListAdapter;)I
    .locals 14
    .parameter "adapter"

    .prologue
    .line 322
    const/4 v9, 0x0

    .line 323
    .local v9, width:I
    const/4 v5, 0x0

    .line 324
    .local v5, itemView:Landroid/view/View;
    const/4 v4, 0x0

    .line 325
    .local v4, itemType:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 327
    .local v10, widthMeasureSpec:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 329
    .local v2, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 331
    .local v1, count:I
    const/4 v0, 0x0

    .line 332
    .local v0, MaxStringLength:I
    const/4 v6, 0x0

    .line 334
    .local v6, tempItemView:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 336
    const/4 v7, 0x0

    .line 338
    .local v7, tempStringLength:I
    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v11, :cond_0

    .line 339
    new-instance v11, Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 341
    :cond_0
    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v3, v5, v11}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    .line 342
    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v8, v11

    check-cast v8, Landroid/widget/TextView;

    .line 343
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 344
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 350
    :goto_1
    if-ge v0, v7, :cond_1

    .line 351
    move v0, v7

    .line 352
    move-object v6, v5

    .line 334
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_2
    const-string v11, "MenuPopupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "does not find menu title at index i ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    .end local v7           #tempStringLength:I
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_3
    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v11, :cond_4

    .line 358
    new-instance v11, Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 361
    :cond_4
    invoke-virtual {v6, v10, v2}, Landroid/view/View;->measure(II)V

    .line 362
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 365
    return v9
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->internalDismiss()V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismissWithoutAnimation()V

    goto :goto_0
.end method

.method public enableHtcPopup(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 91
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 92
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 437
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 487
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMultiplyForceEnabled(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/menu/OverflowMenuView;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/OverflowMenuView;->setMultiplyForceEnabled(Z)V

    .line 286
    :cond_1
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    .line 288
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 289
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 290
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 293
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 296
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 404
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 419
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 406
    .restart local v0       #anchor:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 309
    .local v0, adapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 310
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 313
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 517
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 8
    .parameter "subMenu"

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 457
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 458
    .local v4, subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 462
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 463
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 465
    const/4 v3, 0x1

    .line 469
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 471
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 473
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 475
    :cond_1
    const/4 v5, 0x1

    .line 478
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    return v5

    .line 462
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    .restart local v4       #subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 423
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 431
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 432
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 126
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 452
    return-void
.end method

.method public setCloseAnimationEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    .line 96
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 130
    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 675
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 677
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x1080361

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 141
    iget-boolean v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v7, :cond_5

    .line 142
    new-instance v7, Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    .line 143
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V

    .line 146
    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v7, p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 147
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setModal(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 151
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 152
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_0

    move v0, v8

    .line 153
    .local v0, addGlobalListener:Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 154
    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 156
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 161
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidthSpecial(Landroid/widget/ListAdapter;)I

    move-result v9

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 162
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v13}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 164
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_4

    .line 165
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 170
    instance-of v7, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_2

    move-object v7, v1

    .line 171
    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMultiplyForceEnabled(Z)V

    .line 174
    :cond_2
    instance-of v7, v1, Lcom/android/internal/view/menu/OverflowMenuView;

    if-eqz v7, :cond_3

    move-object v7, v1

    .line 175
    check-cast v7, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/OverflowMenuView;->setMultiplyForceEnabled(Z)V

    .line 179
    :cond_3
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    .end local v0           #addGlobalListener:Z
    :cond_4
    :goto_0
    return v8

    .line 185
    .end local v1           #anchor:Landroid/view/View;
    :cond_5
    new-instance v7, Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const v11, 0x1010300

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 186
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 187
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v7, p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 190
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 194
    .restart local v1       #anchor:Landroid/view/View;
    if-eqz v1, :cond_9

    .line 195
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_6

    move v0, v8

    .line 196
    .restart local v0       #addGlobalListener:Z
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 197
    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 198
    :cond_7
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 199
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 204
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v9

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 205
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v13}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 206
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    .line 207
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 210
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 211
    .local v3, resource:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v7, :cond_4

    .line 214
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const v9, 0x108022e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v5, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 219
    .local v5, skin:Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 220
    :cond_8
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "list_selector_background"

    invoke-static {v9, v10, v12}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(I)V

    goto/16 :goto_0

    .end local v0           #addGlobalListener:Z
    .end local v3           #resource:Landroid/content/res/Resources;
    .end local v5           #skin:Ljava/lang/String;
    :cond_9
    move v8, v0

    .line 201
    goto/16 :goto_0

    .line 224
    .restart local v0       #addGlobalListener:Z
    .restart local v3       #resource:Landroid/content/res/Resources;
    .restart local v5       #skin:Ljava/lang/String;
    :cond_a
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 225
    .local v6, skinPackageResources:Landroid/content/res/Resources;
    const-string/jumbo v7, "list_selector_background"

    const-string v9, "drawable"

    invoke-virtual {v6, v7, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, resourceID:I
    if-eqz v4, :cond_b

    .line 228
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 233
    .end local v4           #resourceID:I
    .end local v6           #skinPackageResources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/ListView;->setSelector(I)V

    goto/16 :goto_0

    .line 230
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #resourceID:I
    .restart local v6       #skinPackageResources:Landroid/content/res/Resources;
    :cond_b
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "list_selector_background"

    const v11, 0x1080361

    invoke-static {v9, v10, v11}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .parameter "cleared"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 447
    :cond_0
    return-void
.end method
