.class Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcRimImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcRimImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# static fields
.field static final DRAWABLE_BUTTON:I = 0x2

.field static final DRAWABLE_OUTER:I = 0x0

.field static final DRAWABLE_OUTER_PRESS:I = 0x1


# instance fields
.field private mButtonRest:Landroid/graphics/drawable/Drawable;

.field private mCenterXP:I

.field private mCenterYP:I

.field private mHeight:I

.field private mOuter:Landroid/graphics/drawable/Drawable;

.field private mOuterPressed:Landroid/graphics/drawable/Drawable;

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/widget/HtcRimImageButton;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcRimImageButton;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 218
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p1, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 220
    const v1, 0x2080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    const v1, 0x2080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 225
    const v1, 0x2080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    const v1, 0x208001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 231
    const v1, 0x208001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 233
    const v1, 0x208001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 316
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    iget-boolean v0, v0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    iget-boolean v0, v0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    iget-object v0, v0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    iget v1, v1, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    return-void

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 363
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 364
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 365
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 367
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    .line 368
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    .line 369
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mWidth:I

    .line 370
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mHeight:I

    .line 372
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 346
    return-void
.end method

.method public setAlpha(II)V
    .locals 1
    .parameter "alpha"
    .parameter "drawable"

    .prologue
    .line 243
    packed-switch p2, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 354
    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "outer"
    .parameter "press"
    .parameter "background"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    .local v0, rect:Landroid/graphics/Rect;
    iput-object p2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    iget v2, v2, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 286
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 289
    iput-object p3, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 293
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 294
    iput-object p1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 296
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 298
    iget-object v1, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    .line 299
    return-void
.end method

.method public setScale(FFI)V
    .locals 7
    .parameter "scale_width"
    .parameter "scale_height"
    .parameter "drawable"

    .prologue
    .line 261
    iget v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 262
    .local v1, width:I
    iget v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 264
    .local v0, height:I
    packed-switch p3, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v2, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimImageButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
