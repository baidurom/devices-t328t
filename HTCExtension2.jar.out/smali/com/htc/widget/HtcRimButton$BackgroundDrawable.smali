.class Lcom/htc/widget/HtcRimButton$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcRimButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcRimButton;
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

.field final synthetic this$0:Lcom/htc/widget/HtcRimButton;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcRimButton;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 208
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p1, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 210
    const v1, 0x2080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    const v1, 0x2080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 215
    const v1, 0x2080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_0
    const v1, 0x208001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 220
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 221
    const v1, 0x208001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 223
    const v1, 0x208001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    iget-boolean v0, v0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    iget-boolean v0, v0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    iget-object v0, v0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    iget v1, v1, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 290
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 318
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 320
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 322
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    .line 323
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    .line 324
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mWidth:I

    .line 325
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mHeight:I

    .line 327
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 309
    return-void
.end method

.method public setAlpha(II)V
    .locals 1
    .parameter "alpha"
    .parameter "drawable"

    .prologue
    .line 229
    packed-switch p2, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 229
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
    .line 313
    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "outer"
    .parameter "press"
    .parameter "background"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 262
    .local v0, rect:Landroid/graphics/Rect;
    iput-object p2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    iget v2, v2, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 267
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 268
    iput-object p3, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 272
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 273
    iput-object p1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    iget-object v1, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimButton;->invalidate()V

    .line 278
    return-void
.end method

.method public setScale(FFI)V
    .locals 7
    .parameter "scale_width"
    .parameter "scale_height"
    .parameter "drawable"

    .prologue
    .line 243
    iget v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 244
    .local v1, width:I
    iget v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 247
    .local v0, height:I
    packed-switch p3, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
