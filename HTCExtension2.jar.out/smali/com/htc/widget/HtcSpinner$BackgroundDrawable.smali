.class Lcom/htc/widget/HtcSpinner$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private mButtonRest:Landroid/graphics/drawable/Drawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mOuter:Landroid/graphics/drawable/Drawable;

.field private mOuterPressed:Landroid/graphics/drawable/Drawable;

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/widget/HtcSpinner;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSpinner;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 245
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 246
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x208001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 249
    const v1, 0x208001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 252
    const v1, 0x208001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 255
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    #getter for: Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z
    invoke-static {v0}, Lcom/htc/widget/HtcSpinner;->access$000(Lcom/htc/widget/HtcSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    #getter for: Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I
    invoke-static {v1}, Lcom/htc/widget/HtcSpinner;->access$100(Lcom/htc/widget/HtcSpinner;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 262
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 270
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 271
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 273
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    .line 274
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    .line 275
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    .line 276
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    .line 277
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 281
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 303
    return-void
.end method

.method public setScale(F)V
    .locals 7
    .parameter "scale"

    .prologue
    .line 290
    iget v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    iget v2, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 291
    .local v0, scaleValue:I
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    return-void
.end method
