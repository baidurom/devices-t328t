.class Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/preference/HtcPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 282
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 294
    if-nez p2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 296
    .local v3, margin_xs:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 297
    .local v2, margin_m:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x205000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 299
    .local v5, spacing:I
    iget-object v8, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x10900c1

    invoke-virtual {v8, v9, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 301
    .local v7, view:Landroid/view/View;
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/htc/preference/HtcPreferenceActivity$1;)V

    .line 302
    .local v1, holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 303
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 304
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 305
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 306
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x2030038

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 307
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x2030042

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 309
    :cond_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    const v8, 0x208003b

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 311
    invoke-virtual {v7, v2, v5, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 319
    .end local v2           #margin_m:I
    .end local v3           #margin_xs:I
    .end local v5           #spacing:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 322
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 324
    .local v4, res:Landroid/content/res/Resources;
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 329
    .local v6, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 330
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_1
    return-object v7

    .line 314
    .end local v0           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v1           #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v6           #summary:Ljava/lang/CharSequence;
    .end local v7           #view:Landroid/view/View;
    :cond_1
    move-object v7, p2

    .line 315
    .restart local v7       #view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 333
    .restart local v0       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-object v8, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
