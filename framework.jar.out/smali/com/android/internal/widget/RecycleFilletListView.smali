.class public Lcom/android/internal/widget/RecycleFilletListView;
.super Lcom/android/internal/app/AlertController$RecycleListView;
.source "RecycleFilletListView.java"


# static fields
.field public static final BOTTOM_ROUND_CORNER:I = 0x2

.field public static final NO_ROUND_CORNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecycleFilletListView"

.field public static final TOP_BOTTOM_ROUND_CORNER:I = 0x3

.field public static final TOP_ROUND_CORNER:I = 0x1


# instance fields
.field mBottomSelector:Landroid/graphics/drawable/Drawable;

.field mCornerType:I

.field mNormalSelector:Landroid/graphics/drawable/Drawable;

.field mSingleSelector:Landroid/graphics/drawable/Drawable;

.field mTopSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 36
    const v0, #attr@recycleFilletListViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecycleFilletListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/RecycleFilletListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v1, Lcom/android/internal/R$styleable;->RecycleFilletListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 58
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 60
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 62
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public getBottomSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCornerType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    return v0
.end method

.method public getSingleSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 70
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 73
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 74
    .local v3, y:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->pointToPosition(II)I

    move-result v1

    .line 75
    .local v1, itemnum:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 79
    iget v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 92
    :pswitch_1
    if-nez v1, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :pswitch_3
    if-nez v1, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 105
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCornerSelector(III)V
    .locals 4
    .parameter "topResID"
    .parameter "bottomResID"
    .parameter "singleResID"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method

.method public setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "topSel"
    .parameter "bottomSel"
    .parameter "singleSel"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 154
    iput-object p2, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object p3, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method

.method public setCornerType(I)V
    .locals 1
    .parameter "cornerType"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 137
    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_0
    return-void
.end method
