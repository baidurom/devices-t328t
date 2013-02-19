.class public Lcom/htc/widget/HtcStarButton;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcStarButton.java"


# instance fields
.field mIsSmallSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcStarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcStarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput-boolean v2, p0, Lcom/htc/widget/HtcStarButton;->mIsSmallSize:Z

    .line 29
    sget-object v1, Lcom/htc/R$styleable;->HtcStarButtonMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcStarButton;->mIsSmallSize:Z

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-direct {p0}, Lcom/htc/widget/HtcStarButton;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isSmall"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcStarButton;->mIsSmallSize:Z

    .line 17
    iput-boolean p2, p0, Lcom/htc/widget/HtcStarButton;->mIsSmallSize:Z

    .line 19
    invoke-direct {p0}, Lcom/htc/widget/HtcStarButton;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/htc/widget/HtcStarButton;->mIsContentMultiplyRequired:Z

    .line 40
    iput-boolean v0, p0, Lcom/htc/widget/HtcStarButton;->mHasOnState:Z

    .line 41
    iget-boolean v0, p0, Lcom/htc/widget/HtcStarButton;->mIsSmallSize:Z

    if-nez v0, :cond_0

    .line 42
    const v1, 0x2080030

    const v2, 0x2080031

    const v4, 0x2080032

    const v5, 0x208002f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcStarButton;->setButtonDrawableResources(IIIII)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    const v1, 0x2080195

    const v2, 0x2080196

    const v4, 0x2080197

    const v5, 0x2080194

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcStarButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0
.end method
