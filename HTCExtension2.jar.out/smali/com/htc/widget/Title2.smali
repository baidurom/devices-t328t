.class public Lcom/htc/widget/Title2;
.super Landroid/widget/RelativeLayout;
.source "Title2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private DropClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDropView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    .line 516
    new-instance v0, Lcom/htc/widget/Title2$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/Title2$1;-><init>(Lcom/htc/widget/Title2;)V

    iput-object v0, p0, Lcom/htc/widget/Title2;->DropClickListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    .line 516
    new-instance v0, Lcom/htc/widget/Title2$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/Title2$1;-><init>(Lcom/htc/widget/Title2;)V

    iput-object v0, p0, Lcom/htc/widget/Title2;->DropClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    .line 516
    new-instance v0, Lcom/htc/widget/Title2$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/Title2$1;-><init>(Lcom/htc/widget/Title2;)V

    iput-object v0, p0, Lcom/htc/widget/Title2;->DropClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/Title2;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    .line 132
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 137
    return-void
.end method

.method public disableDropDownList()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public enableBlock(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/htc/widget/Title2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public enableRightBlock2()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public getDropDownList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideDropDown()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->updateArrowIcon()V

    .line 250
    return-void
.end method

.method public hideDropDownList()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->updateArrowIcon()V

    .line 226
    return-void
.end method

.method public isDropDownListShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setBlockClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 1
    .parameter "l"
    .parameter "resId"

    .prologue
    .line 475
    invoke-virtual {p0, p2}, Lcom/htc/widget/Title2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setDropDownContentView(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 272
    iget-object v2, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 273
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    .line 277
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 278
    .local v1, parent:Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x44

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 281
    iget-object v2, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 148
    iget-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    if-nez v3, :cond_0

    .line 149
    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    .line 151
    iget-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 152
    iget-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 153
    iget-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 158
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/htc/widget/Title2;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 163
    .local v2, parent:Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 166
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/16 v4, 0x3c

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    iget-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 170
    .local v0, index:I
    iget-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v3, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/htc/widget/Title2;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    .end local v0           #index:I
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "id"
    .parameter "res"

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/htc/widget/Title2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 412
    .local v0, view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public setRightBlockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 443
    return-void
.end method

.method public setRightBlocksGone()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public setRightIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 429
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 399
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 382
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 334
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 317
    return-void
.end method

.method public setTitleCenter()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public showDropDown()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->updateArrowIcon()V

    .line 238
    return-void
.end method

.method public showDropDownList()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/widget/Title2;->updateArrowIcon()V

    .line 214
    return-void
.end method

.method public showNotificationBubble(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 499
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 563
    const v1, 0x202008d

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 564
    .local v0, p:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 565
    if-eqz p1, :cond_1

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method updateArrowIcon()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
