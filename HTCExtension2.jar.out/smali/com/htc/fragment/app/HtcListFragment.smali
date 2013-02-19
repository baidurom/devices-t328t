.class public Lcom/htc/fragment/app/HtcListFragment;
.super Landroid/app/Fragment;
.source "HtcListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Lcom/htc/widget/HtcListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mSetEmptyText:Z

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/htc/fragment/app/HtcListFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/HtcListFragment$1;-><init>(Lcom/htc/fragment/app/HtcListFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/htc/fragment/app/HtcListFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/HtcListFragment$2;-><init>(Lcom/htc/fragment/app/HtcListFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 184
    return-void
.end method

.method private ensureList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_0

    .line 450
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    .line 410
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_1
    instance-of v2, v1, Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_4

    .line 413
    check-cast v1, Lcom/htc/widget/HtcListView;

    .end local v1           #root:Landroid/view/View;
    iput-object v1, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 438
    :cond_2
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mListShown:Z

    .line 439
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 440
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_8

    .line 441
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v2}, Lcom/htc/fragment/app/HtcListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 415
    .restart local v1       #root:Landroid/view/View;
    :cond_4
    const v2, 0x10202bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 417
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 418
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mEmptyView:Landroid/view/View;

    .line 420
    :cond_5
    const v2, 0x10202b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    .line 421
    const v2, 0x10202ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mListContainer:Landroid/view/View;

    .line 422
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, rawListView:Landroid/view/View;
    instance-of v2, v0, Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_6

    .line 424
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_6
    check-cast v0, Lcom/htc/widget/HtcListView;

    .end local v0           #rawListView:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 429
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_7

    .line 430
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a HtcListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_7
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 445
    .end local v1           #root:Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 446
    invoke-direct {p0, v4, v4}, Lcom/htc/fragment/app/HtcListFragment;->setListShown(ZZ)V

    goto :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6
    .parameter "shown"
    .parameter "animate"

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 368
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 369
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 395
    :goto_0
    return-void

    .line 375
    :cond_1
    iput-boolean p1, p0, Lcom/htc/fragment/app/HtcListFragment;->mListShown:Z

    .line 376
    if-eqz p1, :cond_3

    .line 377
    if-eqz p2, :cond_2

    .line 378
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_3
    if-eqz p2, :cond_4

    .line 387
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 389
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 303
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 295
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 283
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 216
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 204
    const v0, 0x209005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/app/HtcListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 227
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 241
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 317
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-boolean v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mSetEmptyText:Z

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/fragment/app/HtcListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mSetEmptyText:Z

    .line 325
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 247
    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 248
    .local v0, hadAdapter:Z
    :goto_0
    iput-object p1, p0, Lcom/htc/fragment/app/HtcListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 249
    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-boolean v3, p0, Lcom/htc/fragment/app/HtcListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/htc/fragment/app/HtcListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/htc/fragment/app/HtcListFragment;->setListShown(ZZ)V

    .line 257
    :cond_1
    return-void

    .end local v0           #hadAdapter:Z
    :cond_2
    move v0, v2

    .line 247
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/app/HtcListFragment;->setListShown(ZZ)V

    .line 347
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/app/HtcListFragment;->setListShown(ZZ)V

    .line 355
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;->ensureList()V

    .line 271
    iget-object v0, p0, Lcom/htc/fragment/app/HtcListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 272
    return-void
.end method
