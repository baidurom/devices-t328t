.class public Lcom/htc/widget/HtcTabWidget;
.super Landroid/widget/LinearLayout;
.source "HtcTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;,
        Lcom/htc/widget/HtcTabWidget$TabClickListener;
    }
.end annotation


# static fields
.field static final TOTALTAB:I = 0x20


# instance fields
.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

.field private mTabView:[Landroid/view/View;

.field private madd:I

.field private moldSelectedTab:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    .line 48
    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    .line 49
    const/16 v1, 0x20

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    .line 50
    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    .line 62
    invoke-direct {p0}, Lcom/htc/widget/HtcTabWidget;->initTabWidget()V

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcTabWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcTabWidget;)Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 3

    .prologue
    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->setOrientation(I)V

    .line 84
    iget v2, p0, Lcom/htc/widget/HtcTabWidget;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->mGroupFlags:I

    .line 86
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mContext:Landroid/content/Context;

    .line 87
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, -0x1

    .line 264
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 251
    new-instance v0, Lcom/htc/widget/HtcTabWidget$TabClickListener;

    iget v1, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcTabWidget$TabClickListener;-><init>(Lcom/htc/widget/HtcTabWidget;ILcom/htc/widget/HtcTabWidget$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 254
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    .line 255
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 130
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->invalidate()V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    .line 214
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->setCurrentTab(I)V

    .line 217
    if-eq v0, p1, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 220
    :cond_0
    return-void
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 311
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 328
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 79
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 169
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    iput v0, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    .line 174
    iput p1, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    .line 175
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 176
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcTabWidget$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabWidget$1;-><init>(Lcom/htc/widget/HtcTabWidget;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v1

    .line 231
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 232
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/widget/HtcTabWidget;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

    .line 304
    return-void
.end method

.method public setTabView(Landroid/view/View;I)Z
    .locals 1
    .parameter "vw"
    .parameter "index"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    aput-object p1, v0, p2

    .line 276
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabViewPressed(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 284
    iget v3, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    if-le p1, v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    .line 287
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v1

    .line 288
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 289
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 288
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
