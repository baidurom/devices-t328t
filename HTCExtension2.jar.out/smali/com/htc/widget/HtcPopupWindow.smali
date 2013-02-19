.class public Lcom/htc/widget/HtcPopupWindow;
.super Landroid/widget/PopupWindow;
.source "HtcPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;,
        Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mPopupChangeListener:Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mWidthMode:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/htc/widget/HtcPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;II)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 121
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLayoutInsetDecor:Z

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    .line 75
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 81
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mIgnoreCheekPress:Z

    .line 91
    new-instance v0, Lcom/htc/widget/HtcPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcPopupWindow$1;-><init>(Lcom/htc/widget/HtcPopupWindow;)V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 140
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    .line 141
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;II)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLayoutInsetDecor:Z

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    .line 75
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 81
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mIgnoreCheekPress:Z

    .line 91
    new-instance v0, Lcom/htc/widget/HtcPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcPopupWindow$1;-><init>(Lcom/htc/widget/HtcPopupWindow;)V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    .line 212
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcPopupWindow;->setContentView(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcPopupWindow;->setWidth(I)V

    .line 216
    invoke-virtual {p0, p3}, Lcom/htc/widget/HtcPopupWindow;->setHeight(I)V

    .line 217
    invoke-virtual {p0, p4}, Lcom/htc/widget/HtcPopupWindow;->setFocusable(Z)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcPopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcPopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcPopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcPopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/widget/HtcPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getAnimationStyle()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 641
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 642
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e0

    .line 648
    :goto_0
    return v0

    .line 642
    :cond_0
    const v0, 0x10301df

    goto :goto_0

    .line 646
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getAnimationStyle()I

    move-result v0

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 596
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 604
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 605
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 608
    or-int/lit8 p1, p1, 0x8

    .line 609
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 610
    or-int/2addr p1, v2

    .line 615
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isTouchable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    or-int/lit8 p1, p1, 0x10

    .line 618
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isOutsideTouchable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 621
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isClippingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 622
    or-int/lit16 p1, p1, 0x200

    .line 624
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 625
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isLayoutInScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    or-int/lit16 p1, p1, 0x100

    .line 630
    :cond_6
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 631
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 633
    :cond_7
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 634
    or-int/lit8 p1, p1, 0x20

    .line 636
    :cond_8
    return p1

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 613
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 573
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 578
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 579
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 580
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 581
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 586
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 587
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getWindowLayoutType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 588
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 589
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 592
    return-object v0

    .line 584
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 23
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 669
    .local v6, anchorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v20, v20, p3

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v20, v20, v6

    add-int v20, v20, p4

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 673
    const/4 v12, 0x0

    .line 675
    .local v12, onTop:Z
    const/16 v20, 0x33

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 678
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 679
    .local v10, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 683
    .local v16, root:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v20, v20, v21

    add-int v17, v20, p4

    .line 685
    .local v17, screenY:I
    const/4 v12, 0x1

    .line 686
    const/16 v20, 0x53

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 687
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-int v20, v20, v21

    add-int v20, v20, p4

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 689
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcPopupWindow;->mPopupWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v21

    sub-int v20, v20, v21

    if-lez v20, :cond_2

    .line 694
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcPopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v18

    .line 696
    .local v18, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v19

    .line 697
    .local v19, scrollY:I
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    add-int v20, v20, v18

    add-int v20, v20, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcPopupWindow;->mPopupHeight:I

    move/from16 v21, v0

    add-int v21, v21, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, p4

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 699
    .local v14, r:Landroid/graphics/Rect;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 704
    .end local v14           #r:Landroid/graphics/Rect;
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v20, v20, p3

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    add-int v20, v20, p4

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    .line 712
    .local v9, contentView:Landroid/view/View;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 713
    .local v8, contentRootView:Landroid/view/View;
    :goto_0
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 714
    .local v7, contentHeight:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-int v20, v20, p4

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 715
    .local v4, AboveSpace:I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-int v20, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v5, v20, p4

    .line 717
    .local v5, BelowSpace:I
    if-lez v7, :cond_8

    if-ge v7, v4, :cond_8

    .line 718
    const/4 v12, 0x1

    .line 723
    :goto_2
    if-eqz v12, :cond_a

    .line 724
    const/16 v20, 0x53

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 725
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-int v20, v20, v21

    add-int v20, v20, p4

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 732
    .end local v4           #AboveSpace:I
    .end local v5           #BelowSpace:I
    .end local v7           #contentHeight:I
    .end local v8           #contentRootView:Landroid/view/View;
    .end local v9           #contentView:Landroid/view/View;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcPopupWindow;->mClipToScreen:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 733
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v11, v20, v21

    .line 735
    .local v11, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 736
    .local v15, right:I
    if-le v15, v11, :cond_3

    .line 737
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    sub-int v21, v15, v11

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 739
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 740
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 741
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 744
    :cond_4
    if-eqz v12, :cond_b

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mScreenLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v20, v20, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcPopupWindow;->mPopupHeight:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 746
    .local v13, popupTop:I
    if-gez v13, :cond_5

    .line 747
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v20, v0

    add-int v20, v20, v13

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 754
    .end local v11           #displayFrameWidth:I
    .end local v13           #popupTop:I
    .end local v15           #right:I
    :cond_5
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x1000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 756
    return v12

    .line 712
    .restart local v9       #contentView:Landroid/view/View;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 713
    .restart local v8       #contentRootView:Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 720
    .restart local v4       #AboveSpace:I
    .restart local v5       #BelowSpace:I
    .restart local v7       #contentHeight:I
    :cond_8
    if-ge v5, v4, :cond_9

    const/4 v12, 0x1

    :goto_5
    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 727
    :cond_a
    const/16 v20, 0x33

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcPopupWindow;->mDrawingLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    add-int v20, v20, p4

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 750
    .end local v4           #AboveSpace:I
    .end local v5           #BelowSpace:I
    .end local v7           #contentHeight:I
    .end local v8           #contentRootView:Landroid/view/View;
    .end local v9           #contentView:Landroid/view/View;
    .restart local v11       #displayFrameWidth:I
    .restart local v15       #right:I
    :cond_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 560
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 517
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 518
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 523
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 524
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 525
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 527
    const/4 v0, -0x2

    .line 532
    :cond_2
    new-instance v3, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;-><init>(Lcom/htc/widget/HtcPopupWindow;Landroid/content/Context;)V

    .line 533
    .local v3, popupViewContainer:Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 536
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iput-object v3, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    .line 543
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupWidth:I

    .line 544
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupHeight:I

    .line 545
    return-void

    .line 541
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->unregisterForScrollChanged()V

    .line 1022
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1023
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1024
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1028
    :cond_0
    iput p2, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I

    .line 1029
    iput p3, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I

    .line 1030
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1008
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1009
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1012
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1014
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/htc/widget/HtcPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1016
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1017
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 970
    .local v8, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_7

    :cond_2
    const/4 v7, 0x1

    .line 971
    .local v7, needsUpdate:Z
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    if-eqz v7, :cond_8

    iget-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mIsDropdown:Z

    if-nez v1, :cond_8

    .line 972
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/widget/HtcPopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 979
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 981
    .local v9, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 982
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    .line 983
    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 987
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_a

    .line 988
    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 994
    :cond_5
    :goto_4
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 995
    .local v10, x:I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 997
    .local v11, y:I
    if-eqz p2, :cond_b

    .line 998
    move/from16 v0, p4

    invoke-direct {p0, p1, v9, p3, v0}, Lcom/htc/widget/HtcPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindow;->updateAboveAnchor(Z)V

    .line 1003
    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v1, :cond_6

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/HtcPopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 970
    .end local v7           #needsUpdate:Z
    .end local v9           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 973
    .restart local v7       #needsUpdate:Z
    :cond_8
    if-eqz v7, :cond_4

    .line 975
    iput p3, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I

    .line 976
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 985
    .restart local v9       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 990
    :cond_a
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1000
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I

    iget v2, p0, Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v9, v1, v2}, Lcom/htc/widget/HtcPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1003
    :cond_c
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 474
    iput-boolean p1, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    .line 476
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 481
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mIsShowing:Z

    .line 770
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->unregisterForScrollChanged()V

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 778
    :cond_0
    iput-object v3, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    .line 780
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 785
    :cond_1
    return-void

    .line 775
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 778
    :cond_2
    iput-object v3, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    .line 780
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPopupChangeListener()Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupChangeListener:Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;

    return-object v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mIsShowing:Z

    return v0
