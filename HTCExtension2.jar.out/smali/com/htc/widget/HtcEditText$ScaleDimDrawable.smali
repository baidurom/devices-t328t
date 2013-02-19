.class Lcom/htc/widget/HtcEditText$ScaleDimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDimDrawable"
.end annotation


# instance fields
.field private mColor:I

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field final synthetic this$0:Lcom/htc/widget/HtcEditText;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcEditText;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const v3, 0x2080175

    .line 362
    iput-object p1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 363
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    .local v0, res:Landroid/content/res/Resources;
    #getter for: Lcom/htc/widget/HtcEditText;->mMode:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$200(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 365
    const v1, 0x208000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    const v1, 0x208000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    const v1, 0x208000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    #getter for: Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$400(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$302(Lcom/htc/widget/HtcEditText;I)I

    .line 369
    #getter for: Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$600(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$502(Lcom/htc/widget/HtcEditText;I)I

    .line 383
    :goto_0
    const-string v1, "multiply_color"

    const/high16 v2, 0x206

    invoke-static {p2, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mColor:I

    .line 384
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 385
    return-void

    .line 370
    :cond_0
    #getter for: Lcom/htc/widget/HtcEditText;->mMode:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$200(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 371
    const v1, 0x2080171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    const v1, 0x2080172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 373
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 374
    #getter for: Lcom/htc/widget/HtcEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$400(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$302(Lcom/htc/widget/HtcEditText;I)I

    .line 375
    #getter for: Lcom/htc/widget/HtcEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$600(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$502(Lcom/htc/widget/HtcEditText;I)I

    goto :goto_0

    .line 377
    :cond_1
    const v1, 0x2080173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    const v1, 0x2080174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    #getter for: Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$700(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$302(Lcom/htc/widget/HtcEditText;I)I

    .line 381
    #getter for: Lcom/htc/widget/HtcEditText;->BRIGHT_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcEditText;->access$800(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcEditText;->access$502(Lcom/htc/widget/HtcEditText;I)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mIsDown:Z
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$900(Lcom/htc/widget/HtcEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 396
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method getMutiplyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingLeft:I
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$1200(Lcom/htc/widget/HtcEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 491
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingTop:I
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$300(Lcom/htc/widget/HtcEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingRight:I
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$1300(Lcom/htc/widget/HtcEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 493
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDefaultPaddingBottom:I
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$500(Lcom/htc/widget/HtcEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 494
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 440
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 441
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 442
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 443
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/HtcEditText;->mIsUserSetAlpha:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcEditText;->access$1002(Lcom/htc/widget/HtcEditText;Z)Z

    .line 419
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #setter for: Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I
    invoke-static {v0, p1}, Lcom/htc/widget/HtcEditText;->access$1102(Lcom/htc/widget/HtcEditText;I)I

    .line 420
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 422
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 423
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 431
    return-void
.end method

.method setDisableAlpha()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$1400(Lcom/htc/widget/HtcEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1100(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1400(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 509
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1400(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 510
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1400(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 512
    :cond_0
    return-void
.end method

.method setEnableAlpha()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1100(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1100(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcEditText$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcEditText;

    #getter for: Lcom/htc/widget/HtcEditText;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcEditText;->access$1100(Lcom/htc/widget/HtcEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 504
    return-void
.end method
