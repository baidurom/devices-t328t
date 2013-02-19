.class Lcom/htc/widget/CarouselSlidingDrawer;
.super Landroid/widget/RelativeLayout;
.source "CarouselSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# instance fields
.field private final animDuration:I

.field carousel:Lcom/htc/widget/CarouselActivity;

.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mExpanded:Z

.field private mHandle:Landroid/view/View;

.field private final mHandleId:I

.field private mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

.field private mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

.field private mTracking:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->widgetSpace:I

    .line 119
    iput-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    .line 124
    iput-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/widget/CarouselActivity;

    .line 174
    iput-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    .line 175
    iput-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    .line 266
    const/16 v1, 0xfa

    iput v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->animDuration:I

    .line 139
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->setOrientation()V

    .line 141
    sget-object v1, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    .line 144
    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mHandleId is invalide from attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    .line 148
    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mContentId is invalide from attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    if-ne v1, v2, :cond_2

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mHandleId and mContentId must different"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    return-object v0
.end method

.method private closeDrawer()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    .line 301
    iget-object v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v4}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 305
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    if-eqz v4, :cond_2

    .line 306
    iget-object v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    invoke-interface {v4}, Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerCompleteClose()V

    .line 310
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v5, :cond_4

    move v8, v3

    :goto_2
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 314
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 315
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 316
    new-instance v1, Lcom/htc/widget/CarouselSlidingDrawer$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/CarouselSlidingDrawer$2;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_3
    move v4, v3

    .line 310
    goto :goto_1

    :cond_4
    move v8, v2

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 330
    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 357
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    .line 361
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v5, :cond_2

    move v6, v3

    :goto_2
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 365
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 366
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 367
    new-instance v1, Lcom/htc/widget/CarouselSlidingDrawer$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/CarouselSlidingDrawer$3;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 388
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_1
    move v2, v3

    .line 361
    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 133
    .local v0, orientation:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    .line 134
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public animateOpen()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public animateToggle()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V

    .line 261
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    .line 262
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 263
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->setOrientation()V

    .line 167
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->widgetSpace:I

    if-gez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x205006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->widgetSpace:I

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->widgetSpace:I

    :goto_1
    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setPadding(IIII)V

    .line 172
    return-void

    .line 171
    :cond_1
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->widgetSpace:I

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mHandle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/htc/widget/CarouselSlidingDrawer$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/CarouselSlidingDrawer$1;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mContent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V

    .line 242
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    .line 243
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 245
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 246
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    .line 416
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    .line 403
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 287
    return-void
.end method

.method public setOnEditModeDrawerStateListener(Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V
    .locals 0
    .parameter "onEditModeDrawerStateListener"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    .line 424
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    .line 226
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 227
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method
