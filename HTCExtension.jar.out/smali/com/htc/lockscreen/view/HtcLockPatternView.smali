.class public Lcom/htc/lockscreen/view/HtcLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "HtcLockPatternView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lockscreen/view/HtcLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected loadAssets(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    .line 30
    iget-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 31
    .local v6, r:Landroid/content/res/Resources;
    sget-object v7, Lcom/htc/R$styleable;->HtcLockPatternView:[I

    invoke-virtual {p1, p2, v7, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, a:Landroid/content/res/TypedArray;
    const v7, 0x208027b

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 34
    .local v2, btnResId:I
    const/4 v7, 0x1

    const v8, 0x208027c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 35
    .local v1, btnPressResId:I
    const/4 v7, 0x2

    const v8, 0x2080279

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 36
    .local v3, circleDefId:I
    const/4 v7, 0x3

    const v8, 0x208027a

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 37
    .local v4, circleGreenId:I
    const/4 v7, 0x4

    const v8, 0x208027d

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 38
    .local v5, circleRedId:I
    invoke-direct {p0, v2}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 39
    invoke-direct {p0, v1}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, v3}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 41
    invoke-direct {p0, v4}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 42
    invoke-direct {p0, v5}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 44
    const v7, 0x2080272

    invoke-direct {p0, v7}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 45
    const v7, 0x2080273

    invoke-direct {p0, v7}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 48
    iget-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapWidth:I

    .line 49
    iget-object v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapHeight:I

    .line 50
    return-void
.end method
