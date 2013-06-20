.class Lcom/htc/fm/ui/widget/SignalBar$Level;
.super Landroid/view/View;
.source "SignalBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/ui/widget/SignalBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Level"
.end annotation


# instance fields
.field private isMirror:Z

.field private isReverse:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I

.field private mDrawRect:Landroid/graphics/Rect;

.field private mMaxLevel:I

.field private mOffDraw:Landroid/graphics/drawable/Drawable;

.field private mOnDraw:Landroid/graphics/drawable/Drawable;

.field private mSpace:I

.field final synthetic this$0:Lcom/htc/fm/ui/widget/SignalBar;


# direct methods
.method private constructor <init>(Lcom/htc/fm/ui/widget/SignalBar;Landroid/content/Context;IIIIZZ)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "maxLevel"
    .parameter "space"
    .parameter "onResID"
    .parameter "offResID"
    .parameter "reverse"
    .parameter "mirror"

    .prologue
    const/4 v1, 0x0

    .line 71
    iput-object p1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->this$0:Lcom/htc/fm/ui/widget/SignalBar;

    .line 72
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isReverse:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isMirror:Z

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    .line 73
    iput-object p2, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mContext:Landroid/content/Context;

    .line 74
    iput p3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mMaxLevel:I

    .line 75
    iput p4, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mSpace:I

    .line 76
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOffDraw:Landroid/graphics/drawable/Drawable;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mCurrentLevel:I

    .line 79
    iput-boolean p7, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isReverse:Z

    .line 80
    iput-boolean p8, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isMirror:Z

    .line 81
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 82
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/ui/widget/SignalBar;Landroid/content/Context;IIIIZZLcom/htc/fm/ui/widget/SignalBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p8}, Lcom/htc/fm/ui/widget/SignalBar$Level;-><init>(Lcom/htc/fm/ui/widget/SignalBar;Landroid/content/Context;IIIIZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/ui/widget/SignalBar$Level;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/SignalBar$Level;->setLevel(I)V

    return-void
.end method

.method private setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 127
    iput p1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mCurrentLevel:I

    .line 128
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/SignalBar$Level;->invalidate()V

    .line 129
    return-void
.end method


# virtual methods
.method public intenrnalGetMeasureHeight()I
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 87
    .local v0, height:I
    iget v1, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mMaxLevel:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mSpace:I

    iget v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mMaxLevel:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public internalGetMeasuredWidth()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 102
    .local v1, height:I
    iget v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mSpace:I

    add-int v0, v1, v3

    .line 104
    .local v0, delta:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mMaxLevel:I

    if-ge v2, v3, :cond_3

    .line 106
    iget-boolean v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isReverse:Z

    if-eqz v3, :cond_1

    .line 107
    iget-boolean v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->isMirror:Z

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    mul-int v4, v2, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 109
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 116
    :cond_0
    :goto_1
    iget v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mCurrentLevel:I

    if-gt v2, v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOnDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/SignalBar$Level;->getBottom()I

    move-result v4

    mul-int v5, v2, v0

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 113
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOffDraw:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    iget-object v3, p0, Lcom/htc/fm/ui/widget/SignalBar$Level;->mOffDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 124
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/SignalBar$Level;->internalGetMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/SignalBar$Level;->intenrnalGetMeasureHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/ui/widget/SignalBar$Level;->setMeasuredDimension(II)V

    .line 97
    return-void
.end method
