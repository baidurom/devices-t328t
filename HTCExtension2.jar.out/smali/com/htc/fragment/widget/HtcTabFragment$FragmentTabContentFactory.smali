.class Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;
.super Ljava/lang/Object;
.source "HtcTabFragment.java"

# interfaces
.implements Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/HtcTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentTabContentFactory"
.end annotation


# instance fields
.field private fragmentDescription:Ljava/lang/String;

.field private localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/app/LocalFragmentManager;Ljava/lang/String;)V
    .locals 0
    .parameter "localFragmentManager"
    .parameter "fragmentDescription"

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 248
    iput-object p2, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->fragmentDescription:Ljava/lang/String;

    .line 249
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 256
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 257
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 264
    :goto_0
    return-object v2

    .line 260
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getHost()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v2, view:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragmentCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 262
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 263
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;->fragmentDescription:Ljava/lang/String;

    invoke-virtual {v3, v1, p1, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
