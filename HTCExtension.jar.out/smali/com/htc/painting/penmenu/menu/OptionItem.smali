.class public abstract Lcom/htc/painting/penmenu/menu/OptionItem;
.super Ljava/lang/Object;
.source "OptionItem.java"


# instance fields
.field protected mCenterX:D

.field protected mCenterY:D

.field protected mDegree:F

.field protected mDisabledIcon:Landroid/graphics/Bitmap;

.field protected mEnabled:Z

.field protected mFocus:Z

.field protected mFocusedIcon:Landroid/graphics/Bitmap;

.field protected mIcon:Landroid/graphics/Bitmap;

.field protected mId:I

.field protected mIgnored:Z

.field protected mName:Ljava/lang/String;

.field protected mRadius:I

.field protected mStartAnim:Z

.field protected mStartAnimTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    .line 56
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIgnored:Z

    .line 93
    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    return-void
.end method


# virtual methods
.method public contain(DD)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterX:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterX:D

    sub-double v2, p1, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterY:D

    sub-double v2, p3, v2

    iget-wide v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterY:D

    sub-double v4, p3, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mRadius:I

    iget v3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mRadius:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimFrame(JI)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "time"
    .parameter "colorToTint"

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCenterX()D
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterX:D

    return-wide v0
.end method

.method public getCenterY()D
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterY:D

    return-wide v0
.end method

.method public getFocus()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "colorForFilter"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRadiusDecreasement()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getRotateDegree()F
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    return v0
.end method

.method public isIgnored()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIgnored:Z

    return v0
.end method

.method public isPlayAnim(Z)Z
    .locals 1
    .parameter "focused"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    .line 333
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    .line 345
    :cond_2
    return-void
.end method

.method public setCenter(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterX:D

    .line 161
    iput-wide p3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mCenterY:D

    .line 162
    return-void
.end method

.method public setDegree(F)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 112
    iput p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDegree:F

    .line 113
    return-void
.end method

.method public setDisabledIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "disabledIcon"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    .line 145
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    .line 300
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    .line 211
    return-void
.end method

.method public setFocusedIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "focusedIcon"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 250
    iput p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    .line 251
    return-void
.end method

.method public setIgnored(Z)V
    .locals 0
    .parameter "ignored"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIgnored:Z

    .line 316
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mName:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnimTime:J

    .line 268
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    .line 276
    return-void
.end method
