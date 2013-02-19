.class Lcom/htc/fragment/widget/BinGridView$1;
.super Landroid/widget/BaseAdapter;
.source "BinGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/BinGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/BinGridView;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/BinGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/fragment/widget/BinGridView$1;->this$0:Lcom/htc/fragment/widget/BinGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "index"
    .parameter "convertView"
    .parameter "parentView"

    .prologue
    const/4 v2, -0x2

    .line 354
    if-nez p3, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    .line 358
    :cond_0
    if-nez p2, :cond_1

    .line 360
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, imageView:Landroid/widget/ImageView;
    const v1, 0x208019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 364
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_1
    move-object v0, p2

    .line 368
    goto :goto_0
.end method
