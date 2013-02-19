.class Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private dirty:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    const/4 v11, -0x1

    .line 946
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->dirty:Z

    .line 947
    iput-object p2, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 951
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 952
    .local v1, component:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 953
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$1100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 955
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 958
    :cond_0
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$1200(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/widget/HtcTabFragment;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/HtcTabFragment;->getTabContentViewId(Ljava/lang/String;)I

    move-result v2

    .line 959
    .local v2, containerId:I
    invoke-virtual {p1, v2}, Lcom/htc/fragment/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    .line 960
    iget-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_1

    .line 961
    new-instance v8, Landroid/widget/FrameLayout;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/fragment/app/LocalFragmentManager;->getHost()Landroid/app/Fragment;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    .line 962
    iget-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 964
    :cond_1
    iget-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_2

    .line 967
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    :cond_2
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 975
    .local v4, f:Landroid/app/Fragment;
    if-eqz v4, :cond_5

    .line 976
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 977
    .local v3, extras:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 978
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 979
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #arguments:Landroid/os/Bundle;
    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 980
    .restart local v0       #arguments:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 981
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 982
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const-string v9, "Carousel.UriString://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 983
    check-cast v7, Ljava/lang/String;

    .end local v7           #value:Ljava/lang/Object;
    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 986
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    :cond_4
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v8

    invoke-virtual {v8, v4, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->setArguments(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 989
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_5
    iput-object p3, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 990
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/fragment/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 10

    .prologue
    .line 998
    iget-boolean v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->dirty:Z

    if-eqz v7, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->tabRemoved()V

    .line 1000
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->dirty:Z

    .line 1003
    :cond_0
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v7}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1004
    .local v2, f:Landroid/app/Fragment;
    if-nez v2, :cond_3

    .line 1005
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, fragmentDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1008
    .local v1, extras:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1009
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1010
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #arguments:Landroid/os/Bundle;
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1011
    .restart local v0       #arguments:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1012
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1013
    .local v6, value:Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v8, "Carousel.UriString://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1014
    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/Object;
    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1017
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v7}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1020
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #fragmentDescription:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_4

    .line 1021
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1022
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    const/high16 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 1024
    :cond_4
    iget-object v7, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    return-object v7
.end method

.method public tabClosed()V
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->dirty:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->tabRemoved()V

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->dirty:Z

    .line 1036
    :cond_0
    return-void
.end method

.method public tabRemoved()V
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v0}, Lcom/htc/fragment/widget/HtcTabHost;->access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->removeFragment(Ljava/lang/String;Z)V

    .line 1048
    return-void
.end method
