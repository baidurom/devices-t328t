.class public Lcom/htc/widget/TabSwitchWidget;
.super Landroid/widget/RelativeLayout;
.source "TabSwitchWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;,
        Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_SCREEN_READY:I

.field public static TAB_INFO_IMAGE:I

.field public static TAB_INFO_TEXT:I


# instance fields
.field private AUTO_HIDE_DURATION:I

.field private final LOG_TAG:Ljava/lang/String;

.field private isSelectTab:Z

.field private mAlphaZero_Gap:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBeforeIndex:I

.field private mBeforeX:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCatagoryInfo:Landroid/widget/LinearLayout;

.field private mCheckMultTouch:Z

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDisplay:Landroid/view/Display;

.field private mEndPos:I

.field private mFingerMoveArea:I

.field private mFocusMode:I

.field private mH:Landroid/os/Handler;

.field public mHandler:Landroid/os/Handler;

.field private mHdpi:Z

.field private mIconRect:Landroid/graphics/Rect;

.field private mIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mInfoText:Landroid/widget/TextView;

.field private mIsBeforeShowCounter:Z

.field private mIsVaildIndex:Z

.field private mJumpNextId:I

.field private mJumpTab:Z

.field private mKeepX:I

.field private mKeyPaddingJumpTab:Z

.field private mLandscapeMode:Z

.field private mLastMotionX:F

.field private mLdpi:Z

.field private mLockTouchMove:Z

.field private mMakeBitmap:Landroid/graphics/Bitmap;

.field private mMdpi:Z

.field private mNowCountView:Landroid/view/View;

.field private mNowIconView:Landroid/widget/ImageView;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

.field mPanelWidth:I

.field private mRefreshIndex:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollXStart:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedTab:I

.field private mSelectedWidth:I

.field private mSelected_Gap:I

.field private mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

.field private mShow:Ljava/lang/Runnable;

.field private mShowTabNum:I

.field private mStartPos:I

.field private mSwitchInfo:Landroid/view/View;

.field private mSwitchWidget:Landroid/view/View;

.field private mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

.field private mSwitcher:Landroid/widget/RelativeLayout;

.field private mTabAreaWidth:I

.field private mTabCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHint:Z

.field private mTabIconWidth:I

.field private mTabRect:Landroid/graphics/Rect;

.field private mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

.field private mTempOffset:I

.field private mTextLargeSize:I

.field private mTextSmallSize:I

.field private mTouchDown:Z

.field private mTouchUp:Z

.field private mValidTouch:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidgetHeight:I

