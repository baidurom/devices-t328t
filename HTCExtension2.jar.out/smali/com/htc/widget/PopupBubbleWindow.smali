.class public Lcom/htc/widget/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;,
        Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
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

.field private static IS_TABLET:Z = false

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

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v0

    sput-boolean v0, Lcom/htc/widget/PopupBubbleWindow;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 315
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 224
    const v0, 0x201007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 238
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

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v6, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 128
    iput v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 129
    iput v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 130
    iput-boolean v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 131
    iput-boolean v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 132
    iput-boolean v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 133
    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 136
    iput-boolean v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 152
    new-array v3, v7, [I

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 153
    new-array v3, v7, [I

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 154
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 170
    iput-boolean v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 172
    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 178
    new-instance v3, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1094
    const/16 v3, 0x64

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 2042
    iput-boolean v5, p0, Lcom/htc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 2044
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2045
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 251
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 252
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 255
    sget-object v3, Lcom/htc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 259
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 261
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x2080186

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 266
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x2080185

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x20501c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    .line 274
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 278
    .local v1, animStyle:I
    const v3, 0x20300c5

    if-ne v1, v3, :cond_0

    move v1, v4

    .end local v1           #animStyle:I
    :cond_0
    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 283
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 285
    const v3, 0x20501c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    .line 287
    const v3, 0x20501c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 289
    const v3, 0x20501ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 292
    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    .line 293
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    .line 295
    const v3, 0x20501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    .line 297
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 298
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;IIZ)V

    .line 376
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

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 128
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 129
    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 130
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 131
    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 132
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 133
    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 136
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 152
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 153
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 170
    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 172
    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 178
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1094
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 2042
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 2044
    iput-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2045
    iput-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 402
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 406
    invoke-virtual {p0, p2}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 407
    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 408
    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .parameter "p"
    .parameter "p2"

    .prologue
    .line 1477
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1478
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1488
    const/4 v0, 0x0

    .line 1491
    :goto_0
    return v0

    .line 1480
    :pswitch_0
    const v0, 0x203010b

    goto :goto_0

    .line 1482
    :pswitch_1
    const v0, 0x203010a

    goto :goto_0

    .line 1484
    :pswitch_2
    const v0, 0x203010c

    goto :goto_0

    .line 1486
    :pswitch_3
    const v0, 0x203010d

    goto :goto_0

    .line 1491
    :cond_0
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_0

    .line 1478
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

    .line 1410
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1416
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1417
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1419
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    if-nez v0, :cond_7

    .line 1420
    or-int/lit8 p1, p1, 0x8

    .line 1421
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1422
    or-int/2addr p1, v2

    .line 1427
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1428
    or-int/lit8 p1, p1, 0x10

    .line 1430
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1431
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1433
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1434
    or-int/lit16 p1, p1, 0x200

    .line 1436
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1437
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1439
    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1440
    or-int/lit16 p1, p1, 0x100

    .line 1442
    :cond_6
    return p1

    .line 1424
    :cond_7
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1425
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 2
    .parameter "curFlags"

    .prologue
    .line 1446
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1452
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1453
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1456
    :cond_0
    or-int/lit8 p1, p1, 0x8

    .line 1457
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1458
    const/high16 v0, 0x2

    or-int/2addr p1, v0

    .line 1461
    :cond_1
    or-int/lit8 p1, p1, 0x10

    .line 1464
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_2

    .line 1465
    or-int/lit16 p1, p1, 0x200

    .line 1467
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1468
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1470
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_4

    .line 1471
    or-int/lit16 p1, p1, 0x100

    .line 1473
    :cond_4
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1356
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1361
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1362
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1363
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1364
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1369
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1370
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1371
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1372
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1373
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

    .line 1375
    return-object v0

    .line 1367
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1381
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1386
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1387
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1391
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1396
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1397
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1401
    :goto_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1402
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1403
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1404
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1406
    return-object v0

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1394
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1399
    :cond_2
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_1
.end method

.method private endDismissAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2049
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2050
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->isViewRemove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2060
    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2061
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 2062
    const-string v1, "PopupBubbleWindow"

    const-string v2, "call onDismissListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v1}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2060
    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2061
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 2062
    const-string v1, "PopupBubbleWindow"

    const-string v2, "call onDismissListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v1}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 2059
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2060
    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2061
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    .line 2062
    const-string v2, "PopupBubbleWindow"

    const-string v3, "call onDismissListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_1
    throw v1
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 1
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1517
    sget-boolean v0, Lcom/htc/widget/PopupBubbleWindow;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 1518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPositionForTablet(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1522
    :goto_0
    return-void

    .line 1520
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPositionForPhone(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    goto :goto_0
.end method

.method private findDropDownPositionForPhone(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 11
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1669
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1670
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1672
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1673
    .local v1, displayFrame:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1677
    .local v6, root:Landroid/view/View;
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v7, :cond_0

    .line 1678
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, p4

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v8, p4

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_0
    iput v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1683
    :cond_0
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 1685
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1686
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v7, v8

    :goto_1
    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1698
    :goto_2
    iget-boolean v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v7, :cond_6

    .line 1699
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 1701
    .local v3, displayFrameWidth:I
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    .line 1705
    .local v2, displayFrameHeight:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v5, v7, v8

    .line 1706
    .local v5, right:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v0, v7, v8

    .line 1708
    .local v0, bottom:I
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 1711
    :cond_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    if-ge v7, v8, :cond_3

    .line 1712
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1715
    :cond_3
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 1716
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1719
    :cond_4
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    if-ge v7, v8, :cond_b

    .line 1720
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1721
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1727
    :cond_5
    :goto_3
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    if-ge v7, v8, :cond_c

    .line 1729
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sub-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1731
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1774
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

    .line 1776
    iput-object p2, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1777
    return-void

    .line 1678
    :cond_7
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 1686
    :cond_8
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, p4

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_1

    .line 1691
    :cond_9
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p3

    :goto_5
    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1695
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1691
    :cond_a
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    add-int/2addr v7, p3

    goto :goto_5

    .line 1722
    .restart local v0       #bottom:I
    .restart local v2       #displayFrameHeight:I
    .restart local v3       #displayFrameWidth:I
    .restart local v5       #right:I
    :cond_b
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v7, v3, v7

    if-le v5, v7, :cond_5

    .line 1723
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v8, v5, v3

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    sub-int/2addr v8, p3

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_3

    .line 1733
    :cond_c
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 1736
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_4

    .line 1742
    :cond_d
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_e

    .line 1743
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1745
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_e

    .line 1746
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1750
    :cond_e
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_f

    .line 1751
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v8, v9

    sub-int v4, v7, v8

    .line 1752
    .local v4, offset:I
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v8, v4, p4

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1754
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_f

    .line 1755
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1756
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1761
    .end local v4           #offset:I
    :cond_f
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_10

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_10

    .line 1762
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v8, v9

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1763
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v7, v8

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4

    .line 1766
    :cond_10
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 1767
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1768
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v7, p3

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4
.end method

.method private findDropDownPositionForTablet(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 15
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1526
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1527
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1529
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1530
    .local v2, displayFrame:Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1532
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v11, :cond_0

    .line 1533
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v11, v11, p4

    iget-object v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int v12, v12, p4

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_0
    iput v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1538
    :cond_0
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 1540
    :cond_1
    const/4 v10, 0x0

    .line 1542
    .local v10, touchEdge:Z
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    sub-int v9, v11, v12

    .line 1543
    .local v9, side:I
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int v5, v11, v12

    .line 1544
    .local v5, leftSideLimit:I
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v5

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    mul-int/lit8 v12, v12, 0x2

    add-int v8, v11, v12

    .line 1546
    .local v8, rightSideLimit:I
    if-lez v9, :cond_a

    .line 1548
    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    if-ge v11, v5, :cond_9

    .line 1549
    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1550
    const/4 v10, 0x1

    .line 1570
    :goto_1
    if-nez v10, :cond_2

    .line 1571
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int v11, v11, p3

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1573
    :cond_2
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int v11, v11, p4

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v11, v12

    :goto_2
    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1585
    .end local v5           #leftSideLimit:I
    .end local v8           #rightSideLimit:I
    .end local v9           #side:I
    .end local v10           #touchEdge:Z
    :goto_3
    iget-boolean v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v11, :cond_7

    .line 1586
    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v11, v12

    .line 1588
    .local v4, displayFrameWidth:I
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v11, v12

    .line 1592
    .local v3, displayFrameHeight:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v7, v11, v12

    .line 1593
    .local v7, right:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v1, v11, v12

    .line 1595
    .local v1, bottom:I
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_12

    .line 1598
    :cond_3
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    if-ge v11, v12, :cond_4

    .line 1599
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1602
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_5

    .line 1603
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1606
    :cond_5
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v4, v11

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    if-ge v11, v12, :cond_10

    .line 1607
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int v11, v11, p3

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1608
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v4, v11

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1614
    :cond_6
    :goto_4
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    if-ge v11, v12, :cond_11

    .line 1616
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v11, p4

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1618
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int v11, v11, p4

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1661
    .end local v1           #bottom:I
    .end local v3           #displayFrameHeight:I
    .end local v4           #displayFrameWidth:I
    .end local v7           #right:I
    :cond_7
    :goto_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v12, 0x1100

    or-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1663
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1664
    return-void

    .line 1533
    :cond_8
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 1552
    .restart local v5       #leftSideLimit:I
    .restart local v8       #rightSideLimit:I
    .restart local v9       #side:I
    .restart local v10       #touchEdge:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1556
    :cond_a
    if-gez v9, :cond_c

    .line 1558
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v11, v12

    if-le v11, v8, :cond_b

    .line 1559
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1560
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1562
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1567
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1573
    :cond_d
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int v11, v11, p4

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    goto/16 :goto_2

    .line 1578
    .end local v5           #leftSideLimit:I
    .end local v8           #rightSideLimit:I
    .end local v9           #side:I
    .end local v10           #touchEdge:Z
    :cond_e
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_f

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v11, v12

    add-int v11, v11, p3

    :goto_6
    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1582
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int v11, v11, p4

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1578
    :cond_f
    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v11, v12

    add-int v11, v11, p3

    goto :goto_6

    .line 1609
    .restart local v1       #bottom:I
    .restart local v3       #displayFrameHeight:I
    .restart local v4       #displayFrameWidth:I
    .restart local v7       #right:I
    :cond_10
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v11, v4, v11

    if-le v7, v11, :cond_6

    .line 1610
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v12, v7, v4

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v12, v13

    sub-int v12, v12, p3

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4

    .line 1620
    :cond_11
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_7

    .line 1623
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_5

    .line 1629
    :cond_12
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_13

    .line 1630
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v11, v12

    add-int v11, v11, p4

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1632
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_13

    .line 1633
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1637
    :cond_13
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_14

    .line 1638
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v12, v13

    sub-int v6, v11, v12

    .line 1639
    .local v6, offset:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v12, v6, p4

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1641
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_14

    .line 1642
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v11, v12

    add-int v11, v11, p4

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1643
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1648
    .end local v6           #offset:I
    :cond_14
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_15

    .line 1649
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1650
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v11, v12

    add-int v11, v11, p3

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5

    .line 1653
    :cond_15
    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_7

    .line 1654
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1655
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v11, v11, p3

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5
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

    .line 1781
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1782
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1783
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1784
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1787
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1788
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1789
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1791
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1793
    .local v3, root:Landroid/view/View;
    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v7, :cond_1

    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v9, :cond_5

    .line 1795
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1797
    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p4

    :goto_0
    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1821
    :goto_1
    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v9, :cond_8

    .line 1822
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int v4, v5, v6

    .line 1823
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int v1, v5, v6

    .line 1824
    .local v1, end:I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v5, v4, :cond_7

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1833
    :cond_3
    :goto_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v6, 0x1100

    or-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1834
    iput-object p2, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1835
    return-void

    .line 1797
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    add-int/2addr v5, v6

    add-int/2addr v5, p4

    goto :goto_0

    .line 1807
    :cond_5
    iget v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v5, v6

    :goto_3
    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1816
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p4

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1807
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 1825
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_7
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_3

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v5, v1, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 1827
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int v4, v5, v6

    .line 1828
    .restart local v4       #start:I
    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int v1, v5, v6

    .line 1829
    .restart local v1       #end:I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v5, v4, :cond_9

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1830
    :cond_9
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_3

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v5, v1, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2
.end method

.method private fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "p"
    .parameter "p2"

    .prologue
    .line 1851
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1852
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1855
    const/4 v0, 0x0

    .line 1856
    .local v0, indicatorXOffset:I
    const/4 v1, 0x0

    .line 1860
    .local v1, indicatorYOffset:I
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v4, :pswitch_data_0

    .line 1894
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1896
    .local v3, viewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    if-eqz v3, :cond_0

    .line 1898
    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironment()V

    .line 1900
    invoke-virtual {v3, v0, v1}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->updateIndicatorOffset(II)V

    .line 1903
    :cond_0
    return-object v2

    .line 1862
    .end local v3           #viewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    :pswitch_0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1863
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1865
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1866
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1870
    :pswitch_1
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1871
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1873
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1874
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1878
    :pswitch_2
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1879
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1881
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1882
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 1886
    :pswitch_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v4, v5

    .line 1887
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v5

    .line 1889
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1890
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 1860
    nop

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
    .line 1337
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1338
    .local v0, pbvc:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1339
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 1341
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 1291
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1292
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1297
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1298
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1300
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1301
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1303
    const/4 v0, -0x2

    .line 1308
    :cond_2
    new-instance v3, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1310
    .local v3, popupViewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1313
    .local v2, listParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1316
    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1320
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    .line 1321
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    .line 1322
    return-void

    .line 1318
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 2392
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2394
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2395
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2396
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2397
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2400
    :cond_0
    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 2401
    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    .line 2402
    return-void
.end method

.method private setListViewAnimationType()V
    .locals 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1226
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    .line 1229
    :goto_0
    return-void

    .line 1214
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1217
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1220
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1223
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    goto :goto_0

    .line 1212
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
    .line 2379
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2380
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 2381
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2382
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 2384
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 2385
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 2386
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2388
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2389
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 20
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2293
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 2366
    :cond_0
    :goto_0
    return-void

    .line 2298
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2299
    .local v7, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_b

    :cond_2
    const/4 v4, 0x1

    .line 2301
    .local v4, needsUpdate:Z
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 2303
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 2311
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2313
    .local v10, p:Landroid/view/WindowManager$LayoutParams;
    iget v9, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2314
    .local v9, oldWidth:I
    iget v8, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2316
    .local v8, oldHeight:I
    if-eqz p5, :cond_5

    .line 2317
    const/16 v17, -0x1

    move/from16 v0, p6

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 2318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 2322
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, p7

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 2327
    :goto_4
    move/from16 v0, p6

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2328
    move/from16 v0, p7

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2331
    :cond_5
    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2332
    .local v15, x:I
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v16, v0

    .line 2334
    .local v16, y:I
    const/4 v14, 0x0

    .line 2336
    .local v14, update:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2339
    .local v11, p2:Landroid/view/WindowManager$LayoutParams;
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2340
    .local v12, triangleX:I
    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2341
    .local v13, triangleY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2343
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v15, :cond_6

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v12, :cond_6

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v13, :cond_7

    .line 2344
    :cond_6
    const/4 v14, 0x1

    .line 2347
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 2348
    .local v5, newAnim:I
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v5, v0, :cond_8

    .line 2349
    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2350
    const/4 v14, 0x1

    .line 2353
    :cond_8
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v6

    .line 2354
    .local v6, newFlags:I
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_9

    .line 2355
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2356
    const/4 v14, 0x1

    .line 2358
    :cond_9
    if-eqz v14, :cond_0

    .line 2359
    if-eqz v10, :cond_a

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 2360
    const/16 v17, 0x64

    move/from16 v0, v17

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2362
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2299
    .end local v4           #needsUpdate:Z
    .end local v5           #newAnim:I
    .end local v6           #newFlags:I
    .end local v8           #oldHeight:I
    .end local v9           #oldWidth:I
    .end local v10           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #p2:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #triangleX:I
    .end local v13           #triangleY:I
    .end local v14           #update:Z
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2304
    .restart local v4       #needsUpdate:Z
    :cond_c
    if-eqz v4, :cond_4

    .line 2307
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 2308
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 2320
    .restart local v8       #oldHeight:I
    .restart local v9       #oldWidth:I
    .restart local v10       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 2325
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    goto/16 :goto_4
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2020
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2023
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 2025
    .local v2, viewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2026
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2027
    .local v1, p2:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 2029
    .end local v0           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #p2:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #viewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 2036
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2037
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V

    .line 2039
    :cond_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getExpandDirection()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1943
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

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

    .line 1966
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1967
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1969
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 1970
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1972
    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v8, v10, :cond_0

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v8, :cond_3

    .line 1973
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1974
    .local v1, bottomEdge:I
    if-eqz p3, :cond_1

    .line 1975
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1976
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int v1, v8, v9

    .line 1979
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    aget v8, v0, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v1, v8

    sub-int v3, v8, p2

    .line 1981
    .local v3, distanceToBottom:I
    aget v8, v0, v10

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v4, v8, p2

    .line 1984
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1985
    .local v6, returnedHeight:I
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1986
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1987
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 2004
    .end local v3           #distanceToBottom:I
    .end local v4           #distanceToTop:I
    :cond_2
    :goto_0
    return v6

    .line 1991
    .end local v1           #bottomEdge:I
    .end local v6           #returnedHeight:I
    :cond_3
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1992
    .restart local v1       #bottomEdge:I
    if-eqz p3, :cond_4

    .line 1993
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1994
    .restart local v5       #res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const v9, 0x20501c3

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    .line 1998
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_4
    iget v7, p0, Lcom/htc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 1999
    .local v7, topEdge:I
    sub-int v6, v1, v7

    .line 2000
    .restart local v6       #returnedHeight:I
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 2001
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2002
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    return v0
.end method

.method getTriangleOffset()I
    .locals 1

    .prologue
    .line 2242
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 817
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 818
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1205
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 498
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 499
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 437
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    .line 805
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->setClippingEnabled(Z)V

    .line 806
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 793
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setExpandDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1243
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1244
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    .line 598
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 984
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    .line 985
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 473
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 629
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 630
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    .line 896
    return-void
.end method

.method setListViewHook(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    .line 1209
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 2076
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 748
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 648
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 649
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 864
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 865
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 556
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 704
    return-void
.end method

.method setTriangleOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 2238
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    .line 2239
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1021
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    .line 1022
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 946
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 947
    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 948
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 907
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 908
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1112
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

    .line 1134
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1140
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1141
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1144
    :cond_2
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v6, :cond_4

    .line 1146
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1149
    :cond_4
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-ne v4, v6, :cond_5

    .line 1150
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    .line 1154
    :cond_5
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v6, :cond_6

    .line 1155
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    .line 1159
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1161
    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 1162
    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1167
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-ne v4, v7, :cond_7

    .line 1168
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1169
    :cond_7
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v4, v7, :cond_8

    .line 1170
    iget v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1172
    :cond_8
    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1174
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1176
    if-eqz v1, :cond_9

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v4, :cond_9

    .line 1177
    const/16 v4, 0x64

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1180
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1183
    .local v2, p2:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1186
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v4, :cond_a

    .line 1187
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->setListViewAnimationType()V

    .line 1190
    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1192
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1194
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 1068
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1074
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1075
    if-nez p2, :cond_2

    .line 1076
    const/16 p2, 0x33

    .line 1078
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1079
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1080
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1081
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v1, :cond_3

    .line 1082
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1083
    :cond_3
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v1, :cond_4

    .line 1084
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1086
    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_5

    .line 1087
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1090
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2094
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2097
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 2099
    .local v3, update:Z
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v5}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2100
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 2101
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2102
    const/4 v3, 0x1

    .line 2105
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    .line 2106
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 2107
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2108
    const/4 v3, 0x1

    .line 2111
    :cond_3
    if-eqz v3, :cond_0

    .line 2112
    if-eqz v2, :cond_4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v4, :cond_4

    .line 2113
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2116
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 2134
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2155
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 2156
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

    .line 2179
    if-eq p3, v7, :cond_0

    .line 2180
    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    .line 2181
    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 2184
    :cond_0
    if-eq p4, v7, :cond_1

    .line 2185
    iput p4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    .line 2186
    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 2189
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 2235
    :cond_2
    :goto_0
    return-void

    .line 2193
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2195
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 2197
    .local v5, update:Z
    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 2198
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 2199
    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2200
    const/4 v5, 0x1

    .line 2202
    :cond_4
    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 2203
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 2204
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2205
    const/4 v5, 0x1

    .line 2207
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 2208
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2209
    const/4 v5, 0x1

    .line 2212
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 2213
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2214
    const/4 v5, 0x1

    .line 2217
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v6}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 2218
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 2219
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2220
    const/4 v5, 0x1

    .line 2223
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    .line 2224
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 2225
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2226
    const/4 v5, 0x1

    .line 2228
    :cond_9
    if-eqz v5, :cond_2

    .line 2229
    if-eqz v4, :cond_a

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v6, :cond_a

    .line 2230
    const/16 v6, 0x64

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2232
    :cond_a
    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v8}, Lcom/htc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2197
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    goto :goto_1

    .line 2202
    .restart local v1       #finalWidth:I
    :cond_c
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 2260
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 2261
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

    .line 2288
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 2289
    return-void
.end method
