.class public Lcom/htc/painting/penmenu/action/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/painting/penmenu/action/ActionItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISABLED_ICON_IDX:I = 0x2

.field public static final NORMAL_ICON_IDX:I = 0x0

.field public static final PRESSED_ICON_IDX:I = 0x1


# instance fields
.field private mActionId:I

.field private mActive:Z

.field private mAngleRangeByDegree:F

.field private mBeginAngleByDegree:F

.field private mEnabled:Z

.field private mFocus:Z

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mInnerRadius:F

.field private mPosition:I

.field private mRadiusRange:F

.field private mStartAnim:Z

.field private mStartAnimTime:J

.field private mState:Lcom/htc/painting/penmenu/action/ActionState;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "actionId"
    .parameter "pos"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mFocus:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mActive:Z

    .line 83
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnim:Z

    .line 88
    iput p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mActionId:I

    .line 89
    iput p2, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mPosition:I

    .line 90
    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mState:Lcom/htc/painting/penmenu/action/ActionState;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mState:Lcom/htc/painting/penmenu/action/ActionState;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu/action/ActionState;->changeState(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 130
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/htc/painting/penmenu/action/ActionItem;)I
    .locals 4
    .parameter "another"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 394
    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 399
    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 404
    goto :goto_0

    .line 405
    :cond_3
    iget v1, p1, Lcom/htc/painting/penmenu/action/ActionItem;->mPosition:I

    iget v2, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mPosition:I

    if-ge v1, v2, :cond_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/htc/painting/penmenu/action/ActionItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/action/ActionItem;->compareTo(Lcom/htc/painting/penmenu/action/ActionItem;)I

    move-result v0

    return v0
.end method

.method public contain(FF)Z
    .locals 2
    .parameter "radius"
    .parameter "angleByDegree"

    .prologue
    .line 164
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mInnerRadius:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mInnerRadius:F

    iget v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mRadiusRange:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mBeginAngleByDegree:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mBeginAngleByDegree:F

    iget v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mAngleRangeByDegree:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mActionId:I

    return v0
.end method

.method public getAngleByDegree()F
    .locals 3

    .prologue
    .line 355
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mBeginAngleByDegree:F

    iget v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mAngleRangeByDegree:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAngleRangeByDegree()F
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mAngleRangeByDegree:F

    return v0
.end method

.method public getBackgroundAlpha()I
    .locals 11

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, alpha:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionItem;->isRunning()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 446
    .local v6, time:J
    iget-wide v9, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnimTime:J

    sub-long v4, v6, v9

    .line 447
    .local v4, interval:J
    const/16 v1, 0x14

    .line 448
    .local v1, duration:I
    const/16 v2, 0x10

    .line 449
    .local v2, frameCount:I
    const/16 v9, 0x140

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-ltz v9, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionItem;->stopAnim()V

    .line 458
    .end local v1           #duration:I
    .end local v2           #frameCount:I
    .end local v4           #interval:J
    .end local v6           #time:J
    :cond_0
    :goto_0
    return v0

    .line 452
    .restart local v1       #duration:I
    .restart local v2       #frameCount:I
    .restart local v4       #interval:J
    .restart local v6       #time:J
    :cond_1
    long-to-int v9, v4

    div-int v3, v9, v1

    .line 453
    .local v3, index:I
    int-to-float v9, v3

    int-to-float v10, v2

    div-float v8, v9, v10

    .line 454
    .local v8, x:F
    const/high16 v9, -0x3f80

    mul-float v10, v8, v8

    sub-float/2addr v10, v8

    mul-float/2addr v9, v10

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v0, v9

    goto :goto_0
.end method

.method public getBeginAngleByDegree()F
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mBeginAngleByDegree:F

    return v0
.end method

.method public getFocus()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mFocus:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionItem;->isRunning()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 201
    .local v13, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnimTime:J

    move-wide/from16 v17, v0

    sub-long v10, v13, v17

    .line 202
    .local v10, interval:J
    const/16 v5, 0x14

    .line 203
    .local v5, duration:I
    const/16 v6, 0x10

    .line 204
    .local v6, frameCount:I
    const/16 v17, 0x140

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v10, v17

    if-gez v17, :cond_0

    .line 205
    long-to-int v0, v10

    move/from16 v17, v0

    div-int v9, v17, v5

    .line 206
    .local v9, index:I
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 207
    .local v16, x:F
    const/high16 v17, -0x3f80

    mul-float v18, v16, v16

    sub-float v18, v18, v16

    mul-float v17, v17, v18

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v3, v0

    .line 209
    .local v3, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v8, v17, v18

    .line 210
    .local v8, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 211
    .local v15, w:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 213
    .local v7, h:I
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 214
    .local v12, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 217
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    .line 218
    .local v2, actionIcon:Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v15, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v8, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v8, v17, v18

    .line 223
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 224
    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v8, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    .end local v2           #actionIcon:Landroid/graphics/Bitmap;
    .end local v3           #alpha:I
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #duration:I
    .end local v6           #frameCount:I
    .end local v7           #h:I
    .end local v8           #icon:Landroid/graphics/Bitmap;
    .end local v9           #index:I
    .end local v10           #interval:J
    .end local v12           #paint:Landroid/graphics/Paint;
    .end local v13           #time:J
    .end local v15           #w:I
    .end local v16           #x:F
    :goto_0
    return-object v2

    .line 230
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v2, v17, v18

    goto :goto_0

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v2, v17, v18

    goto :goto_0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mInnerRadius:F

    iget v1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mRadiusRange:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mState:Lcom/htc/painting/penmenu/action/ActionState;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mState:Lcom/htc/painting/penmenu/action/ActionState;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionState;->toInteger()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mActive:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mEnabled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnim:Z

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnim:Z

    .line 110
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 120
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 115
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mActive:Z

    .line 322
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mEnabled:Z

    .line 296
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mFocus:Z

    .line 270
    return-void
.end method

.method public setIcons([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icons"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mIcons:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setPosition(FFFF)V
    .locals 0
    .parameter "innerRadius"
    .parameter "radiusRange"
    .parameter "beginAngleByDegree"
    .parameter "angleRangeByDegree"

    .prologue
    .line 188
    iput p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mInnerRadius:F

    .line 189
    iput p2, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mRadiusRange:F

    .line 190
    iput p3, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mBeginAngleByDegree:F

    .line 191
    iput p4, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mAngleRangeByDegree:F

    .line 192
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/action/ActionState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mState:Lcom/htc/painting/penmenu/action/ActionState;

    .line 138
    return-void
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnim:Z

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnimTime:J

    .line 419
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/action/ActionItem;->mStartAnim:Z

    .line 427
    return-void
.end method
