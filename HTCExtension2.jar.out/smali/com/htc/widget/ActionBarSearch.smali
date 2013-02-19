.class public Lcom/htc/widget/ActionBarSearch;
.super Landroid/widget/RelativeLayout;
.source "ActionBarSearch.java"


# static fields
.field public static final MODE_AUTOMOTIVE:I = 0x2

.field public static final MODE_EXTERNAL:I = 0x1


# instance fields
.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private commonOffset:I

.field private iconSize:I

.field private iconView:Landroid/widget/ImageView;

.field private internalListener:Landroid/view/View$OnClickListener;

.field private progressSize:I

.field private progressView:Landroid/widget/ProgressBar;

.field private resource:Landroid/content/res/Resources;

.field private searchButton:Lcom/htc/widget/HtcCompoundButton;

.field private serButtonWidth:I

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    .line 39
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 42
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 160
    new-instance v2, Lcom/htc/widget/ActionBarSearch$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarSearch$1;-><init>(Lcom/htc/widget/ActionBarSearch;)V

    iput-object v2, p0, Lcom/htc/widget/ActionBarSearch;->internalListener:Landroid/view/View$OnClickListener;

    .line 183
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    .line 186
    iput v4, p0, Lcom/htc/widget/ActionBarSearch;->iconSize:I

    .line 244
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    .line 247
    iput v4, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    .line 320
    iput v4, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    .line 336
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    .line 337
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->serButtonWidth:I

    .line 70
    iput-object v3, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 73
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "package resouce null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    .line 79
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v3, 0x2050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 82
    .local v1, verticalPadding:I
    iget v2, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    iget v3, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/htc/widget/ActionBarSearch;->setPadding(IIII)V

    .line 83
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarSearch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 95
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v3, 0x20400e7

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 97
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 98
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v3, 0x203002c

    invoke-virtual {v2, p1, v3}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 102
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarSearch;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    .line 39
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 42
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 160
    new-instance v0, Lcom/htc/widget/ActionBarSearch$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarSearch$1;-><init>(Lcom/htc/widget/ActionBarSearch;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarSearch;->internalListener:Landroid/view/View$OnClickListener;

    .line 183
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    .line 186
    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->iconSize:I

    .line 244
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    .line 247
    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    .line 320
    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    .line 336
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/ActionBarSearch;->serButtonWidth:I

    .line 48
    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    .line 51
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "package resource null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-ne p2, v4, :cond_1

    .line 58
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    .line 61
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarSearch;->setSupportMode(I)V

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarSearch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarSearch;)Lcom/htc/widget/HtcCompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    return-object v0
.end method

.method private setupAutomotiveMode()V
    .locals 11

    .prologue
    const v1, 0x2080007

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v10, -0x2

    .line 342
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v2, 0x2050003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 343
    .local v9, vPadding:I
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v2, 0x2050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 346
    .local v7, hPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarSearch;->removeAllViews()V

    .line 347
    invoke-virtual {p0, v7, v9, v7, v9}, Lcom/htc/widget/ActionBarSearch;->setPadding(IIII)V

    .line 350
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 351
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 353
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v2, 0x20400e7

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 354
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 355
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v2, 0x208000c

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->mContext:Landroid/content/Context;

    const v3, 0x2030085

    invoke-virtual {v0, v2, v3}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 357
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 360
    .local v6, buttonSize:I
    iput v6, p0, Lcom/htc/widget/ActionBarSearch;->serButtonWidth:I

    .line 363
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    add-int v2, v7, v9

    add-int/2addr v2, v6

    invoke-virtual {v0, v7, v5, v2, v5}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 365
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarSearch;->addView(Landroid/view/View;)V

    .line 368
    new-instance v0, Lcom/htc/widget/HtcCompoundButton;

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    .line 369
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcCompoundButton;->setId(I)V

    .line 370
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    const v2, 0x2080008

    const v3, 0x2080136

    const v4, 0x2080131

    const v5, 0x2080130

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCompoundButton;->setButtonDrawableResources(IIIII)V

    .line 380
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    .local v8, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    const/16 v0, 0xf

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 385
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcCompoundButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarSearch;->addView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/widget/ActionBarSearch$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarSearch$2;-><init>(Lcom/htc/widget/ActionBarSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 403
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    new-instance v1, Lcom/htc/widget/ActionBarSearch$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarSearch$3;-><init>(Lcom/htc/widget/ActionBarSearch;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 416
    return-void
.end method

.method private updateSearchPadding()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 109
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v3

    .line 110
    .local v3, paddingTop:I
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v1

    .line 111
    .local v1, paddingLeft:I
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v0

    .line 113
    .local v0, paddingBottom:I
    move v2, v1

    .line 115
    .local v2, paddingRight:I
    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    if-gez v4, :cond_0

    .line 116
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "common offset not initialize"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 119
    const-string v4, "ActionBarSearch"

    const-string v5, "supportMode==MODE_AUTOMOTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcCompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 122
    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/htc/widget/ActionBarSearch;->serButtonWidth:I

    add-int v2, v4, v5

    .line 132
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 133
    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    add-int v2, v4, v5

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_3

    .line 138
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 143
    :cond_3
    return-void

    .line 126
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 127
    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/htc/widget/ActionBarSearch;->iconSize:I

    add-int v2, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 155
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarSearch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->enableHtcTextSelection(ZI)V

    .line 157
    :cond_0
    return-void
.end method

.method public setClearIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/htc/widget/ActionBarSearch;->internalListener:Landroid/view/View$OnClickListener;

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_1
    return-void
.end method

.method public setClearIconVisibility(I)V
    .locals 6
    .parameter "visibility"

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    iget v2, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    .line 199
    iget v2, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    if-gez v2, :cond_3

    .line 200
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "common offset not initialize"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v1, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v3, 0x2080028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    .line 214
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/ActionBarSearch;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    .line 216
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    const v3, 0x2080145

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/ActionBarSearch;->internalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 221
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 224
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    iget v4, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ActionBarSearch;->iconSize:I

    .line 229
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarSearch;->addView(Landroid/view/View;)V

    .line 232
    .end local v0           #iconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_5

    .line 237
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    .line 239
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/ActionBarSearch;->updateSearchPadding()V

    goto/16 :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 8
    .parameter "visibility"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 255
    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    if-gez v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "common offset not initialize"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    .line 261
    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    if-ne v1, v6, :cond_3

    .line 262
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v2, 0x2080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    .line 263
    const-string v1, "vincent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE_AUTOMOTIVE , progressSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    iget v2, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 275
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    .line 276
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarSearch;->addView(Landroid/view/View;)V

    .line 282
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 287
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 288
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 289
    invoke-virtual {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->commonOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 314
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 315
    invoke-direct {p0}, Lcom/htc/widget/ActionBarSearch;->updateSearchPadding()V

    .line 316
    return-void

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->resource:Landroid/content/res/Resources;

    const v2, 0x20e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarSearch;->progressSize:I

    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 299
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 300
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 302
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCompoundButton;->getVisibility()I

    move-result v1

    if-eq v1, v7, :cond_2

    iget v1, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    if-ne v1, v6, :cond_2

    .line 307
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 310
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 311
    iget-object v1, p0, Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCompoundButton;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method public setSupportMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 326
    iget v0, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    if-ne v0, p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-ne p1, v1, :cond_0

    .line 331
    iput v1, p0, Lcom/htc/widget/ActionBarSearch;->supportMode:I

    .line 332
    invoke-direct {p0}, Lcom/htc/widget/ActionBarSearch;->setupAutomotiveMode()V

    goto :goto_0
.end method
