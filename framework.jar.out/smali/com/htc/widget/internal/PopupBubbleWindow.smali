.class public Lcom/htc/widget/internal/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;,
        Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;
    }
.end annotation


# static fields
.field public static final EXPAND_DEFAULT:I = 0x0

.field public static final EXPAND_DOWN:I = 0x2

.field public static final EXPAND_LEFT:I = 0x3

.field public static final EXPAND_RIGHT:I = 0x4

.field public static final EXPAND_UP:I = 0x1

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final ROTATE_180_LEVEL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PopupBubbleWindow"


# instance fields
.field private dropdownLayout:Landroid/view/WindowManager$LayoutParams;

.field private isViewRemove:Z

.field private mAboveAnchor:Z

.field private mAboveTriangle:Z

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

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleHerizontalOffset:I

.field private mBubbleImageOffset:I

.field private mBubbleLandHerizontalOffset:I

.field private mBubbleLandVerticalOffset:I

.field private mBubblePortraitBottomOffset:I

.field private mBubbleVerticalOffset:I

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCustomizeTriangleOffset:I

.field private mDrawingLocation:[I

.field private mExpandDirection:I

.field private mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mListView:Landroid/widget/ListView;

.field private mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mTriangle:Landroid/graphics/drawable/Drawable;

.field private mTriangleEdgeLimit:I

.field private mTriangleView:Landroid/view/View;

.field private mTriangledOffset:I

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final minWindowHeight:I

.field private status_bar_height:I

.field private triangleLayout:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 343
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 252
    const v0, 0x201007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/16 v8, 0x1388

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    .line 156
    iput v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    .line 157
    iput v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    .line 158
    iput-boolean v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchable:Z

    .line 159
    iput-boolean v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 160
    iput-boolean v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    .line 161
    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 164
    iput-boolean v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 180
    new-array v3, v7, [I

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    .line 181
    new-array v3, v7, [I

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    .line 182
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 195
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    .line 198
    iput-boolean v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 200
    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    .line 206
    new-instance v3, Lcom/htc/widget/internal/PopupBubbleWindow$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/internal/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/internal/PopupBubbleWindow;)V

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1165
    const/16 v3, 0x64

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->minWindowHeight:I

    .line 1977
    iput-boolean v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->isViewRemove:Z

    .line 1979
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1980
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 279
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 280
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 283
    sget-object v3, Lcom/htc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x2080186

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 294
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x2080185

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x20501c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    .line 302
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 306
    .local v1, animStyle:I
    const v3, 0x20300c5

    if-ne v1, v3, :cond_0

    move v1, v4

    .end local v1           #animStyle:I
    :cond_0
    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 311
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    .line 313
    const v3, 0x20501c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    .line 315
    const v3, 0x20501c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 317
    const v3, 0x20501ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 320
    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    .line 321
    iget v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    .line 323
    const v3, 0x20501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangleEdgeLimit:I

    .line 325
    iget v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 326
    iget v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 328
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/view/View;IIZ)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    .line 156
    iput v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    .line 157
    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    .line 158
    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchable:Z

    .line 159
    iput-boolean v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 160
    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    .line 161
    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 164
    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 180
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    .line 181
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 195
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    .line 198
    iput-boolean v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 200
    iput v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    .line 206
    new-instance v0, Lcom/htc/widget/internal/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/internal/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/internal/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1165
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->minWindowHeight:I

    .line 1977
    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->isViewRemove:Z

    .line 1979
    iput-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1980
    iput-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 428
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 430
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 434
    invoke-virtual {p0, p2}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    .line 435
    invoke-virtual {p0, p3}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    .line 436
    invoke-virtual {p0, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;->setFocusable(Z)V

    .line 437
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/internal/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/internal/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/internal/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/internal/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .parameter "p"
    .parameter "p2"

    .prologue
    .line 1560
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1561
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1571
    const/4 v0, 0x0

    .line 1574
    :goto_0
    return v0

    .line 1563
    :pswitch_0
    const v0, 0x203010b

    goto :goto_0

    .line 1565
    :pswitch_1
    const v0, 0x203010a

    goto :goto_0

    .line 1567
    :pswitch_2
    const v0, 0x203010c

    goto :goto_0

    .line 1569
    :pswitch_3
    const v0, 0x203010d

    goto :goto_0

    .line 1574
    :cond_0
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_0

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1493
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1499
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1500
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1502
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mFocusable:Z

    if-nez v0, :cond_7

    .line 1503
    or-int/lit8 p1, p1, 0x8

    .line 1504
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1505
    or-int/2addr p1, v2

    .line 1510
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1511
    or-int/lit8 p1, p1, 0x10

    .line 1513
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1514
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1516
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1517
    or-int/lit16 p1, p1, 0x200

    .line 1519
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1520
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1522
    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1523
    or-int/lit16 p1, p1, 0x100

    .line 1525
    :cond_6
    return p1

    .line 1507
    :cond_7
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1508
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 2
    .parameter "curFlags"

    .prologue
    .line 1529
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1535
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1536
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1539
    :cond_0
    or-int/lit8 p1, p1, 0x8

    .line 1540
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1541
    const/high16 v0, 0x2

    or-int/2addr p1, v0

    .line 1544
    :cond_1
    or-int/lit8 p1, p1, 0x10

    .line 1547
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_2

    .line 1548
    or-int/lit16 p1, p1, 0x200

    .line 1550
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1551
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1553
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_4

    .line 1554
    or-int/lit16 p1, p1, 0x100

    .line 1556
    :cond_4
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1439
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1444
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1445
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1446
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1447
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1452
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1453
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1454
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1455
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1456
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

    .line 1458
    return-object v0

    .line 1450
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1464
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1469
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1470
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1474
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1479
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1480
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1484
    :goto_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1485
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1486
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1487
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1489
    return-object v0

    .line 1476
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1477
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1482
    :cond_2
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_1
.end method

.method private endDismissAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1984
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->isViewRemove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1993
    iput-boolean v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsShowing:Z

    .line 1994
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 1998
    :cond_0
    return-void

    .line 1992
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1993
    iput-boolean v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsShowing:Z

    .line 1994
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

    if-eqz v1, :cond_1

    .line 1995
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v1}, Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 1992
    :cond_1
    throw v0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 11
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1600
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1601
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1603
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1604
    .local v1, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1608
    .local v6, root:Landroid/view/View;
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-nez v7, :cond_0

    .line 1609
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, p4

    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v8, p4

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_0
    iput v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    .line 1614
    :cond_0
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 1616
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1617
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v7, v8

    :goto_1
    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1629
    :goto_2
    iget-boolean v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v7, :cond_6

    .line 1630
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 1632
    .local v3, displayFrameWidth:I
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    .line 1636
    .local v2, displayFrameHeight:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v5, v7, v8

    .line 1637
    .local v5, right:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int v0, v7, v8

    .line 1639
    .local v0, bottom:I
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 1642
    :cond_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    if-ge v7, v8, :cond_3

    .line 1643
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1646
    :cond_3
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 1647
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1650
    :cond_4
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupWidth:I

    if-ge v7, v8, :cond_b

    .line 1651
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1652
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1658
    :cond_5
    :goto_3
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    if-ge v7, v8, :cond_c

    .line 1660
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sub-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1662
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1705
    .end local v0           #bottom:I
    .end local v2           #displayFrameHeight:I
    .end local v3           #displayFrameWidth:I
    .end local v5           #right:I
    :cond_6
    :goto_4
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v8, 0x1100

    or-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1707
    iput-object p2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1708
    return-void

    .line 1609
    :cond_7
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 1617
    :cond_8
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_1

    .line 1622
    :cond_9
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p3

    :goto_5
    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1626
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1622
    :cond_a
    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    add-int/2addr v7, p3

    goto :goto_5

    .line 1653
    .restart local v0       #bottom:I
    .restart local v2       #displayFrameHeight:I
    .restart local v3       #displayFrameWidth:I
    .restart local v5       #right:I
    :cond_b
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v7, v3, v7

    if-le v5, v7, :cond_5

    .line 1654
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v8, v5, v3

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    sub-int/2addr v8, p3

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_3

    .line 1664
    :cond_c
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 1667
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 1673
    :cond_d
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_e

    .line 1674
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1676
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_e

    .line 1677
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1681
    :cond_e
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_f

    .line 1682
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    sub-int v4, v7, v8

    .line 1683
    .local v4, offset:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v8, v4, p4

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1685
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_f

    .line 1686
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1687
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1692
    .end local v4           #offset:I
    :cond_f
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_10

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_10

    .line 1693
    iget v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1694
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4

    .line 1697
    :cond_10
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 1698
    iget v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1699
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4
.end method

.method private findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 10
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1712
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1713
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1714
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1715
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1718
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1719
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1720
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1722
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1724
    .local v3, root:Landroid/view/View;
    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v7, :cond_1

    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v9, :cond_5

    .line 1726
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1728
    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p4

    :goto_0
    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1752
    :goto_1
    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v9, :cond_8

    .line 1753
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int v4, v5, v6

    .line 1754
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int v1, v5, v6

    .line 1755
    .local v1, end:I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v5, v4, :cond_7

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1764
    :cond_3
    :goto_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v6, 0x1100

    or-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1765
    iput-object p2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1766
    return-void

    .line 1728
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    add-int/2addr v5, v6

    add-int/2addr v5, p4

    goto :goto_0

    .line 1738
    :cond_5
    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v5, v6

    :goto_3
    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1747
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p4

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1738
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 1756
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_7
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_3

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v5, v1, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 1758
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int v4, v5, v6

    .line 1759
    .restart local v4       #start:I
    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int v1, v5, v6

    .line 1760
    .restart local v1       #end:I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v5, v4, :cond_9

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1761
    :cond_9
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_3

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v1, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2
.end method

.method private fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "p"
    .parameter "p2"

    .prologue
    .line 1782
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1783
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, indicatorXOffset:I
    const/4 v1, 0x0

    .line 1791
    .local v1, indicatorYOffset:I
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v4, :pswitch_data_0

    .line 1825
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1827
    .local v3, viewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    if-eqz v3, :cond_0

    .line 1829
    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironment()V

    .line 1831
    invoke-virtual {v3, v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->updateIndicatorOffset(II)V

    .line 1834
    :cond_0
    return-object v2

    .line 1793
    .end local v3           #viewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    :pswitch_0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1794
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1796
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1797
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1801
    :pswitch_1
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1802
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1804
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1805
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1809
    :pswitch_2
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1810
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1812
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1813
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 1817
    :pswitch_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1818
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1820
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1821
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubbleImageOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1421
    .local v0, pbvc:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1422
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->isViewRemove:Z

    .line 1424
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 1374
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1375
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1380
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1381
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1383
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1384
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1386
    const/4 v0, -0x2

    .line 1391
    :cond_2
    new-instance v3, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1393
    .local v3, popupViewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1396
    .local v2, listParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1403
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupWidth:I

    .line 1404
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    .line 1405
    return-void

    .line 1401
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2332
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2333
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2334
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2338
    :cond_0
    iput p2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    .line 2339
    iput p3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    .line 2340
    return-void
.end method

.method private setListViewAnimationType()V
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1305
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setIntroAnimationType(I)V

    .line 1308
    :goto_0
    return-void

    .line 1293
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1296
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1299
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1302
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 2317
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2318
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 2319
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2320
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 2322
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 2323
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 2324
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2326
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2327
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 18
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v15, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2235
    .local v7, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v15, v0, :cond_b

    :cond_2
    const/4 v4, 0x1

    .line 2237
    .local v4, needsUpdate:Z
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_3

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsDropdown:Z

    if-nez v15, :cond_c

    .line 2239
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 2247
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2249
    .local v10, p:Landroid/view/WindowManager$LayoutParams;
    iget v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2250
    .local v9, oldWidth:I
    iget v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2252
    .local v8, oldHeight:I
    if-eqz p5, :cond_5

    .line 2253
    const/4 v15, -0x1

    move/from16 v0, p6

    if-ne v0, v15, :cond_d

    .line 2254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 2258
    :goto_3
    const/4 v15, -0x1

    move/from16 v0, p7

    if-ne v0, v15, :cond_e

    .line 2259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 2263
    :goto_4
    move/from16 v0, p6

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2264
    move/from16 v0, p7

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2267
    :cond_5
    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2268
    .local v13, x:I
    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2270
    .local v14, y:I
    const/4 v12, 0x0

    .line 2272
    .local v12, update:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v10, v15, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2275
    .local v11, p2:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v11, v15, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2277
    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v15, v13, :cond_6

    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v14, :cond_6

    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v15, :cond_6

    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, v15, :cond_7

    .line 2278
    :cond_6
    const/4 v12, 0x1

    .line 2281
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 2282
    .local v5, newAnim:I
    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v5, v15, :cond_8

    .line 2283
    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2284
    const/4 v12, 0x1

    .line 2287
    :cond_8
    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeFlags(I)I

    move-result v6

    .line 2288
    .local v6, newFlags:I
    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v6, v15, :cond_9

    .line 2289
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2290
    const/4 v12, 0x1

    .line 2292
    :cond_9
    if-eqz v12, :cond_0

    .line 2293
    if-eqz v10, :cond_a

    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v15, :cond_a

    .line 2294
    const/16 v15, 0x64

    iput v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2296
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/widget/internal/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2235
    .end local v4           #needsUpdate:Z
    .end local v5           #newAnim:I
    .end local v6           #newFlags:I
    .end local v8           #oldHeight:I
    .end local v9           #oldWidth:I
    .end local v10           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #p2:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #update:Z
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2240
    .restart local v4       #needsUpdate:Z
    :cond_c
    if-eqz v4, :cond_4

    .line 2243
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I

    .line 2244
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 2256
    .restart local v8       #oldHeight:I
    .restart local v9       #oldWidth:I
    .restart local v10       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 2261
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupHeight:I

    goto/16 :goto_4
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1955
    invoke-direct {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1958
    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1960
    .local v2, viewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1961
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1962
    .local v1, p2:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 1964
    .end local v0           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #p2:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #viewContainer:Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 1971
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1972
    invoke-direct {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->endDismissAnimation()V

    .line 1974
    :cond_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getExpandDirection()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 11
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v10, 0x1

    .line 1897
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1898
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1900
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mDrawingLocation:[I

    .line 1901
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1903
    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-eq v8, v10, :cond_0

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    if-nez v8, :cond_3

    .line 1904
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1905
    .local v1, bottomEdge:I
    if-eqz p3, :cond_1

    .line 1906
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1907
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int v1, v8, v9

    .line 1910
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    aget v8, v0, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v1, v8

    sub-int v3, v8, p2

    .line 1912
    .local v3, distanceToBottom:I
    aget v8, v0, v10

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v4, v8, p2

    .line 1915
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1916
    .local v6, returnedHeight:I
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1917
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1918
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 1935
    .end local v3           #distanceToBottom:I
    .end local v4           #distanceToTop:I
    :cond_2
    :goto_0
    return v6

    .line 1922
    .end local v1           #bottomEdge:I
    .end local v6           #returnedHeight:I
    :cond_3
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1923
    .restart local v1       #bottomEdge:I
    if-eqz p3, :cond_4

    .line 1924
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1925
    .restart local v5       #res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const v9, 0x20501c3

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    .line 1929
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_4
    iget v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->status_bar_height:I

    .line 1930
    .local v7, topEdge:I
    sub-int v6, v1, v7

    .line 1931
    .restart local v6       #returnedHeight:I
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1932
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1933
    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    return v0
.end method

.method getTriangleOffset()I
    .locals 1

    .prologue
    .line 2178
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1360
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 873
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1284
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 530
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mAnimationStyle:I

    .line 531
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 469
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 859
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClipToScreen:Z

    .line 860
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->setClippingEnabled(Z)V

    .line 861
    return-void

    .line 860
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mClippingEnabled:Z

    .line 849
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setExpandDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1326
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I

    .line 1327
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mFocusable:Z

    .line 642
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1047
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeight:I

    .line 1048
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 505
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 677
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mInputMethodMode:I

    .line 678
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 950
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLayoutInScreen:Z

    .line 951
    return-void
.end method

.method setListViewHook(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    .line 1288
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;

    .line 2012
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 804
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 696
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSoftInputMode:I

    .line 697
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 919
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 920
    return-void

    .line 919
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 596
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchable:Z

    .line 756
    return-void
.end method

.method setTriangleOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 2174
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    .line 2175
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1088
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidth:I

    .line 1089
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 1005
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    .line 1006
    iput p2, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    .line 1007
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 962
    iput p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowLayoutType:I

    .line 963
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1187
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 9
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 1213
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1219
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1220
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1223
    :cond_2
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v6, :cond_4

    .line 1225
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1228
    :cond_4
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    if-ne v4, v6, :cond_5

    .line 1229
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidth:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    .line 1233
    :cond_5
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v6, :cond_6

    .line 1234
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeight:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    .line 1238
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/internal/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1240
    iput-boolean v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsShowing:Z

    .line 1241
    iput-boolean v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsDropdown:Z

    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1246
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    if-ne v4, v7, :cond_7

    .line 1247
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1248
    :cond_7
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v7, :cond_8

    .line 1249
    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    iput v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1251
    :cond_8
    invoke-direct {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1253
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/widget/internal/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1255
    if-eqz v1, :cond_9

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v4, :cond_9

    .line 1256
    const/16 v4, 0x64

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1259
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1262
    .local v2, p2:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/htc/widget/internal/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1265
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_a

    .line 1266
    invoke-direct {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->setListViewAnimationType()V

    .line 1269
    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1271
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1273
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsShowing:Z

    .line 1139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mIsDropdown:Z

    .line 1141
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1145
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1146
    if-nez p2, :cond_2

    .line 1147
    const/16 p2, 0x33

    .line 1149
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1150
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1151
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1152
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    if-gez v1, :cond_3

    .line 1153
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1154
    :cond_3
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    if-gez v1, :cond_4

    .line 1155
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1157
    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v1, :cond_5

    .line 1158
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1161
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2033
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 2035
    .local v3, update:Z
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2036
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 2037
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2038
    const/4 v3, 0x1

    .line 2041
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    .line 2042
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 2043
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2044
    const/4 v3, 0x1

    .line 2047
    :cond_3
    if-eqz v3, :cond_0

    .line 2048
    if-eqz v2, :cond_4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v4, :cond_4

    .line 2049
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2052
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(IIIIZ)V

    .line 2070
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2091
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(IIIIZ)V

    .line 2092
    return-void
.end method

.method public update(IIIIZ)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 2115
    if-eq p3, v7, :cond_0

    .line 2116
    iput p3, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    .line 2117
    invoke-virtual {p0, p3}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    .line 2120
    :cond_0
    if-eq p4, v7, :cond_1

    .line 2121
    iput p4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    .line 2122
    invoke-virtual {p0, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    .line 2125
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 2171
    :cond_2
    :goto_0
    return-void

    .line 2129
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2131
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 2133
    .local v5, update:Z
    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWidthMode:I

    .line 2134
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 2135
    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2136
    const/4 v5, 0x1

    .line 2138
    :cond_4
    iget v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mHeightMode:I

    .line 2139
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 2140
    iput v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2141
    const/4 v5, 0x1

    .line 2143
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 2144
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2145
    const/4 v5, 0x1

    .line 2148
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 2149
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2150
    const/4 v5, 0x1

    .line 2153
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 2154
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 2155
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2156
    const/4 v5, 0x1

    .line 2159
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    .line 2160
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 2161
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2162
    const/4 v5, 0x1

    .line 2164
    :cond_9
    if-eqz v5, :cond_2

    .line 2165
    if-eqz v4, :cond_a

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v6, :cond_a

    .line 2166
    const/16 v6, 0x64

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2168
    :cond_a
    iget-object v6, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2133
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastWidth:I

    goto :goto_1

    .line 2138
    .restart local v1       #finalWidth:I
    :cond_c
    iget v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 2196
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 2197
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

    .line 2224
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 2225
    return-void
.end method
