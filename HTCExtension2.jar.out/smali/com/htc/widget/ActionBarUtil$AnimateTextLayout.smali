.class public Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;
.super Landroid/widget/RelativeLayout;
.source "ActionBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ActionBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimateTextLayout"
.end annotation


# instance fields
.field private final animDuration:I

.field private internalForceMultiply:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 6
    .parameter "context"
    .parameter "primaryView"
    .parameter "secondaryView"
    .parameter "textOffset"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object v4, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    .line 111
    const/16 v1, 0x3c

    iput v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->animDuration:I

    .line 113
    iput-object v4, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 114
    iput-object v4, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->internalForceMultiply:Z

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 58
    invoke-virtual {p0, p2}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const v1, 0x203007b

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 88
    const v1, 0x203007d

    invoke-virtual {p3, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0, v5, v4}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    invoke-direct {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setupAnimationEnv()V

    .line 93
    return-void

    .line 64
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x209000c

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    const/4 p2, 0x0

    .line 67
    const v1, 0x2020044

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .restart local p2
    const/4 p3, 0x0

    .line 70
    const v1, 0x2020045

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    .line 73
    .restart local p3
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    .line 74
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "inflate layout resource incorrect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 234
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->internalForceMultiply:Z

    .line 235
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->invalidate()V

    .line 237
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 120
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 125
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 146
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$2;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    new-instance v1, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$3;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 172
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    .line 178
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 124
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->internalForceMultiply:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 249
    const/4 v7, 0x0

    .line 252
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 253
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 257
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 261
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 207
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 217
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 219
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setViewScale(F)V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setScaleX(F)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setScaleY(F)V

    .line 108
    return-void
.end method
