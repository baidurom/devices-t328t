.class public Lcom/htc/widget/HtcToggleButton;
.super Landroid/widget/FrameLayout;
.source "HtcToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcToggleButton$SavedState;,
        Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DOWN_DURATION:I = 0x64

.field private static final DURATION:I = 0x64

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.9f

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static TOGGLE_OUTER_PADDING:I = 0x0

.field private static final UP_DURATION:I = 0x14


# instance fields
.field private mBroadcasting:Z

.field private mCenterX:I

.field private mChecked:Z

.field private mCheckedCenterX:I

.field private mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mDownAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mIsMove:Z

.field private mIsSizeChanged:Z

.field private mMode:I

.field private mMultiplyColor:I

.field private mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOffAnimator:Landroid/animation/ObjectAnimator;

.field private mOffAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOnAnimator:Landroid/animation/ObjectAnimator;

.field private mOnAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

.field private mOuterCenterX:I

.field private mOuterHeight:I

.field private mOuterView:Landroid/view/View;

.field private mOuterWidth:I

.field private mOuterxOffset:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mPressHeight:I

.field private mPressView:Landroid/view/View;

.field private mPressWidth:I

.field private mRestView:Landroid/widget/RelativeLayout;

.field private mRestxOffset:I

.field private mRestyOffset:I

.field private mText:Landroid/widget/TextView;

.field private mTextBottom:Landroid/widget/TextView;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextTop:Landroid/widget/TextView;

.field private mTextyOffset:I

.field private mToggleOuter:Landroid/graphics/drawable/Drawable;

.field private mTogglePress:Landroid/graphics/drawable/Drawable;

.field private mToggleRest:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mUnCheckedCenterX:I

