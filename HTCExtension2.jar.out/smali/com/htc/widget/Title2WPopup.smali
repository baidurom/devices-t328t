.class public Lcom/htc/widget/Title2WPopup;
.super Landroid/widget/RelativeLayout;
.source "Title2WPopup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropView:Lcom/htc/widget/DropDownList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mDropView:Lcom/htc/widget/DropDownList;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mDropView:Lcom/htc/widget/DropDownList;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mDropView:Lcom/htc/widget/DropDownList;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/htc/widget/Title2WPopup;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 115
    return-void
.end method

.method public enableBlock(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/widget/Title2WPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public enableRightBlock2()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public getDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideDropDown()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public setBlockClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 1
    .parameter "l"
    .parameter "resId"

    .prologue
    .line 315
    invoke-virtual {p0, p2}, Lcom/htc/widget/Title2WPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setDropListAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 129
    return-void
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "id"
    .parameter "res"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/htc/widget/Title2WPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    .local v0, view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public setRightBlockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 293
    return-void
.end method

.method public setRightBlocksGone()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public setRightIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 282
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 257
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 246
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 213
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 202
    return-void
.end method

.method public setTitleCenter()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public showDropDown()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public showNotificationBubble(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 329
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 340
    const v1, 0x202008d

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title2WPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 341
    .local v0, p:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 342
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
