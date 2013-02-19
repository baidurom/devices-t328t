.class public Lcom/htc/widget/HtcEditText;
.super Landroid/widget/EditText;
.source "HtcEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcEditText$ScaleDimDrawable;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DONW_DURATION:I = 0x12c

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_BRIGHT_FULL_BACKGROUND:I = 0x2

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f


# instance fields
.field private BRIGHT_PADDING_BOTTOM:I

.field private BRIGHT_PADDING_TOP:I

.field private DARK_PADDING_BOTTOM:I

.field private DARK_PADDING_TOP:I

.field private mBackground:Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingLeft:I

.field private mDefaultPaddingRight:I

.field private mDefaultPaddingTop:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mDrawableAlpha:I

.field private mDrawableDisableAlpha:I

.field private mInit:Z

.field private mIsDown:Z

.field private mIsDownAnimating:Z

.field private mIsMove:Z

.field private mIsUserSetAlpha:Z

.field private mMode:I

.field private mTouchSlop:I

.field private mUserPadding:I

.field private mUserPaddingBottom:I

.field private mUserPaddingLeft:I

.field private mUserPaddingRight:I

.field private mUserPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 62
    iput v2, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z

    .line 75
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I

    .line 76
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    .line 82
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    .line 83
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    .line 84
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    .line 85
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    .line 89
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 91
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 94
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v2, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z

    .line 75
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I

    .line 76
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    .line 82
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    .line 83
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    .line 84
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    .line 85
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    .line 89
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 91
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 94
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v2, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z

    .line 75
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I

    .line 76
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    .line 82
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    .line 83
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    .line 84
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    .line 85
    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    .line 89
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 91
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 94
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/HtcEditText;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/HtcEditText;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/widget/HtcEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/HtcEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 113
    if-eqz p2, :cond_1

    .line 114
    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 117
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 118
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 119
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    goto :goto_1

    .line 127
    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    goto :goto_1

    .line 130
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    goto :goto_1

    .line 133
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    goto :goto_1

    .line 137
    .end local v2           #attr:I
    :cond_0
    sget-object v4, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    .line 139
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    .end local v0           #N:I
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v3           #i:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcEditText;->setUpDefaultPadding(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->setTextCursorDrawableToNull()V

    .line 146
    iget v4, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    .line 148
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcEditText;->mTouchSlop:I

    .line 150
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 151
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 152
    const-string v4, "drawableAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 153
    iget-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/htc/widget/HtcEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/htc/widget/HtcEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    iget-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 157
    iget-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/htc/widget/HtcEditText$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcEditText$1;-><init>(Lcom/htc/widget/HtcEditText;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    const/16 v4, 0x5dd

    const-string v5, "AC_TEXT_VIEW_PAD_IN"

    invoke-static {v8, p0, v4, v5}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 174
    return-void

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 152
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 523
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 525
    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 517
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 519
    :cond_0
    return-void
.end method

.method private setUpDefaultPadding(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x140

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 321
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    .line 322
    iget v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    .line 323
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 325
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v1, v2, :cond_0

    .line 327
    iput v4, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 328
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 329
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 330
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 346
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    .line 347
    iget v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    iput v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    .line 348
    return-void

    .line 332
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v6, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v6, :cond_2

    .line 334
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 335
    iput v3, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 336
    iput v4, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 337
    iput v5, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 340
    :cond_2
    iput v3, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I

    .line 341
    iput v5, p0, Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I

    .line 342
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I

    .line 343
    const/16 v1, 0xb

    iput v1, p0, Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0
.end method

.method private startDownAnimation()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 253
    iget-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    return-void
.end method

.method private startMoveAnimation()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 266
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->invalidate()V

    .line 267
    return-void
.end method

.method private startUpAnimation()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDown:Z

    .line 261
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->invalidate()V

    .line 262
    return-void
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsDownAnimating:Z

    .line 529
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 531
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 230
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    .line 231
    invoke-direct {p0}, Lcom/htc/widget/HtcEditText;->startDownAnimation()V

    .line 248
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 233
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    if-nez v3, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/htc/widget/HtcEditText;->startUpAnimation()V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 236
    iget-boolean v3, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 238
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 239
    .local v2, y:I
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mTouchSlop:I

    .line 240
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 242
    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcEditText;->mIsMove:Z

    .line 243
    invoke-direct {p0}, Lcom/htc/widget/HtcEditText;->startMoveAnimation()V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should not setBackground to HtcEditText"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    return-void
.end method

.method protected setDrawableAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->invalidate()V

    .line 284
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mBackground:Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->getMutiplyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    if-eqz v1, :cond_0

    .line 294
    if-nez p1, :cond_1

    .line 295
    check-cast v0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->setDisableAlpha()V

    .line 300
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 301
    return-void

    .line 297
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->setEnableAlpha()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 190
    iput-boolean v2, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    .line 191
    iput p1, p0, Lcom/htc/widget/HtcEditText;->mMode:I

    .line 192
    new-instance v0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;-><init>(Lcom/htc/widget/HtcEditText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcEditText;->mBackground:Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    .line 193
    iget-object v0, p0, Lcom/htc/widget/HtcEditText;->mBackground:Lcom/htc/widget/HtcEditText$ScaleDimDrawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {p0}, Lcom/htc/widget/HtcEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcEditText;->setEnabled(Z)V

    .line 196
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    if-ltz v0, :cond_2

    .line 197
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    iget v1, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    iget v2, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    iget v3, p0, Lcom/htc/widget/HtcEditText;->mUserPadding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 204
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    .line 205
    return-void

    .line 198
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    if-ltz v0, :cond_1

    .line 199
    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    :goto_3
    iget v3, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    if-ltz v3, :cond_7

    iget v3, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    :goto_4
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I

    goto :goto_4
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 306
    iget-boolean v0, p0, Lcom/htc/widget/HtcEditText;->mInit:Z

    if-eqz v0, :cond_0

    .line 307
    iput p1, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingLeft:I

    .line 308
    iput p2, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingTop:I

    .line 309
    iput p3, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingRight:I

    .line 310
    iput p4, p0, Lcom/htc/widget/HtcEditText;->mUserPaddingBottom:I

    .line 312
    :cond_0
    return-void
.end method
