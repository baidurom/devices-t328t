.class public Lcom/htc/widget/HtcAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "HtcAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DONW_DURATION:I = 0x12c

.field private static DROPDOWN_SHADOW_WIDTH:I = 0x0

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static MIN_DROPDOWN_WIDTH:I = 0x0

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_BRIGHT_FULL_BACKGROUND:I = 0x2

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static mIsUserSetDropDown:Z


# instance fields
.field private BRIGHT_PADDING_BOTTOM:I

.field private BRIGHT_PADDING_TOP:I

.field private DARK_PADDING_BOTTOM:I

.field private DARK_PADDING_TOP:I

.field private mBackground:Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x154

    sput v0, Lcom/htc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    .line 85
    const/4 v0, 0x7

    sput v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    .line 88
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 90
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 91
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 93
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    .line 88
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 90
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 91
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 93
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
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

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    .line 88
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 90
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 91
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 93
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/widget/HtcAutoCompleteTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/HtcAutoCompleteTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcAutoCompleteTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcAutoCompleteTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAutoCompleteTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAutoCompleteTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    if-eqz p2, :cond_3

    .line 113
    sget-object v12, Lcom/android/internal/R$styleable;->View:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 115
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 116
    .local v2, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 117
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 118
    .local v4, attr:I
    packed-switch v4, :pswitch_data_0

    .line 116
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :pswitch_0
    const/4 v12, -0x1

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    goto :goto_1

    .line 123
    :pswitch_1
    const/4 v12, -0x1

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    goto :goto_1

    .line 126
    :pswitch_2
    const/4 v12, -0x1

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    goto :goto_1

    .line 129
    :pswitch_3
    const/4 v12, -0x1

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    goto :goto_1

    .line 132
    :pswitch_4
    const/4 v12, -0x1

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    goto :goto_1

    .line 136
    .end local v4           #attr:I
    :cond_0
    sget-object v12, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 137
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 138
    sget-object v12, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 139
    const/16 v12, 0x9

    const/high16 v13, -0x4080

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    float-to-int v10, v12

    .line 140
    .local v10, userDropDownVerticalOffset:I
    const/16 v12, 0x8

    const/high16 v13, -0x4080

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    float-to-int v9, v12

    .line 141
    .local v9, userDropDownHorizontalOffset:I
    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    .line 142
    .local v11, userDropDownWidth:I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    const/4 v12, -0x1

    if-ne v9, v12, :cond_1

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 145
    :cond_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 147
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    .end local v2           #N:I
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #i:I
    .end local v9           #userDropDownHorizontalOffset:I
    .end local v10           #userDropDownVerticalOffset:I
    .end local v11           #userDropDownWidth:I
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setUpDefaultPadding(Landroid/content/Context;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setTextCursorDrawableToNull()V

    .line 153
    if-eqz p1, :cond_4

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 155
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v7, :cond_4

    .line 156
    const v12, 0x2080035

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 157
    .local v5, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setListPopupDivider(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const v12, 0x20e0010

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/htc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    .line 159
    const v12, 0x20e0011

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    .line 162
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setListPopupDividerHeight(I)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->enableListPopupAnimation()V

    .line 164
    const/high16 v12, -0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setListPopupBackgroundColor(I)V

    .line 166
    const/4 v8, 0x0

    .line 167
    .local v8, resId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 168
    .restart local v7       #res:Landroid/content/res/Resources;
    if-eqz v7, :cond_5

    .line 169
    const-string/jumbo v12, "zzzhtc_spinner_dropdown_background"

    const-string v13, "drawable"

    const-string v14, "android"

    invoke-virtual {v7, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 171
    :cond_5
    if-eqz v8, :cond_6

    .line 172
    const-string v12, "spinner_dropdown_background"

    move-object/from16 v0, p1

    invoke-static {v0, v12, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 177
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mTouchSlop:I

    .line 181
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 182
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 183
    const-string v12, "drawableAlpha"

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v13, 0x12c

    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v13, Lcom/htc/widget/HtcAutoCompleteTextView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/widget/HtcAutoCompleteTextView$1;-><init>(Lcom/htc/widget/HtcAutoCompleteTextView;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    const/4 v12, 0x1

    const/16 v13, 0x5dd

    const-string v14, "AC_TEXT_VIEW_PAD_IN"

    move-object/from16 v0, p0

    invoke-static {v12, v0, v13, v14}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 205
    return-void

    .line 174
    :cond_6
    const-string v12, "spinner_dropdown_background"

    const v13, 0x1080071

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto/16 :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 183
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 539
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 541
    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 533
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 535
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

    .line 381
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    .line 382
    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    .line 383
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 385
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v1, v2, :cond_0

    .line 387
    iput v4, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 388
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 389
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 390
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    .line 406
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    .line 407
    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    .line 408
    return-void

    .line 392
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v6, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v6, :cond_2

    .line 394
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 395
    iput v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 396
    iput v4, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 397
    iput v5, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 400
    :cond_2
    iput v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I

    .line 401
    iput v5, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I

    .line 402
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I

    .line 403
    const/16 v1, 0xb

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0
.end method

.method private startDownAnimation()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 276
    iget-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 280
    return-void
.end method

.method private startMoveAnimation()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 289
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 290
    return-void
.end method

.method private startUpAnimation()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 284
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 285
    return-void
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 545
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 547
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onSizeChanged(IIII)V

    .line 324
    sget-boolean v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    if-nez v0, :cond_1

    .line 325
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    if-ge p1, v0, :cond_3

    .line 326
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    if-ne v0, v2, :cond_2

    .line 327
    :cond_0
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    neg-int v0, v0

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 331
    :goto_0
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 341
    :goto_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 343
    :cond_1
    return-void

    .line 329
    :cond_2
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    goto :goto_0

    .line 333
    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    if-ne v0, v2, :cond_5

    .line 334
    :cond_4
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    neg-int v0, v0

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 335
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_1

    .line 337
    :cond_5
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 338
    sget v0, Lcom/htc/widget/HtcAutoCompleteTextView;->DROPDOWN_SHADOW_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x2

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 253
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 254
    invoke-direct {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->startDownAnimation()V

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 256
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    if-nez v3, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->startUpAnimation()V

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 259
    iget-boolean v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    if-nez v3, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 261
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 262
    .local v2, y:I
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mTouchSlop:I

    .line 263
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 265
    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 266
    invoke-direct {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->startMoveAnimation()V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should not setBackground to HtcAutoCompleteTextView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method protected setDrawableAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 303
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->getMutiplyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 348
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 349
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 354
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 355
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 361
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    if-eqz v1, :cond_0

    .line 309
    if-nez p1, :cond_1

    .line 310
    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->setDisableAlpha()V

    .line 315
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 316
    return-void

    .line 312
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->setEnableAlpha()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 221
    iput-boolean v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 222
    iput p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 223
    new-instance v0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;-><init>(Lcom/htc/widget/HtcAutoCompleteTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    .line 224
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setEnabled(Z)V

    .line 227
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    if-ltz v0, :cond_2

    .line 228
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 235
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 236
    return-void

    .line 229
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    if-ltz v0, :cond_1

    .line 230
    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    :goto_3
    iget v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    if-ltz v3, :cond_7

    iget v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    :goto_4
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    goto :goto_4
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 366
    iget-boolean v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mInit:Z

    if-eqz v0, :cond_0

    .line 367
    iput p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 368
    iput p2, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 369
    iput p3, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 370
    iput p4, p0, Lcom/htc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 372
    :cond_0
    return-void
.end method
