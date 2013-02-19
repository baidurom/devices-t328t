.class public Lcom/htc/graphic/PopupWindowDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "PopupWindowDrawable.java"


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ZERO_STATE_SET:[I


# instance fields
.field mAbove:Lcom/htc/graphic/BubbleDrawable;

.field mBlow:Lcom/htc/graphic/BubbleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100aa

    aput v1, v0, v2

    sput-object v0, Lcom/htc/graphic/PopupWindowDrawable;->ABOVE_ANCHOR_STATE_SET:[I

    .line 15
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/graphic/PopupWindowDrawable;->ZERO_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 23
    new-instance v0, Lcom/htc/graphic/BubbleDrawable;

    invoke-direct {v0, p1}, Lcom/htc/graphic/BubbleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    .line 24
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/htc/graphic/BubbleDrawable;->setGravity(I)V

    .line 25
    new-instance v0, Lcom/htc/graphic/BubbleDrawable;

    invoke-direct {v0, p1}, Lcom/htc/graphic/BubbleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    .line 26
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/htc/graphic/BubbleDrawable;->setGravity(I)V

    .line 28
    sget-object v0, Lcom/htc/graphic/PopupWindowDrawable;->ABOVE_ANCHOR_STATE_SET:[I

    iget-object v1, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {p0, v0, v1}, Lcom/htc/graphic/PopupWindowDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    sget-object v0, Lcom/htc/graphic/PopupWindowDrawable;->ZERO_STATE_SET:[I

    iget-object v1, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {p0, v0, v1}, Lcom/htc/graphic/PopupWindowDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "padding"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/graphic/PopupWindowDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/graphic/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/graphic/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/graphic/PopupWindowDrawable;->getOffset()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mAbove:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/graphic/BubbleDrawable;->setOffset(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/htc/graphic/PopupWindowDrawable;->mBlow:Lcom/htc/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/graphic/BubbleDrawable;->setOffset(I)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/htc/graphic/PopupWindowDrawable;->invalidateSelf()V

    .line 56
    :cond_2
    return-void
.end method