.end method

.method onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getPopupChangeListener()Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->getPopupChangeListener()Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;->onSizeChanged(IIII)V

    .line 1177
    :cond_0
    return-void
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/htc/widget/HtcPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 302
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/htc/widget/HtcPopupWindow;->mClipToScreen:Z

    .line 291
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcPopupWindow;->setClippingEnabled(Z)V

    .line 292
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mIgnoreCheekPress:Z

    .line 233
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/htc/widget/HtcPopupWindow;->mLayoutInsetDecor:Z

    .line 319
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 794
    return-void
.end method

.method protected setPopupChangeListener(Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;)V
    .locals 0
    .parameter "popupChangeListener"

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupChangeListener:Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;

    .line 1191
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 280
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 327
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcPopupWindow;->mNotTouchModal:Z

    .line 328
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 353
    iput p1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    .line 354
    iput p2, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    .line 355
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/HtcPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 433
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 3
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v2, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcPopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 456
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mIsShowing:Z

    .line 457
    iput-boolean v2, p0, Lcom/htc/widget/HtcPopupWindow;->mIsDropdown:Z

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 460
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 462
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/widget/HtcPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindow;->updateAboveAnchor(Z)V

    .line 464
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 465
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 469
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->unregisterForScrollChanged()V

    .line 402
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mIsShowing:Z

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcPopupWindow;->mIsDropdown:Z

    .line 405
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcPopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 406
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 408
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 409
    if-nez p2, :cond_2

    .line 410
    const/16 p2, 0x33

    .line 412
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 413
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 414
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 415
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    :cond_3
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 382
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 811
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 813
    .local v3, update:Z
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->computeAnimationResource()I

    move-result v0

    .line 814
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 815
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 816
    const/4 v3, 0x1

    .line 819
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcPopupWindow;->computeFlags(I)I

    move-result v1

    .line 820
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 821
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 822
    const/4 v3, 0x1

    .line 825
    :cond_3
    if-eqz v3, :cond_0

    .line 826
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 841
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcPopupWindow;->update(IIIIZ)V

    .line 842
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 856
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcPopupWindow;->update(IIIIZ)V

    .line 857
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 873
    if-eq p3, v7, :cond_0

    .line 874
    iput p3, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    .line 875
    invoke-virtual {p0, p3}, Lcom/htc/widget/HtcPopupWindow;->setWidth(I)V

    .line 878
    :cond_0
    if-eq p4, v7, :cond_1

    .line 879
    iput p4, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    .line 880
    invoke-virtual {p0, p4}, Lcom/htc/widget/HtcPopupWindow;->setHeight(I)V

    .line 883
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 928
    :cond_2
    :goto_0
    return-void

    .line 887
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 889
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 891
    .local v5, update:Z
    iget v6, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mWidthMode:I

    .line 892
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 893
    iput v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 894
    const/4 v5, 0x1

    .line 897
    :cond_4
    iget v6, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mHeightMode:I

    .line 898
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 899
    iput v0, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 900
    const/4 v5, 0x1

    .line 903
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 904
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 905
    const/4 v5, 0x1

    .line 908
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 909
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    const/4 v5, 0x1

    .line 913
    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;->computeAnimationResource()I

    move-result v2

    .line 914
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 915
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 916
    const/4 v5, 0x1

    .line 919
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindow;->computeFlags(I)I

    move-result v3

    .line 920
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 921
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 922
    const/4 v5, 0x1

    .line 925
    :cond_9
    if-eqz v5, :cond_2

    .line 926
    iget-object v6, p0, Lcom/htc/widget/HtcPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 891
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget v1, p0, Lcom/htc/widget/HtcPopupWindow;->mLastWidth:I

    goto :goto_1

    .line 897
    .restart local v1       #finalWidth:I
    :cond_b
    iget v0, p0, Lcom/htc/widget/HtcPopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 940
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcPopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 941
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 959
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcPopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 960
    return-void
.end method
