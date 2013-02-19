.class public Lcom/htc/widget/HtcShareViaAdapter;
.super Lcom/htc/widget/IHtcShareViaAdapter;
.source "HtcShareViaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcShareViaAdapter$1;,
        Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBgFlag:I

.field private mDataModel:Landroid/widget/ActivityChooserModel;

.field private mExpandStatus:I

.field private mIsDismissOk:Z

.field private mListBgDraw:Landroid/graphics/drawable/Drawable;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResId:I

.field private mTextResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/widget/IHtcShareViaAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    .line 27
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mActivites:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter "intent"
    .parameter "applicationContext"

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcShareViaAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcShareViaAdapter;->setIntent(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method expand()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xa2

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 91
    .local v0, count:I
    sget v1, Lcom/htc/widget/HtcShareViaAdapter;->INDEX_OF_MORE:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    const/16 v1, 0xa2

    iget v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    if-eq v1, v2, :cond_1

    .line 92
    const/16 v1, 0xa1

    iput v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    .line 94
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    sget v1, Lcom/htc/widget/HtcShareViaAdapter;->INDEX_OF_MORE:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShareListResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mActivites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 159
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 160
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mActivites:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v3, v1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mActivites:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;

    .line 140
    .local v2, vh:Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    :goto_0
    sget v3, Lcom/htc/widget/HtcShareViaAdapter;->INDEX_OF_MORE:I

    if-ne p1, v3, :cond_1

    const/16 v3, 0xa1

    iget v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    if-ne v3, v4, :cond_1

    .line 141
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 143
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    iget v5, p0, Lcom/htc/widget/IHtcShareViaAdapter;->VIEW_SEE_ALL:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    return-object p2

    .line 112
    .end local v2           #vh:Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, item:Lcom/htc/widget/HtcListItem;
    iget v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    packed-switch v3, :pswitch_data_0

    .line 121
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_2
    new-instance v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;

    invoke-direct {v2, p0, v7}, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;-><init>(Lcom/htc/widget/HtcShareViaAdapter;Lcom/htc/widget/HtcShareViaAdapter$1;)V

    .line 126
    .restart local v2       #vh:Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    new-instance v3, Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 127
    new-instance v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 129
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/htc/widget/IHtcShareViaAdapter;->WP:I

    iget v6, p0, Lcom/htc/widget/IHtcShareViaAdapter;->WP:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/htc/widget/IHtcShareViaAdapter;->WP:I

    iget v6, p0, Lcom/htc/widget/IHtcShareViaAdapter;->WP:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mTextResId:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 134
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 135
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 136
    move-object p2, v1

    .line 137
    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v2           #vh:Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    :pswitch_0
    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 118
    :pswitch_1
    iget v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mResId:I

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    goto :goto_2

    .line 145
    .end local v1           #item:Lcom/htc/widget/HtcListItem;
    .restart local v2       #vh:Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v3, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 148
    iget-object v3, v2, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isDimissOk()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    return v0
.end method

.method isExpanded()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    return v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/IHtcShareViaAdapter;->FILE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    .line 52
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method setIsDimissOk(Z)V
    .locals 0
    .parameter "isDismissOk"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    .line 68
    return-void
.end method

.method setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    .line 175
    return-void
.end method

.method setListItemBackgroundResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 179
    iput p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mResId:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    .line 181
    return-void
.end method

.method setListItemTextAppearance(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 185
    iput p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mTextResId:I

    .line 186
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xa3

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    .line 64
    return-void
.end method