.field private mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mUpAnimator:Landroid/animation/ObjectAnimator;

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcToggleButton;->TOGGLE_OUTER_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput v1, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 72
    iput-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 81
    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 82
    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 111
    iput-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 112
    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    .line 113
    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    .line 114
    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 72
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 77
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 81
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 82
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 111
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 112
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    .line 114
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 72
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 77
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 81
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 82
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 111
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 112
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    .line 114
    iput-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOnAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOnAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onUpAnimationEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onUpAnimationCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOnAnimationCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOffAnimationStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOffAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onOffAnimationCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onDownAnimationCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->onUpAnimationStart()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const v8, 0x2080311

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcToggleButton;->setBackgroundResource(I)V

    .line 138
    const/4 v1, 0x1

    .line 139
    .local v1, clickable:Z
    const/4 v2, 0x1

    .line 140
    .local v2, enabled:Z
    if-eqz p2, :cond_0

    .line 141
    sget-object v8, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    const/4 v2, 0x1

    .line 148
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    const/16 v8, 0x1d

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 152
    const/4 v1, 0x1

    .line 156
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 162
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    .line 163
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    .line 164
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    .line 165
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    .line 166
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    .line 167
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 169
    .local v5, res:Landroid/content/res/Resources;
    const v8, 0x2040391

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 170
    const v8, 0x2040392

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 171
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const-string v8, "multiply_color"

    const/high16 v9, 0x206

    invoke-static {p1, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    .line 175
    const v8, 0x20e0012

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/htc/widget/HtcToggleButton;->TOGGLE_OUTER_PADDING:I

    .line 176
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    iget v9, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 177
    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    .line 178
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mOuterWidth:I

    iget v9, p0, Lcom/htc/widget/HtcToggleButton;->mOuterHeight:I

    const/16 v10, 0x11

    invoke-direct {v3, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 179
    .local v3, olp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    invoke-virtual {p0, v8, v3}, Lcom/htc/widget/HtcToggleButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mPressWidth:I

    iget v9, p0, Lcom/htc/widget/HtcToggleButton;->mPressHeight:I

    const/16 v10, 0x11

    invoke-direct {v4, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 181
    .local v4, plp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    invoke-virtual {p0, v8, v4}, Lcom/htc/widget/HtcToggleButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 183
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v7, tlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x10

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 189
    .local v6, rlp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v8, v6}, Lcom/htc/widget/HtcToggleButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    .line 191
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    .line 192
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 193
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 194
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 195
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 196
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 198
    const/4 v8, 0x1

    const/16 v9, 0x5dd

    const-string v10, "TOGGLE_BTN_PRESS"

    invoke-static {v8, p0, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 199
    const/4 v8, 0x1

    const/16 v9, 0x5dd

    const-string v10, "TOGGLE_BTN_UNPRESS"

    invoke-static {v8, p0, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 200
    const/4 v8, 0x1

    const/16 v9, 0x5dd

    const-string v10, "TOGGLE_BTN_ON_OFF"

    invoke-static {v8, p0, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 201
    const/4 v8, 0x1

    const/16 v9, 0x5dd

    const-string v10, "TOGGLE_BTN_ON_OFF"

    invoke-static {v8, p0, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 202
    return-void

    .line 146
    .end local v3           #olp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #plp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #rlp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #tlp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 773
    :cond_0
    return-void
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 768
    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 763
    :cond_0
    return-void
.end method

.method private onOffAnimationCancel()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 758
    :cond_0
    return-void
.end method

.method private onOffAnimationEnd()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 753
    :cond_0
    return-void
.end method

.method private onOffAnimationStart()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 748
    :cond_0
    return-void
.end method

.method private onOnAnimationCancel()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 743
    :cond_0
    return-void
.end method

.method private onOnAnimationEnd()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 738
    :cond_0
    return-void
.end method

.method private onOnAnimationStart()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 733
    :cond_0
    return-void
.end method

.method private onUpAnimationCancel()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 788
    :cond_0
    return-void
.end method

.method private onUpAnimationEnd()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 783
    :cond_0
    return-void
.end method

.method private onUpAnimationStart()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 778
    :cond_0
    return-void
.end method

.method private setDown()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 501
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 502
    return-void
.end method

.method private setToggleBounds()V
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 481
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 485
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setCenterX(I)V

    .line 486
    return-void

    .line 483
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    goto :goto_0
.end method

.method private setUp()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 506
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 507
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 346
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 348
    :cond_0
    return-void
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 600
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    .line 602
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 603
    iget-boolean v1, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->requestLayout()V

    .line 605
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 586
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 588
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 590
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    .line 591
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 357
    iput-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 358
    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    .line 359
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestxOffset:I

    .line 360
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestyOffset:I

    .line 361
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextyOffset:I

    .line 362
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestxOffset:I

    sub-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcToggleButton;->TOGGLE_OUTER_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    .line 363
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestxOffset:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcToggleButton;->TOGGLE_OUTER_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    .line 364
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestyOffset:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextyOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 365
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestyOffset:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextyOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 366
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestyOffset:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextyOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 367
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setToggleBounds()V

    .line 368
    const-string v0, "centerX"

    new-array v1, v5, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    .line 369
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    const-string v0, "centerX"

    new-array v1, v5, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    const-string v0, "scale"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    .line 373
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    const-string v0, "scale"

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    .line 375
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 377
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 380
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 382
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 383
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 385
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButton$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButton$1;-><init>(Lcom/htc/widget/HtcToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButton$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButton$2;-><init>(Lcom/htc/widget/HtcToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButton$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButton$3;-><init>(Lcom/htc/widget/HtcToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButton$4;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButton$4;-><init>(Lcom/htc/widget/HtcToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    return-void

    .line 372
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 374
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 459
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setDown()V

    .line 476
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 460
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 461
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 464
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 466
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 467
    .local v2, y:I
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mTouchSlop:I

    .line 468
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 470
    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 471
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->toggle()V

    .line 226
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method protected setCenterX(I)V
    .locals 2
    .parameter "centerX"

    .prologue
    .line 493
    iput p1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 494
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mRestxOffset:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 495
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    if-nez v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->invalidate()V

    .line 497
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 280
    iput-boolean p1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 281
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 284
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 309
    :cond_0
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 290
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 291
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V

    .line 307
    :cond_3
    iput-boolean v2, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 670
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 671
    if-nez p1, :cond_0

    .line 672
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setAlpha(F)V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 690
    iput p1, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 691
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 692
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 693
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 694
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 695
    const v2, 0x208030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    .line 696
    const v2, 0x208030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    .line 697
    const v2, 0x2080310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleRest:Landroid/graphics/drawable/Drawable;

    .line 698
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 699
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mToggleRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    const v3, 0x203008d

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 704
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    const v3, 0x203008e

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 705
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    const v3, 0x203008f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 721
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterWidth:I

    .line 722
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterHeight:I

    .line 723
    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterWidth:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    .line 724
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButton;->mPressWidth:I

    .line 725
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButton;->mPressHeight:I

    .line 726
    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterHeight:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcToggleButton;->setMinimumHeight(I)V

    .line 728
    :cond_1
    return-void

    .line 708
    :cond_2
    const v2, 0x2080314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    .line 709
    const v2, 0x2080315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    .line 710
    const v2, 0x2080316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mToggleRest:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 712
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButton;->mToggleRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    const v3, 0x203008a

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 717
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    const v3, 0x203008b

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 718
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    const v3, 0x203008c

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    .line 323
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 666
    return-void
.end method

.method protected setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mRestView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 520
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 521
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->invalidate()V

    .line 523
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 236
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 245
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSkinResources(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 617
    if-nez p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 620
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 622
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 623
    .local v3, skinPackage:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 625
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 626
    .local v4, themeres:Landroid/content/res/Resources;
    if-eqz v4, :cond_2

    .line 627
    const-string v5, "multiply_color"

    const-string v6, "color"

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, id:I
    if-eqz v1, :cond_2

    .line 629
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    .line 630
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 631
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 632
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mPressView:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v1           #id:I
    .end local v4           #themeres:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 643
    const v5, 0x2040391

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 644
    const v5, 0x2040392

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 645
    iget-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v5, :cond_4

    .line 646
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 639
    :cond_3
    const/high16 v5, 0x206

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    .line 640
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mMultiplyColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_1

    .line 650
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextTop:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextBottom:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v5

    goto :goto_1
.end method