.field private mWidgetWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 269
    const v0, 0x20300a7

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x18

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 79
    const/16 v4, 0x44

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 81
    const/16 v4, 0x38

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 83
    const/16 v4, 0x28

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    .line 85
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    .line 87
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    .line 89
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    .line 91
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    .line 100
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 102
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 104
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    .line 106
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 108
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    .line 110
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 112
    const/16 v4, 0xa8

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 114
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 116
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 122
    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    .line 125
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    .line 129
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 138
    iput v11, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 147
    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    .line 149
    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    .line 151
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 153
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 155
    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x18b

    const/16 v6, 0x140

    const/16 v7, 0x1e0

    invoke-direct {v4, v9, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    .line 157
    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x60

    const/16 v6, 0x18b

    const/16 v7, 0x86

    const/16 v8, 0x106

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    .line 169
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    .line 171
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    .line 173
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    .line 175
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 177
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 179
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 181
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 183
    const/16 v4, 0x1f4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    .line 187
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 189
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    .line 193
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 197
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 199
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 201
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 203
    iput v11, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    .line 205
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 207
    iput v11, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    .line 209
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 211
    const/16 v4, 0x15

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 213
    const-string v4, "TabSwitchWidget"

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->LOG_TAG:Ljava/lang/String;

    .line 1126
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$1;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    .line 1172
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1174
    iput-boolean v9, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1176
    iput v9, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1667
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$2;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$2;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1692
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$3;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$3;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHandler:Landroid/os/Handler;

    .line 1710
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$4;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$4;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    .line 276
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 277
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    .line 281
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 282
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 283
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 284
    .local v0, density:I
    const/16 v4, 0xf0

    if-ne v0, v4, :cond_0

    .line 285
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    .line 291
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 292
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x2050177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    .line 293
    const v4, 0x2050177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    .line 294
    const v4, 0x2050178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 295
    const v4, 0x2050179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 296
    const v4, 0x205017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    .line 297
    const v4, 0x205017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 300
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 302
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    .line 303
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->initTabWidget(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p0, v9}, Lcom/htc/widget/TabSwitchWidget;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 306
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->initDraw()V

    .line 309
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    .line 311
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    .line 312
    return-void

    .line 286
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    const/16 v4, 0x78

    if-ne v0, v4, :cond_1

    .line 287
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    goto :goto_0

    .line 289
    :cond_1
    iput-boolean v10, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/widget/TabSwitchWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/TabSwitchWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/TabSwitchWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setOnKey()V

    return-void
.end method

.method private countMapTabIndex(I)I
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 1368
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 1369
    .local v1, pos:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 1370
    const/4 v1, 0x0

    .line 1372
    :cond_0
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1373
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1375
    .local v0, i:I
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1376
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1377
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1379
    :cond_1
    if-gez v0, :cond_2

    .line 1380
    const/4 v0, 0x0

    .line 1381
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1384
    :cond_2
    return v0
.end method

.method private createSelectBitmap(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    .line 1445
    instance-of v3, p1, Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 1448
    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    .line 1450
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1451
    .local v1, childId:I
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    .line 1453
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1454
    .local v2, selectIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1455
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1456
    if-nez v2, :cond_2

    .line 1457
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1458
    .local v0, bi:Landroid/graphics/drawable/Drawable;
    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1459
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1460
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1462
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1463
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1464
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1491
    .end local v0           #bi:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1492
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/htc/widget/TabSwitchWidget;->drawTabCount(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1466
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1467
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v3, :cond_3

    .line 1468
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1487
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1488
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 1473
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v3, :cond_4

    .line 1474
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 1480
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2
.end method

.method private delayShow(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1707
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1708
    return-void
.end method

.method private doFingerUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1338
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    .line 1339
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1340
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1341
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1342
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1343
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1179
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1180
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 1181
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1183
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1185
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 1192
    .local v3, x:I
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1290
    :cond_1
    :goto_0
    return v4

    .line 1194
    :cond_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    if-nez v6, :cond_1

    .line 1197
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1199
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1200
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    .line 1201
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 1203
    :cond_3
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v3, v6, :cond_4

    .line 1204
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 1206
    :cond_4
    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v5

    .line 1290
    goto :goto_0

    .line 1209
    :pswitch_0
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1210
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 1211
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_6

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-le v3, v6, :cond_7

    .line 1212
    :cond_6
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1213
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    move v4, v5

    .line 1214
    goto :goto_0

    .line 1216
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1217
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1219
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1220
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1221
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1222
    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    .line 1223
    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1225
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1227
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->onTouchDown(I)I

    move-result v0

    .line 1229
    .local v0, EndX:I
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    if-nez v6, :cond_8

    .line 1230
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1231
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    goto :goto_1

    .line 1235
    :cond_8
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-eqz v6, :cond_9

    .line 1236
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1237
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1238
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1239
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1240
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1248
    :goto_2
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    .line 1249
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchDown()V

    goto :goto_1

    .line 1242
    :cond_9
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    .line 1243
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1244
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1245
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_2

    .line 1254
    .end local v0           #EndX:I
    :pswitch_1
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    .line 1256
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    .line 1257
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->doFingerUp()V

    move v4, v5

    .line 1258
    goto/16 :goto_0

    .line 1261
    :cond_a
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-nez v6, :cond_b

    move v4, v5

    .line 1262
    goto/16 :goto_0

    .line 1263
    :cond_b
    int-to-float v6, v3

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    sub-float v2, v6, v7

    .line 1264
    .local v2, delta:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4120

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 1265
    int-to-double v6, v3

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 1267
    :cond_c
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1270
    int-to-float v4, v3

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1272
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1274
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    .line 1275
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchMove()V

    goto/16 :goto_1

    .line 1278
    .end local v2           #delta:F
    :pswitch_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    .line 1282
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v6}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    .line 1283
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-interface {v6, v7, v4}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 1284
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1285
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->onTouchUpAction()V

    goto/16 :goto_1

    .line 1206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 599
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 607
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 609
    :cond_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawTabCount(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2
    .parameter "canvas"
    .parameter "tabCountView"

    .prologue
    .line 634
    if-nez p2, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 649
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 655
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 657
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 651
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v0, :cond_3

    .line 652
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private drawTabImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "canvas"
    .parameter "iv"

    .prologue
    .line 619
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 621
    .local v1, xStart:I
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v2, :cond_0

    .line 622
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    add-int/lit8 v3, v3, 0x9

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x9

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 629
    .local v0, rect:Landroid/graphics/Rect;
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 630
    return-void

    .line 623
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v2, :cond_1

    .line 624
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    add-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 626
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 627
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method private generateBoundary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 412
    .local v1, tabSize:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 413
    .local v0, screenwidth:I
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v2, :cond_3

    .line 414
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v2, :cond_2

    .line 415
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 416
    add-int/lit8 v2, v0, -0x14

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 447
    :goto_0
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gez v2, :cond_0

    .line 448
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 449
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 452
    :cond_0
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 453
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 454
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 455
    :cond_1
    return-void

    .line 418
    :cond_2
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 419
    add-int/lit8 v2, v0, -0x14

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 421
    :cond_3
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v2, :cond_5

    .line 422
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v2, :cond_4

    .line 423
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 424
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v2, v2, 0x30a

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 426
    :cond_4
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 427
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v2, v2, 0x1cc

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 429
    :cond_5
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v2, :cond_6

    .line 438
    :cond_6
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v2, :cond_7

    .line 439
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 440
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v2, v2, 0x136

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 442
    :cond_7
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 443
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v2, v2, 0xe6

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private getTabIconView(I)Landroid/view/View;
    .locals 4
    .parameter "id"

    .prologue
    .line 1025
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1027
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1028
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1029
    .local v2, tmp:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1032
    .end local v2           #tmp:Landroid/view/View;
    :goto_1
    return-object v2

    .line 1027
    .restart local v2       #tmp:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    .end local v2           #tmp:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initDraw()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 320
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    .line 324
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v0, :cond_1

    .line 325
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    goto :goto_0

    .line 327
    :cond_1
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private initTabWidget(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 496
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, need_cover:Z
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x209008e

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    .line 504
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_0

    .line 505
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const-string v7, "common_slide_bar"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    const/4 v3, 0x1

    .line 508
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x209008d

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    .line 514
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 515
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    const-string v7, "grid_dark_background"

    const v8, -0x14e6e6e7

    invoke-static {p1, v7, v8}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 516
    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->setFocusable(Z)V

    .line 517
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 518
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 519
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const v7, 0x202006e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    .line 521
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 525
    .local v5, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 526
    .local v4, out:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x2010065

    invoke-virtual {v6, v7, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 529
    :try_start_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    if-eqz v3, :cond_3

    .line 536
    const-string v6, "tab_switch_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 537
    .local v2, layout_id:I
    if-eqz v2, :cond_2

    .line 538
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v2, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, cover:Landroid/view/View;
    const-string v6, "common_slide_bar_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 542
    .end local v0           #cover:Landroid/view/View;
    :cond_2
    const-string v6, "common_subnav_selector_tab"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 544
    .end local v2           #layout_id:I
    :cond_3
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, eres:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "TabSwitchWidget"

    const-string v7, "can\'t find package"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private moveThumbToInternal(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 1334
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->requestLayout()V

    .line 1335
    return-void
.end method

.method private onCountWidthIndex(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1496
    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1498
    .local v0, outX:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    .line 1499
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1504
    :cond_0
    :goto_0
    return v0

    .line 1500
    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    .line 1501
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onMoveByIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 1508
    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1511
    .local v0, outX:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    .line 1512
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1513
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1519
    :cond_0
    :goto_0
    return v0

    .line 1514
    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1516
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchDown(I)I
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    .line 1523
    move v1, p1

    .line 1524
    .local v1, inputX:I
    const/4 v2, 0x0

    .line 1526
    .local v2, outX:I
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1527
    .local v0, i:I
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    .line 1528
    int-to-float v3, v0

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1530
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v3, v3, 0x0

    if-ge v2, v3, :cond_2

    .line 1531
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1532
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v2, v3, 0x0

    .line 1538
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v3, v0, :cond_1

    .line 1539
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1542
    :cond_1
    return v2

    .line 1533
    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v2, v3, :cond_0

    .line 1534
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1535
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchScrollAction(I)V
    .locals 8
    .parameter "x"

    .prologue
    .line 1305
    move v6, p1

    .line 1306
    .local v6, to:I
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    sub-int v3, v6, v0

    .line 1307
    .local v3, dx:I
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v7

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1309
    monitor-exit v7

    .line 1311
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onTouchUpAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1294
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1296
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1297
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1298
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1300
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    .line 1302
    :cond_0
    return-void
.end method

.method private refreshDownInfo(I)V
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 1575
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1577
    .local v0, i:I
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1578
    const/4 v1, 0x0

    .line 1579
    .local v1, outX:I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1581
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v1, v2, :cond_1

    .line 1582
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1583
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1588
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1590
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1591
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1592
    return-void

    .line 1584
    :cond_1
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v1, v2, :cond_0

    .line 1585
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1586
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private refreshUpInfo(I)V
    .locals 10
    .parameter "x"

    .prologue
    .line 1389
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v4

    .line 1392
    .local v4, i:I
    :try_start_0
    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v7, v4, :cond_4

    .line 1394
    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ltz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    if-eqz v7, :cond_0

    .line 1395
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    :cond_0
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 1398
    invoke-direct {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v1

    .line 1399
    .local v1, child:Landroid/view/View;
    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v7, :cond_2

    .line 1401
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v7}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 1402
    .local v5, s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1403
    .local v6, text:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1404
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1406
    if-nez v2, :cond_5

    .line 1407
    instance-of v7, v1, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1408
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1410
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1415
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1416
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 1419
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1422
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .end local v6           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    .line 1424
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 1425
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 1426
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 1428
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    :goto_1
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    .line 1441
    .end local v1           #child:Landroid/view/View;
    :cond_4
    :goto_2
    return-void

    .line 1412
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v5       #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .restart local v6       #text:Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1436
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .end local v6           #text:Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 1437
    .local v3, ex:Ljava/lang/Exception;
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 1438
    const-string v7, "TabSwitch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1430
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #child:Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    :try_start_1
    iput-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setCurrectTabAndBack(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1569
    .local v0, i:I
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 1570
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1571
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1572
    return-void
.end method

.method private setOnKey()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1679
    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 1680
    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1681
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1684
    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    .line 1685
    return-void
.end method

.method private setScroll(I)Z
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    .line 1546
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1547
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int v3, p1, v3

    int-to-float v2, v3

    .line 1548
    .local v2, pos:F
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-lt v3, v4, :cond_1

    .line 1549
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1550
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v3

    .line 1556
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-ge v3, v4, :cond_2

    .line 1563
    :goto_1
    return v5

    .line 1551
    :cond_1
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gt v3, v4, :cond_0

    .line 1552
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1553
    const/4 v2, 0x0

    goto :goto_0

    .line 1558
    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    sub-int v1, v3, v4

    .line 1559
    .local v1, delta:I
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v3, v3

    div-float v3, v2, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1561
    .local v0, ScrollX:I
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_1
.end method

.method private setTabParameter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 388
    .local v0, TabRealWidth:I
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 389
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 390
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-ge v0, v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 394
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v1, :cond_3

    .line 395
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v1, v1, -0x14

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v0, v1, -0x14

    .end local v0           #TabRealWidth:I
    :cond_1
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 402
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    .line 404
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v2, v2, -0x80

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v3, v3, -0x55

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v4, v4, -0x80

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x80

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v5, v5, -0x55

    add-int/lit8 v5, v5, -0x80

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    .line 406
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-le v1, v2, :cond_2

    .line 407
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 408
    :cond_2
    return-void

    .line 396
    .restart local v0       #TabRealWidth:I
    :cond_3
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v1, :cond_5

    .line 397
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v1, v1, -0xe

    if-le v0, v1, :cond_4

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v0, v1, -0xe

    .end local v0           #TabRealWidth:I
    :cond_4
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_0

    .line 399
    .restart local v0       #TabRealWidth:I
    :cond_5
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v1, v1, -0x18

    if-le v0, v1, :cond_6

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v0, v1, -0x18

    .end local v0           #TabRealWidth:I
    :cond_6
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_0
.end method

.method private tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6
    .parameter "lastId"
    .parameter "params"

    .prologue
    const/4 v5, 0x7

    const/4 v1, -0x1

    const/4 v4, 0x2

    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 771
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 772
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v0, :cond_3

    .line 773
    if-ne p1, v1, :cond_1

    .line 774
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 775
    invoke-virtual {p2, v2, v2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    if-nez p1, :cond_2

    .line 777
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v1, 0xb

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 779
    :cond_2
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x9

    const/16 v1, 0xb

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 781
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v0, :cond_6

    .line 782
    if-ne p1, v1, :cond_4

    .line 783
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 784
    invoke-virtual {p2, v2, v2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 785
    :cond_4
    if-nez p1, :cond_5

    .line 786
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2, v0, v2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 788
    :cond_5
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p2, v0, v2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 789
    :cond_6
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v0, :cond_7

    .line 797
    :cond_7
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v0, :cond_0

    .line 798
    if-ne p1, v1, :cond_8

    .line 799
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 800
    invoke-virtual {p2, v2, v2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 801
    :cond_8
    if-nez p1, :cond_9

    .line 802
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 803
    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    .line 804
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int/lit8 v2, v2, 0x6

    rsub-int v2, v2, 0x140

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 806
    :cond_a
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 9
    .parameter "child"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 715
    instance-of v4, p1, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 767
    :goto_0
    return-void

    .line 718
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 720
    .local v2, lpImage:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 722
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 724
    .local v3, tabCount:I
    if-le v3, v7, :cond_3

    .line 726
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 727
    .local v0, lastChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 728
    .local v1, lastId:I
    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 729
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 730
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 749
    .end local v0           #lastChild:Landroid/view/View;
    .end local v1           #lastId:I
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 756
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 757
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 758
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 760
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v4, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 763
    :cond_1
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v4, :cond_2

    .line 764
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_0

    .line 734
    :cond_3
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 735
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 736
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v4, :cond_4

    .line 738
    invoke-virtual {v2, v5, v5, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 746
    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 739
    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v4, :cond_5

    .line 740
    invoke-virtual {v2, v5, v5, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 741
    :cond_5
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v4, :cond_6

    .line 744
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public checkFocusMode()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 1322
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v2

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1325
    .local v0, curX:I
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->moveThumbToInternal(I)V

    .line 1327
    .end local v0           #curX:I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 1329
    return-void

    .line 1327
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 571
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    .line 572
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 577
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;->drawTabImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 579
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 594
    :cond_0
    :goto_0
    monitor-exit v1

    .line 595
    return-void

    .line 583
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 585
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    if-nez v0, :cond_0

    .line 586
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x1

    .line 1363
    :goto_0
    return v0

    .line 1360
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJumpNextId()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isJumpTab()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    return v0
.end method

.method public isSelectTab()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 555
    const v0, 0x202006b

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    .line 556
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x202006c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    .line 559
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x202006d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    .line 560
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1623
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 1656
    :goto_0
    return v1

    .line 1626
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 1628
    :cond_2
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1629
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v3, :cond_3

    .line 1630
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1632
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1633
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1634
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1635
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1637
    :cond_5
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-gez v3, :cond_6

    .line 1638
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1639
    :cond_6
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 1640
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1642
    :cond_7
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    .line 1644
    .local v0, EndX:I
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1645
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1646
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1647
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 1648
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1650
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->delayShow(I)V

    .line 1652
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1656
    .end local v0           #EndX:I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 669
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 670
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 369
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 370
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 371
    iput p2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    .line 372
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 373
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 375
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    .line 376
    .local v2, widget:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 377
    .local v3, widgetHeight:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 378
    .local v0, screenheight:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 379
    .local v1, screenwidth:I
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 380
    sub-int v4, v0, v3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    .line 381
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    .line 382
    return-void

    .line 369
    .end local v0           #screenheight:I
    .end local v1           #screenwidth:I
    .end local v2           #widget:Landroid/view/View;
    .end local v3           #widgetHeight:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public refreshWidget(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1601
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 1602
    return-void
.end method

.method public removeViewIndex(II)V
    .locals 13
    .parameter "childindex"
    .parameter "CurrentTab"

    .prologue
    const/4 v12, -0x1

    .line 819
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 820
    .local v5, size:I
    const/4 v9, 0x0

    .line 821
    .local v9, view:Landroid/view/View;
    const/4 v0, -0x1

    .line 822
    .local v0, found:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 823
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 824
    .local v6, tmp:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 825
    move-object v9, v6

    .line 826
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 827
    iget-object v11, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 828
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 829
    move v0, v1

    .line 834
    .end local v6           #tmp:Landroid/view/View;
    :cond_0
    if-eq v0, v12, :cond_5

    .line 836
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 837
    move v2, v0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 838
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 839
    .restart local v6       #tmp:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 841
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 842
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 843
    .local v4, relativeParams:Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v10, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_1

    move-object v4, v3

    .line 844
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 845
    add-int/lit8 v10, v2, -0x1

    invoke-direct {p0, v10, v4}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 846
    const/4 v10, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 849
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 850
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 851
    .local v8, v:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 852
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 853
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 854
    .local v7, tx:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 855
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/TabSwitchWidget;->setCountText(ILjava/lang/CharSequence;)V

    .line 858
    .end local v7           #tx:Ljava/lang/CharSequence;
    .end local v8           #v:Landroid/widget/TextView;
    :cond_2
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 860
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 822
    .end local v2           #j:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #relativeParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 862
    .end local v6           #tmp:Landroid/view/View;
    .restart local v2       #j:I
    :cond_4
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 865
    .end local v2           #j:I
    :cond_5
    if-nez v9, :cond_6

    .line 881
    :goto_2
    return-void

    .line 868
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 869
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v11, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 870
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v10, v10

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 871
    iput v12, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 872
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 874
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v10, :cond_7

    .line 875
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 877
    :cond_7
    if-ltz p2, :cond_8

    .line 878
    invoke-virtual {p0, p2}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2

    .line 880
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2
.end method

.method public setCountText(ILjava/lang/CharSequence;)V
    .locals 12
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 925
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p1, :cond_0

    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 929
    .local v2, tabCountView:Landroid/view/View;
    const/4 v0, 0x0

    .line 931
    .local v0, childView:Landroid/view/View;
    if-nez v2, :cond_8

    .line 932
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x209008b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_0

    .line 936
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_0

    .line 940
    add-int/lit8 v4, p1, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    move-object v3, v2

    .line 942
    check-cast v3, Landroid/widget/TextView;

    .line 943
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 949
    .local v1, lpTabCount:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 951
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHdpi:Z

    if-eqz v4, :cond_4

    .line 953
    if-nez p1, :cond_3

    .line 958
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 959
    const/16 v4, 0x20

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 993
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 961
    :cond_3
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 962
    const/16 v4, -0x18

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 965
    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMdpi:Z

    if-eqz v4, :cond_6

    .line 967
    if-nez p1, :cond_5

    .line 972
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 973
    const/16 v4, 0x16

    invoke-virtual {v1, v4, v7, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 975
    :cond_5
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 976
    const/16 v4, -0x10

    invoke-virtual {v1, v4, v7, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 978
    :cond_6
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLdpi:Z

    if-eqz v4, :cond_2

    .line 980
    if-nez p1, :cond_7

    .line 985
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 986
    const/16 v4, 0x10

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 988
    :cond_7
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 989
    const/16 v4, -0xc

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .end local v1           #lpTabCount:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_8
    move-object v3, v2

    .line 996
    check-cast v3, Landroid/widget/TextView;

    .line 997
    .restart local v3       #textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCountVisibility(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 895
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 899
    .local v1, tabCountView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 902
    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ne v2, p1, :cond_2

    .line 905
    iput-boolean p2, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 907
    :cond_2
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-ne v2, p1, :cond_0

    .line 908
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 911
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    .line 913
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 902
    .end local v0           #child:Landroid/view/View;
    :cond_4
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 697
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onCountWidthIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 701
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 702
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 703
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 705
    :cond_2
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    goto :goto_0
.end method

.method public setFocusMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1123
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1124
    return-void
.end method

.method public setInfoMessageEnable(II)V
    .locals 4
    .parameter "view"
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1045
    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    if-ne p1, v0, :cond_1

    .line 1046
    sparse-switch p2, :sswitch_data_0

    .line 1054
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1048
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1051
    :sswitch_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1056
    :cond_1
    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    if-ne p1, v0, :cond_0

    .line 1057
    sparse-switch p2, :sswitch_data_1

    .line 1065
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1059
    :sswitch_2
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1062
    :sswitch_3
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1046
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 1057
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
    .end sparse-switch
.end method

.method public setInfoTextToWidget(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setRequest()V
    .locals 1

    .prologue
    .line 1664
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1665
    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0
    .parameter "tabHint"

    .prologue
    .line 1086
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    .line 1087
    return-void
.end method

.method public setTabSelectionListener(Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    .line 1077
    return-void
.end method

.method public setTabSwitchHost(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    .line 349
    return-void
.end method

.method public setWidgetTouchListener(Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    .line 262
    return-void
.end method
