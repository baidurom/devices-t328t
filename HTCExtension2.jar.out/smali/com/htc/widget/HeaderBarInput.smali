.class public Lcom/htc/widget/HeaderBarInput;
.super Landroid/widget/RelativeLayout;
.source "HeaderBarInput.java"


# static fields
.field public static final InputBox:I = 0x1

.field public static final InputSpinner:I = 0x2

.field public static final Invalid:I


# instance fields
.field private autoTextView:Landroid/widget/AutoCompleteTextView;

.field private clearIcon:Landroid/widget/ImageView;

.field private clearIconSize:I

.field private clearTextListener:Landroid/view/View$OnClickListener;

.field private currentMode:I

.field private disableLeftPadding:Z

.field private disableRightPadding:Z

.field private htcSpinner:Lcom/htc/widget/HtcSpinner;

.field private iBPadding:I

.field private iPadding:I

.field private iTPadding:I

.field private inputHeight:I

.field private paddingLeft:I

.field private paddingRight:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressBarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 33
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 36
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 37
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 200
    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    .line 240
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 58
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 33
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 36
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 37
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 45
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 200
    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    .line 240
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 68
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private setupEnvironment()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 89
    const/4 v0, -0x1

    .line 90
    .local v0, layoutH:I
    const/4 v1, -0x1

    .line 93
    .local v1, layoutW:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 98
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .end local v2           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    if-gez v4, :cond_1

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20e009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 112
    const v4, 0x20e009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 113
    const v4, 0x20e009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 115
    const v4, 0x20e00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 118
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    iget-boolean v6, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    if-eqz v6, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {p0, v4, v5, v6, v5}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 119
    return-void

    .line 104
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 118
    :cond_3
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    goto :goto_2
.end method

.method private setupInputBoxMode()V
    .locals 6

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    .line 155
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x209003c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 158
    const v1, 0x202004c

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 159
    const v1, 0x202005b

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 160
    const v1, 0x20200d7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 163
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v3, "common_b_inputfield_rest"

    const v4, 0x208000e

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 170
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 182
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 184
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v2, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 186
    :cond_1
    return-void
.end method

.method private setupInputSpinnerMode()V
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 191
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    .line 194
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->addView(Landroid/view/View;)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    .line 196
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setGravity(I)V

    .line 197
    return-void
.end method

.method private updateInputPadding()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 123
    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    if-gez v5, :cond_1

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 127
    .local v2, resources:Landroid/content/res/Resources;
    const v5, 0x20e00a1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 128
    const v5, 0x20e00a2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 131
    .end local v2           #resources:Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    .line 133
    .local v3, rightPadding:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    .line 134
    .local v0, iconVisibility:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    .line 136
    .local v1, progressVisibility:I
    if-ne v0, v7, :cond_4

    move v5, v4

    :goto_0
    add-int/lit8 v5, v5, 0x0

    if-ne v1, v7, :cond_5

    :goto_1
    add-int v3, v5, v4

    .line 140
    if-eq v1, v7, :cond_2

    if-ne v0, v7, :cond_2

    .line 141
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    add-int/2addr v3, v4

    .line 143
    :cond_2
    if-ne v1, v7, :cond_3

    if-ne v0, v7, :cond_3

    .line 144
    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v7, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 147
    return-void

    .line 136
    :cond_4
    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    add-int/2addr v4, v6

    goto :goto_1
.end method


# virtual methods
.method public disableLeftPadding()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 250
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 251
    return-void
.end method

.method public disableRightPadding()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 264
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 265
    return-void
.end method

.method public enableRightPadding()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 279
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 280
    return-void
.end method

.method public getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    goto :goto_0
.end method

.method public getHtcSpinner()Lcom/htc/widget/HtcSpinner;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 83
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 84
    return-void
.end method

.method public setClearIconListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :cond_0
    return-void

    .line 341
    .restart local p1
    :cond_1
    iget-object p1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setClearIconVisibility(I)V
    .locals 5
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    .line 295
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 300
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 306
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 312
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 313
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x202004c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 314
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 317
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setInputMode(I)V
    .locals 1
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v0, p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 221
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 225
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 226
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputBoxMode()V

    goto :goto_0

    .line 230
    :pswitch_1
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 231
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 232
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputSpinnerMode()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setProgressVisibility(I)V
    .locals 2
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 331
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    goto :goto_0
.end method
