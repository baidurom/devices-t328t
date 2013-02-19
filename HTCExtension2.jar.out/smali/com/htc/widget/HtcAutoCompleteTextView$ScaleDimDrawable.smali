.class Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAutoCompleteTextView;
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

.field final synthetic this$0:Lcom/htc/widget/HtcAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAutoCompleteTextView;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const v3, 0x2080175

    .line 418
    iput-object p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 419
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    .local v0, res:Landroid/content/res/Resources;
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$200(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 421
    const v1, 0x208000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 422
    const v1, 0x208000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    const v1, 0x208000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$302(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    .line 425
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$600(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$502(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    .line 439
    :goto_0
    const-string v1, "multiply_color"

    const/high16 v2, 0x206

    invoke-static {p2, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mColor:I

    .line 440
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 441
    return-void

    .line 426
    :cond_0
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mMode:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$200(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 427
    const v1, 0x2080171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    const v1, 0x2080172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 429
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$302(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    .line 431
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$600(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$502(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    goto :goto_0

    .line 433
    :cond_1
    const v1, 0x2080173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 434
    const v1, 0x2080174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 435
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 436
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_TOP:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$700(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$302(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    .line 437
    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->BRIGHT_PADDING_BOTTOM:I
    invoke-static {p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$800(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$502(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mIsDown:Z
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$900(Lcom/htc/widget/HtcAutoCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 448
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method getMutiplyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1200(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 507
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$300(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 508
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1300(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 509
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$500(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 476
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 477
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 478
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 479
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1002(Lcom/htc/widget/HtcAutoCompleteTextView;Z)Z

    .line 463
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #setter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1102(Lcom/htc/widget/HtcAutoCompleteTextView;I)I

    .line 464
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 466
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 467
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 471
    return-void
.end method

.method setDisableAlpha()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1100(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableDisableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1400(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 528
    :cond_0
    return-void
.end method

.method setEnableAlpha()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1100(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 518
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1100(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #getter for: Lcom/htc/widget/HtcAutoCompleteTextView;->mDrawableAlpha:I
    invoke-static {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$1100(Lcom/htc/widget/HtcAutoCompleteTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 520
    return-void
.end method
