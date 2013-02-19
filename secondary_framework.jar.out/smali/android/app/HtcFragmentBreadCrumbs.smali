.class public Landroid/app/HtcFragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "HtcFragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/HtcFragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const v0, 0x1030089

    invoke-direct {p0, p1, p2, v0}, Landroid/app/HtcFragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mMaxVisible:I

    .line 309
    new-instance v0, Landroid/app/HtcFragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/HtcFragmentBreadCrumbs$1;-><init>(Landroid/app/HtcFragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 149
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 153
    .local v0, entry:Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 154
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 240
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 241
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 243
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->updateCrumbs()V

    .line 222
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->getChildCount()I

    move-result v2

    .line 175
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 176
    invoke-virtual {p0, v4}, Landroid/app/HtcFragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, child:Landroid/view/View;
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v5, v6

    .line 179
    .local v3, childRight:I
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 180
    .local v1, childBottom:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->getChildCount()I

    move-result v1

    .line 189
    .local v1, count:I
    const/4 v3, 0x0

    .line 190
    .local v3, maxHeight:I
    const/4 v4, 0x0

    .line 191
    .local v4, maxWidth:I
    const/4 v5, 0x0

    .line 194
    .local v5, measuredChildState:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 195
    invoke-virtual {p0, v2}, Landroid/app/HtcFragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 197
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/HtcFragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/HtcFragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 207
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 210
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 211
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 213
    invoke-static {v4, p1, v5}, Landroid/app/HtcFragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/HtcFragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/HtcFragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 216
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 93
    iput-object p1, p0, Landroid/app/HtcFragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 94
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x2080099

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/HtcFragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->updateCrumbs()V

    .line 103
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/HtcFragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 104
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .parameter "visibleCrumbs"

    .prologue
    .line 112
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput p1, p0, Landroid/app/HtcFragmentBreadCrumbs;->mMaxVisible:I

    .line 116
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 145
    iput-object p1, p0, Landroid/app/HtcFragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 146
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/app/HtcFragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 133
    iput-object p3, p0, Landroid/app/HtcFragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 134
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->updateCrumbs()V

    .line 135
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Landroid/app/HtcFragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 166
    invoke-virtual {p0}, Landroid/app/HtcFragmentBreadCrumbs;->updateCrumbs()V

    .line 167
    return-void
.end method

.method updateCrumbs()V
    .locals 22

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 249
    .local v6, fm:Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v11

    .line 250
    .local v11, numEntries:I
    invoke-direct/range {p0 .. p0}, Landroid/app/HtcFragmentBreadCrumbs;->getPreEntryCount()I

    move-result v12

    .line 251
    .local v12, numPreEntries:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 252
    .local v13, numViews:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    add-int v18, v11, v12

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 253
    if-ge v7, v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/HtcFragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 256
    .local v4, bse:Landroid/app/FragmentManager$BackStackEntry;
    :goto_1
    if-ge v7, v13, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 258
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 259
    .local v14, tag:Ljava/lang/Object;
    if-eq v14, v4, :cond_2

    .line 260
    move v9, v7

    .local v9, j:I
    :goto_2
    if-ge v9, v13, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 260
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 253
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    .end local v9           #j:I
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #v:Landroid/view/View;
    :cond_0
    sub-int v18, v7, v12

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    .line 263
    .restart local v4       #bse:Landroid/app/FragmentManager$BackStackEntry;
    .restart local v9       #j:I
    .restart local v14       #tag:Ljava/lang/Object;
    .restart local v16       #v:Landroid/view/View;
    :cond_1
    move v13, v7

    .line 266
    .end local v9           #j:I
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #v:Landroid/view/View;
    :cond_2
    if-lt v7, v13, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x10900ba

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 270
    .local v8, item:Landroid/view/View;
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 271
    .local v15, text:Landroid/widget/TextView;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/app/HtcFragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2060094

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 277
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    const v18, 0x102021d

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    const v19, 0x2080037

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    if-nez v7, :cond_3

    .line 281
    const v18, 0x102021d

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .end local v8           #item:Landroid/view/View;
    .end local v15           #text:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_5
    add-int v17, v11, v12

    .line 288
    .local v17, viewI:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 289
    :goto_3
    move/from16 v0, v17

    if-le v13, v0, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    add-int/lit8 v19, v13, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 291
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 294
    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_b

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 297
    .local v5, child:Landroid/view/View;
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    const/16 v18, 0x8

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const v18, 0x102021d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 303
    .local v10, leftIcon:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/HtcFragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-le v7, v0, :cond_a

    if-eqz v7, :cond_a

    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .end local v10           #leftIcon:Landroid/view/View;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 297
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 300
    :cond_9
    const/16 v18, 0x0

    goto :goto_6

    .line 303
    .restart local v10       #leftIcon:Landroid/view/View;
    :cond_a
    const/16 v18, 0x8

    goto :goto_7

    .line 307
    .end local v5           #child:Landroid/view/View;
    .end local v10           #leftIcon:Landroid/view/View;
    :cond_b
    return-void
.end method
