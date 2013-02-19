.class public Lcom/android/internal/view/menu/OverflowMenuView;
.super Landroid/widget/LinearLayout;
.source "OverflowMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final animDuration:I

.field private forceMultiply:Z

.field private imageButton:Landroid/widget/ImageButton;

.field private internalForceMultiply:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field private textButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    .line 56
    iput v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->animDuration:I

    .line 58
    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 59
    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 192
    iput-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    .line 218
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->ENABLE_ALPHA:F

    .line 219
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->DISABLE_ALPHA:F

    .line 240
    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    .line 242
    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->imageButton:Landroid/widget/ImageButton;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->setupAnimationEnv()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/OverflowMenuView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->invalidate()V

    .line 214
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    .line 64
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/OverflowMenuView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/OverflowMenuView$1;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    const-string/jumbo v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/OverflowMenuView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/OverflowMenuView$2;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    new-instance v1, Lcom/android/internal/view/menu/OverflowMenuView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/OverflowMenuView$3;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "multiply_color"

    const v3, 0x1060064

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 68
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 95
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/view/menu/OverflowMenuView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 176
    const/4 v7, 0x0

    .line 179
    .local v7, canvasCount:I
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 188
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 187
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 247
    const v1, 0x1020230

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    .line 248
    const v1, 0x102022f

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->imageButton:Landroid/widget/ImageButton;

    .line 250
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "label_off_m"

    const-string/jumbo v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, fontStyle:I
    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 260
    .end local v0           #fontStyle:I
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local v0       #fontStyle:I
    :cond_1
    const-string v1, "HTCActionBar"

    const-string/jumbo v2, "label_off_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 152
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 155
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setViewScale(F)V

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->imageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->textButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :cond_3
    const v0, 0x3ecccccd

    goto :goto_1
.end method

.method setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->invalidate()V

    .line 202
    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setScaleX(F)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setScaleY(F)V

    .line 53
    return-void
.end method
