.class public Lcom/htc/painting/engine/edit/StrokeEditView;
.super Landroid/widget/RelativeLayout;
.source "StrokeEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;,
        Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;
    }
.end annotation


# instance fields
.field mDeleteButton:Landroid/widget/Button;

.field mIsMoving:Z

.field protected mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

.field mMatrix:Landroid/graphics/Matrix;

.field mMoveButton:Landroid/widget/Button;

.field private mMoveFactor:F

.field protected mPaint:Landroid/graphics/Paint;

.field mPreviousX:F

.field mPreviousY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field protected mSelectRegion:Landroid/graphics/RectF;

.field mStartRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    .line 29
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    .line 34
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPaint:Landroid/graphics/Paint;

    .line 36
    iput v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F

    .line 37
    iput v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveFactor:F

    .line 38
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMatrix:Landroid/graphics/Matrix;

    .line 39
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    .line 40
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mDeleteButton:Landroid/widget/Button;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mIsMoving:Z

    .line 67
    iput-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mStartRect:Landroid/graphics/RectF;

    .line 134
    iput v2, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    .line 135
    iput v2, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    .line 71
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    const-string v2, "Move"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mDeleteButton:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mDeleteButton:Landroid/widget/Button;

    const-string v2, "Delete"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Lcom/htc/painting/engine/edit/StrokeEditView$1;

    invoke-direct {v2, p0}, Lcom/htc/painting/engine/edit/StrokeEditView$1;-><init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    new-instance v2, Lcom/htc/painting/engine/edit/StrokeEditView$2;

    invoke-direct {v2, p0}, Lcom/htc/painting/engine/edit/StrokeEditView$2;-><init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;-><init>(Lcom/htc/painting/engine/edit/StrokeEditView;Lcom/htc/painting/engine/edit/StrokeEditView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 101
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x43fa

    const/high16 v3, 0x43fa

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/htc/painting/engine/edit/StrokeEditView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #layout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .restart local v0       #layout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/htc/painting/engine/edit/StrokeEditView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setBackgroundColor(I)V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/edit/StrokeEditView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$102(Lcom/htc/painting/engine/edit/StrokeEditView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/edit/StrokeEditView;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;->updateSelectionRegion(Landroid/graphics/RectF;)V

    return-void
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 152
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 154
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    :goto_0
    return v7

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 186
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/edit/StrokeEditView;->invalidate()V

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    .line 161
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    .line 162
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    iget v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    iget v5, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iput v6, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    .line 164
    iput v6, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    goto :goto_1

    .line 169
    :pswitch_1
    iget v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveFactor:F

    mul-float v0, v3, v4

    .line 172
    .local v0, offsetX:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveFactor:F

    mul-float v1, v3, v4

    .line 173
    .local v1, offsetY:F
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 174
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 175
    .local v2, r:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 176
    invoke-direct {p0, v2}, Lcom/htc/painting/engine/edit/StrokeEditView;->updateSelectionRegion(Landroid/graphics/RectF;)V

    .line 177
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    .line 178
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    goto :goto_1

    .line 182
    .end local v0           #offsetX:F
    .end local v1           #offsetY:F
    .end local v2           #r:Landroid/graphics/RectF;
    :pswitch_2
    iput v6, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousX:F

    .line 183
    iput v6, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPreviousY:F

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSelectionRegion(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "newRegion"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mIsMoving:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-interface {v0, v1, p1}, Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;->onSelectionChanged(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    .line 238
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 130
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void
.end method

.method public setOnSelectionListener(Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    .line 201
    return-void
.end method
