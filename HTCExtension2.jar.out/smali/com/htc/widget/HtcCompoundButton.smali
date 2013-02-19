.class public Lcom/htc/widget/HtcCompoundButton;
.super Landroid/view/View;
.source "HtcCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcCompoundButton$SavedState;,
        Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_DURATION_DOWN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_DURATION_UP:I = 0x0

.field private static final SCALE:F = 0.5f


# instance fields
.field mBackgroundMode:I

.field mBackgroundPress:Landroid/graphics/drawable/Drawable;

.field mBackgroundRest:Landroid/graphics/drawable/Drawable;

.field private mBroadcasting:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mCheckAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mChecked:Z

.field mContentPress:Landroid/graphics/drawable/Drawable;

.field private mContentPressAlpha:I

.field mContentRest:Landroid/graphics/drawable/Drawable;

.field mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mHasOnState:Z

.field mInnerBackground:Landroid/graphics/drawable/Drawable;

.field mIsAnimating:Z

.field mIsContentMultiplyRequired:Z

.field mIsPartialSelect:Z

.field mMultiplyColor:I

.field private mOnCheckedChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

.field mPartialSelection:Landroid/graphics/drawable/Drawable;

.field private mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

.field mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 3
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"
    .parameter "hasOnState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 39
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 41
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 46
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 53
    iput v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    .line 54
    iput v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    .line 56
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    .line 65
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 86
    iput p2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 87
    iput-boolean p3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 88
    iput-boolean p4, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 89
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setClickable(Z)V

    .line 91
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 39
    iput-boolean v4, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 41
    iput-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 43
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 44
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 46
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 48
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 53
    iput v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    .line 54
    iput v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    .line 56
    iput-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    .line 65
    iput-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 67
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 101
    sget-object v2, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 107
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    if-eqz p2, :cond_0

    .line 112
    sget-object v2, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    sget-object v2, Lcom/htc/R$styleable;->HtcCompoundButtonMode:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 121
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setFocusable(Z)V

    .line 129
    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setClickable(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->init(Landroid/content/Context;)V

    .line 142
    return-void

    .line 134
    :cond_0
    iput v3, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 135
    iput-boolean v4, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 136
    iput-boolean v4, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 137
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcCompoundButton;->setFocusable(Z)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcCompoundButton;->setClickable(Z)V

    goto :goto_0
.end method

.method private cancelEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x3f666666

    const/16 v2, 0xff

    .line 658
    iput-boolean v4, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 659
    const/high16 v0, 0x3f00

    .line 660
    .local v0, scale:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-eqz v1, :cond_0

    .line 661
    mul-float v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 662
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 663
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 669
    :goto_0
    return-void

    .line 665
    :cond_0
    mul-float v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 666
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 667
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    goto :goto_0
.end method

.method private cancelPropertyMove()V
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelEvent()V

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationCancel()V

    .line 787
    :cond_1
    :goto_0
    return-void

    .line 784
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckDownAnimationCancel()V

    goto :goto_0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 629
    move v0, p0

    .line 630
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 631
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 633
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 644
    :goto_0
    return v0

    .line 635
    :sswitch_0
    move v0, p0

    .line 636
    goto :goto_0

    .line 638
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 639
    goto :goto_0

    .line 641
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 674
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v3, :cond_2

    .line 677
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 678
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 681
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 686
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v3, :cond_4

    .line 689
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 690
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 692
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 693
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 698
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v3, :cond_5

    .line 700
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelEvent()V

    .line 702
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 703
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 704
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 706
    :cond_6
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 707
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 711
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 713
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 716
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 717
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_7

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 719
    :cond_7
    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v3, :cond_8

    .line 720
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelEvent()V

    .line 723
    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 724
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 725
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 727
    :cond_9
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 728
    iget-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 792
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    iget-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->removePropertyUp()V

    goto :goto_0

    .line 798
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->removePropertyDown()V

    goto :goto_0

    .line 804
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelPropertyMove()V

    goto :goto_0

    .line 808
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 810
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 813
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 814
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 816
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelPropertyMove()V

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v4, 0x208001e

    const v5, 0x208001d

    const/16 v7, 0x5dd

    const/4 v6, 0x1

    .line 145
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 146
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-nez v0, :cond_0

    .line 147
    const v1, 0x208001f

    const v2, 0x2080020

    const v3, 0x2080021

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCompoundButton;->setButtonDrawablesInner(IIIII)V

    .line 154
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->initAnimation()V

    .line 160
    const-string v0, "HTC_COMPOUND_BTN_PRESS"

    invoke-static {v6, p0, v7, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 161
    const-string v0, "HTC_COMPOUND_BTN_UNPRESS"

    invoke-static {v6, p0, v7, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 163
    return-void

    .line 150
    :cond_0
    const v1, 0x2080007

    const v2, 0x2080008

    const v3, 0x2080009

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCompoundButton;->setButtonDrawablesInner(IIIII)V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->initCheckAnimation()V

    .line 167
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->initUncheckAnimation()V

    .line 168
    return-void
.end method

.method private initCheckAnimation()V
    .locals 13

    .prologue
    const v9, 0x3f666666

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, downScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .line 173
    .local v0, downOnAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 175
    .local v1, downPressAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/high16 v3, 0x3f00

    .line 177
    .local v3, scale:F
    const-string v6, "scale"

    new-array v7, v10, [F

    aput v3, v7, v11

    mul-float v8, v9, v3

    aput v8, v7, v12

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 178
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 181
    const-string v6, "pressAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 182
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    const-string v6, "onAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 186
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 190
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v0, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 191
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 193
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$1;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$1;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, upScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .line 212
    .local v4, upPressAlphaAnimator:Landroid/animation/ObjectAnimator;
    const-string v6, "scale"

    new-array v7, v10, [F

    mul-float v8, v9, v3

    add-float/2addr v8, v3

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    aput v8, v7, v11

    aput v3, v7, v12

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 213
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    const-string v6, "pressAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 217
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 221
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v5, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$2;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$2;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 240
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v0, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v5, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v5, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 245
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$3;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$3;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    return-void

    .line 181
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 185
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 216
    :array_2
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initUncheckAnimation()V
    .locals 13

    .prologue
    const v9, 0x3f666666

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, downScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .line 265
    .local v0, downOnAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 267
    .local v1, downPressAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/high16 v3, 0x3f00

    .line 269
    .local v3, scale:F
    const-string v6, "scale"

    new-array v7, v10, [F

    aput v3, v7, v11

    mul-float v8, v9, v3

    aput v8, v7, v12

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 270
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    const-string v6, "pressAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 274
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    const-string v6, "onAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 278
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, upScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .line 283
    .local v4, upPressAlphaAnimator:Landroid/animation/ObjectAnimator;
    const-string v6, "scale"

    new-array v7, v10, [F

    mul-float v8, v9, v3

    add-float/2addr v8, v3

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    aput v8, v7, v11

    aput v3, v7, v12

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 284
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    const-string v6, "pressAlphaAnimation"

    new-array v7, v10, [I

    fill-array-data v7, :array_2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 288
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    sget v6, Lcom/htc/widget/HtcCompoundButton;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 292
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v0, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 293
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 295
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$4;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$4;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 312
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v5, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$5;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$5;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    .line 331
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v0, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 332
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 333
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v5, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 335
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcCompoundButton$6;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcCompoundButton$6;-><init>(Lcom/htc/widget/HtcCompoundButton;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    return-void

    .line 273
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 277
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 287
    :array_2
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private removePropertyDown()V
    .locals 4

    .prologue
    const v3, 0x3f666666

    const/16 v2, 0xff

    .line 736
    const/high16 v0, 0x3f00

    .line 737
    .local v0, scale:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v1, :cond_2

    .line 738
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 739
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationStart()V

    .line 741
    mul-float v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 742
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 743
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 744
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationEnd()V

    .line 754
    :goto_0
    return-void

    .line 746
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckDownAnimationStart()V

    .line 749
    mul-float v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 750
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 751
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 752
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckDownAnimationEnd()V

    goto :goto_0
.end method

.method private removePropertyUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    const/high16 v0, 0x3f00

    .line 758
    .local v0, scale:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v1, :cond_2

    .line 759
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationEnd()V

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationStart()V

    .line 762
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 763
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 764
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 773
    :goto_0
    return-void

    .line 766
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckDownAnimationEnd()V

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationStart()V

    .line 769
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundButton;->setScale(F)V

    .line 770
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 771
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    goto :goto_0
.end method

.method private setBounds()V
    .locals 10

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getMeasuredWidth()I

    move-result v7

    .line 1014
    .local v7, w:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getMeasuredHeight()I

    move-result v3

    .line 1015
    .local v3, h:I
    if-nez v7, :cond_0

    if-eqz v3, :cond_5

    .line 1016
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1017
    .local v2, dw:I
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1018
    .local v1, dh:I
    iget v8, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    div-int/lit8 v9, v2, 0x2

    sub-int v4, v8, v9

    .line 1019
    .local v4, left:I
    iget v8, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    div-int/lit8 v9, v1, 0x2

    sub-int v6, v8, v9

    .line 1020
    .local v6, top:I
    add-int v5, v4, v2

    .line 1021
    .local v5, right:I
    add-int v0, v6, v1

    .line 1023
    .local v0, bottom:I
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1024
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1025
    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1026
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1027
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1029
    .end local v0           #bottom:I
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/16 v1, 0xff

    .line 578
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 580
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_7

    .line 589
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    if-nez v0, :cond_6

    .line 590
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 596
    :cond_4
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPressAlpha:I

    if-nez v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 598
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    :cond_5
    :goto_1
    return-void

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 601
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-eqz v0, :cond_9

    .line 602
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    if-nez v0, :cond_8

    .line 603
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 604
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 606
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 609
    :cond_9
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 610
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 648
    invoke-super {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 650
    .local v0, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 654
    .restart local v0       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    return v0
.end method

.method onCheckDownAnimationCancel()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 370
    :cond_0
    return-void
.end method

.method onCheckDownAnimationEnd()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 364
    :cond_0
    return-void
.end method

.method onCheckDownAnimationStart()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 358
    return-void
.end method

.method onCheckUpAnimationCancel()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 389
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 392
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 394
    :cond_0
    return-void
.end method

.method onCheckUpAnimationEnd()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 380
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 383
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 385
    :cond_0
    return-void
.end method

.method onCheckUpAnimationStart()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 376
    :cond_0
    return-void
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->cancelEvent()V

    .line 893
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 894
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 567
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 568
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 574
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 575
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 823
    sparse-switch p1, :sswitch_data_0

    .line 848
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 826
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_2

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 831
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 834
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->removePropertyDown()V

    goto :goto_0

    .line 823
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 852
    sparse-switch p1, :sswitch_data_0

    .line 876
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 855
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_2

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 860
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 863
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 867
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->removePropertyUp()V

    goto :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/widget/HtcCompoundButton;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/widget/HtcCompoundButton;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setMeasuredDimension(II)V

    .line 626
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 953
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcCompoundButton$SavedState;

    .line 955
    .local v0, ss:Lcom/htc/widget/HtcCompoundButton$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 956
    iget-boolean v1, v0, Lcom/htc/widget/HtcCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 957
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->requestLayout()V

    .line 958
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 943
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 945
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcCompoundButton$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 947
    .local v0, ss:Lcom/htc/widget/HtcCompoundButton$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/widget/HtcCompoundButton$SavedState;->checked:Z

    .line 948
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 14
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 463
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v7

    .line 465
    .local v7, pl:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v9

    .line 466
    .local v9, pt:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v6

    .line 467
    .local v6, pb:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v8

    .line 469
    .local v8, pr:I
    sub-int v12, p1, v7

    sub-int v5, v12, v8

    .line 470
    .local v5, pWidth:I
    sub-int v12, p2, v9

    sub-int v4, v12, v6

    .line 472
    .local v4, pHeight:I
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 473
    .local v2, dw:I
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 476
    .local v1, dh:I
    div-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v7

    iput v12, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    .line 477
    div-int/lit8 v12, v4, 0x2

    add-int/2addr v12, v9

    iput v12, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    .line 480
    iget v12, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    div-int/lit8 v13, v2, 0x2

    sub-int v3, v12, v13

    .line 481
    .local v3, left:I
    iget v12, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    div-int/lit8 v13, v1, 0x2

    sub-int v11, v12, v13

    .line 482
    .local v11, top:I
    add-int v10, v3, v2

    .line 483
    .local v10, right:I
    add-int v0, v11, v1

    .line 484
    .local v0, bottom:I
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    :cond_0
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v11, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    .end local v0           #bottom:I
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #left:I
    .end local v4           #pHeight:I
    .end local v5           #pWidth:I
    .end local v6           #pb:I
    .end local v7           #pl:I
    .end local v8           #pr:I
    .end local v9           #pt:I
    .end local v10           #right:I
    .end local v11           #top:I
    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 493
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 880
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V

    .line 886
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 883
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method onUnCheckDownAnimationCancel()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 414
    :cond_0
    return-void
.end method

.method onUnCheckDownAnimationEnd()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 408
    :cond_0
    return-void
.end method

.method onUnCheckDownAnimationStart()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 402
    return-void
.end method

.method onUnCheckUpAnimationCancel()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 434
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 437
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 439
    :cond_0
    return-void
.end method

.method onUnCheckUpAnimationEnd()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 425
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 428
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 430
    :cond_0
    return-void
.end method

.method onUnCheckUpAnimationStart()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 420
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_2

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 994
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->toggle()V

    .line 995
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mUnCheckUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method

.method public setButtonDrawableResources(IIIII)V
    .locals 7
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"

    .prologue
    const/4 v4, 0x0

    .line 1002
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1003
    .local v6, context:Landroid/content/Context;
    if-lez p1, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1004
    .local v1, bO:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-lez p2, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1005
    .local v2, bP:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-lez p3, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1006
    .local v3, b:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-lez p5, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1007
    .local v5, cO:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-lez p4, :cond_0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, cR:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, p0

    .line 1009
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCompoundButton;->setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1010
    return-void

    .end local v1           #bO:Landroid/graphics/drawable/Drawable;
    .end local v2           #bP:Landroid/graphics/drawable/Drawable;
    .end local v3           #b:Landroid/graphics/drawable/Drawable;
    .end local v4           #cR:Landroid/graphics/drawable/Drawable;
    .end local v5           #cO:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v1, v4

    .line 1003
    goto :goto_0

    .restart local v1       #bO:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v2, v4

    .line 1004
    goto :goto_1

    .restart local v2       #bP:Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v3, v4

    .line 1005
    goto :goto_2

    .restart local v3       #b:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v5, v4

    .line 1006
    goto :goto_3
.end method

.method public setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1037
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1039
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1040
    iput-object p3, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    .line 1041
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1042
    :cond_2
    if-eqz p5, :cond_3

    iput-object p5, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    .line 1043
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_4

    .line 1044
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1045
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1047
    :cond_4
    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    .line 1048
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1050
    invoke-direct {p0}, Lcom/htc/widget/HtcCompoundButton;->setBounds()V

    .line 1051
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->requestLayout()V

    .line 1052
    return-void
.end method

.method setButtonDrawablesInner(IIIII)V
    .locals 9
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"

    .prologue
    const/4 v4, 0x0

    .line 1055
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1056
    .local v5, context:Landroid/content/Context;
    if-lez p1, :cond_7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1057
    .local v1, bO:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-lez p2, :cond_8

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1058
    .local v2, bP:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-lez p3, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1059
    .local v0, b:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-lez p5, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1060
    .local v3, cO:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-lez p4, :cond_0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1062
    .local v4, cR:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    .line 1063
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1064
    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    .line 1065
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1066
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1067
    iput-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    .line 1068
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1069
    :cond_3
    if-eqz v3, :cond_4

    iput-object v3, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    .line 1070
    :cond_4
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1071
    iget-boolean v6, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    if-eqz v6, :cond_5

    .line 1072
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1074
    :cond_5
    if-eqz v4, :cond_6

    iput-object v4, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    .line 1075
    :cond_6
    iget-object v6, p0, Lcom/htc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1076
    return-void

    .end local v0           #b:Landroid/graphics/drawable/Drawable;
    .end local v1           #bO:Landroid/graphics/drawable/Drawable;
    .end local v2           #bP:Landroid/graphics/drawable/Drawable;
    .end local v3           #cO:Landroid/graphics/drawable/Drawable;
    .end local v4           #cR:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object v1, v4

    .line 1056
    goto :goto_0

    .restart local v1       #bO:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object v2, v4

    .line 1057
    goto :goto_1

    .restart local v2       #bP:Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object v0, v4

    .line 1058
    goto :goto_2

    .restart local v0       #b:Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object v3, v4

    .line 1059
    goto :goto_3
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 507
    iput-boolean p1, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    .line 508
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 513
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBroadcasting:Z

    .line 518
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V

    .line 525
    :cond_4
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 972
    :goto_0
    return-void

    .line 963
    :cond_0
    if-eqz p1, :cond_1

    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 965
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundButton;->setAlpha(F)V

    .line 971
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 967
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 968
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundButton;->setAlpha(F)V

    goto :goto_1
.end method

.method setOnAlphaAnimation(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 454
    iput p1, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPressAlpha:I

    .line 455
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    .line 537
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    .line 548
    return-void
.end method

.method setPressAlphaAnimation(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    return-void
.end method

.method setScale(F)V
    .locals 7
    .parameter "ratio"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 443
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 445
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcCompoundButton;->mCenterY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->invalidate()V

    .line 450
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 976
    return-void

    .line 975
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
