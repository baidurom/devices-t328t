.class Lcom/htc/widget/ActionBarContainer$BackUpView;
.super Landroid/widget/ImageView;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackUpView"
.end annotation


# instance fields
.field private final animDuration:I

.field private internalForceMultiply:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/htc/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Lcom/htc/widget/ActionBarContainer;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 940
    iput-object p1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->this$0:Lcom/htc/widget/ActionBarContainer;

    .line 941
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 937
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    .line 953
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->animDuration:I

    .line 955
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 956
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->internalForceMultiply:Z

    .line 942
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setupAnimationEnv()V

    .line 943
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarContainer$BackUpView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 1092
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->internalForceMultiply:Z

    .line 1093
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->invalidate()V

    .line 1095
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v3, 0x2

    .line 962
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 963
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 964
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 966
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarContainer$BackUpView$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarContainer$BackUpView$1;-><init>(Lcom/htc/widget/ActionBarContainer$BackUpView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 984
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 985
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 987
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarContainer$BackUpView$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarContainer$BackUpView$2;-><init>(Lcom/htc/widget/ActionBarContainer$BackUpView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1010
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1015
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    .line 1016
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1017
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1019
    .end local v0           #colorID:I
    :cond_0
    return-void

    .line 962
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 983
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1063
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1069
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->internalForceMultiply:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1071
    const/4 v7, 0x0

    .line 1074
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 1075
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1078
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1079
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1083
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 1082
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1055
    :goto_0
    return v0

    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1055
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1036
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1037
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1041
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1042
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1046
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1047
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1050
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setViewScale(F)V

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 1033
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
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 1024
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1025
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setScaleX(F)V

    .line 949
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarContainer$BackUpView;->setScaleY(F)V

    .line 950
    return-void
.end method
