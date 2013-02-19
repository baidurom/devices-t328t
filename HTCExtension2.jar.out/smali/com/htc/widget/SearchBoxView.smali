.class public Lcom/htc/widget/SearchBoxView;
.super Landroid/widget/LinearLayout;
.source "SearchBoxView.java"


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mHtcContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/htc/widget/SearchBoxView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/htc/widget/SearchBoxView;->init()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/SearchBoxView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/SearchBoxView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/SearchBoxView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    .line 34
    :try_start_0
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 35
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 38
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v7, "title_15_searchboxview_1x1"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 40
    .local v5, test_id:I
    const v6, 0x209007b

    invoke-virtual {v1, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 41
    .local v3, layout:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/SearchBoxView;->getId()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 42
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v7, "common_panel_input_base"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/SearchBoxView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 45
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, innerView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 47
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .end local v2           #innerView:Landroid/view/View;
    :cond_2
    const v6, 0x2020174

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    .line 51
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v7, "common_edit_text"

    invoke-static {v6, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 52
    .local v4, mEditTextBkg:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 53
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_3
    const v6, 0x2020171

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    .line 56
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/htc/widget/SearchBoxView$1;

    invoke-direct {v7, p0}, Lcom/htc/widget/SearchBoxView$1;-><init>(Lcom/htc/widget/SearchBoxView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v6, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/htc/widget/SearchBoxView$2;

    invoke-direct {v7, p0}, Lcom/htc/widget/SearchBoxView$2;-><init>(Lcom/htc/widget/SearchBoxView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/ViewGroup;
    .end local v4           #mEditTextBkg:Landroid/graphics/drawable/Drawable;
    .end local v5           #test_id:I
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public showProgressBar(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v2, "pbar"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, test_id:I
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
