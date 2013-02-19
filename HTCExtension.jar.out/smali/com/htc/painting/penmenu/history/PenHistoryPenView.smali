.class public Lcom/htc/painting/penmenu/history/PenHistoryPenView;
.super Landroid/view/View;
.source "PenHistoryPenView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenHistoryPenView"


# instance fields
.field private final PEN_WIDTH:I

.field private mAngle:F

.field private mHistoryIndex:I

.field private volatile mIcon:Landroid/graphics/Bitmap;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mHistoryIndex:I

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->PEN_WIDTH:I

    .line 52
    return-void
.end method


# virtual methods
.method public contain(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 166
    iget-object v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 170
    const/4 v7, 0x0

    .line 187
    :goto_0
    return v7

    .line 173
    :cond_0
    mul-float v7, p1, p1

    mul-float v8, p2, p2

    add-float v6, v7, v8

    .line 174
    .local v6, sqrR:F
    iget-object v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/history/PenHistory;->getInnerRadius()I

    move-result v2

    .line 175
    .local v2, inner:I
    iget-object v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/history/PenHistory;->getSize()I

    move-result v3

    .line 176
    .local v3, outer:I
    mul-int v7, v2, v2

    int-to-float v7, v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_2

    mul-int v7, v3, v3

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    .line 177
    iget v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mAngle:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 178
    .local v4, radian:D
    float-to-double v7, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 179
    .local v0, d:D
    iget v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->PEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    cmpg-double v7, v0, v7

    if-gez v7, :cond_1

    .line 183
    const/4 v7, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 187
    .end local v0           #d:D
    .end local v4           #radian:D
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getHistoryIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mHistoryIndex:I

    return v0
.end method

.method public getIconAngle()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mAngle:F

    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, ret:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    return v0

    .line 141
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mY:F

    return v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 206
    .local v3, setfil:Landroid/graphics/PaintFlagsDrawFilter;
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 207
    .local v2, remfil:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mX:F

    sub-float v0, v4, v5

    .line 210
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mY:F

    sub-float v1, v4, v5

    .line 212
    .local v1, dy:F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    iget v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mAngle:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 214
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v2           #remfil:Landroid/graphics/PaintFlagsDrawFilter;
    .end local v3           #setfil:Landroid/graphics/PaintFlagsDrawFilter;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistory;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setMeasuredDimension(II)V

    .line 230
    return-void
.end method

.method releaseIcon()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHistoryIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mHistoryIndex:I

    .line 72
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    .line 82
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setIconAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mAngle:F

    .line 103
    return-void
.end method

.method public setIconPos(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mX:F

    .line 94
    iput p2, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mY:F

    .line 95
    return-void
.end method

.method setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V
    .locals 0
    .parameter "penHistory"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 56
    return-void
.end method
