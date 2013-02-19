.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final animDuration:I

.field private enableItemText:Z

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mImageButton:Landroid/widget/ImageButton;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMinWidth:I

.field private mTextButton:Landroid/widget/Button;

.field private mTitle:Ljava/lang/CharSequence;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->ENABLE_ALPHA:F

    .line 117
    const v2, 0x3ecccccd

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->DISABLE_ALPHA:F

    .line 294
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    .line 319
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 329
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->animDuration:I

    .line 331
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 332
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 457
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    .line 470
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x1110031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 82
    sget-object v2, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ActionMenuItemView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 477
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->invalidate()V

    .line 480
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v3, 0x2

    .line 338
    const-string/jumbo v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 339
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 342
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItemView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$1;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    const-string/jumbo v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 360
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItemView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$2;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItemView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$3;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 387
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "multiply_color"

    const v3, 0x1060064

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 393
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 396
    .end local v0           #colorID:I
    :cond_0
    return-void

    .line 338
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 359
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 172
    .local v0, visible:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    and-int/2addr v0, v1

    .line 177
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    or-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    return-void

    .end local v0           #visible:Z
    :cond_1
    move v0, v2

    .line 171
    goto :goto_0

    .restart local v0       #visible:Z
    :cond_2
    move v1, v2

    .line 172
    goto :goto_1

    .line 179
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 442
    const/4 v7, 0x0

    .line 445
    .local v7, canvasCount:I
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 446
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 450
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 454
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 453
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 427
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 409
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 414
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 418
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 419
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 421
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setViewScale(F)V

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public enableItemText()V
    .locals 5

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setupAnimationEnv()V

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    .line 302
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "label_off_m"

    const-string/jumbo v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, fontStyle:I
    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 315
    .end local v0           #fontStyle:I
    :cond_0
    return-void

    .line 310
    .restart local v0       #fontStyle:I
    :cond_1
    const-string v1, "HTCActionBar"

    const-string/jumbo v2, "label_off_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x102022f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    .line 92
    const v0, 0x1020230

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 271
    :goto_0
    return v8

    .line 250
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 251
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    .line 257
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 258
    .local v3, height:I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 259
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 261
    .local v6, screenWidth:I
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 262
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 264
    const/16 v10, 0x35

    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 270
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 271
    goto :goto_0

    .line 268
    :cond_1
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 276
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 279
    .local v3, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 280
    .local v1, specSize:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 281
    .local v0, oldMeasuredWidth:I
    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 284
    .local v2, targetWidth:I
    :goto_0
    if-eq v3, v5, :cond_0

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v4, :cond_0

    if-ge v0, v2, :cond_0

    .line 286
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 289
    :cond_0
    return-void

    .line 281
    .end local v2           #targetWidth:I
    :cond_1
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 220
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 155
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 159
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 131
    :cond_3
    const v0, 0x3ecccccd

    goto :goto_1
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter "expandedFormat"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 163
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 168
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 191
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 147
    return-void
.end method

.method setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 464
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->invalidate()V

    .line 467
    :cond_0
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 199
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 208
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setScaleX(F)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setScaleY(F)V

    .line 326
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method
