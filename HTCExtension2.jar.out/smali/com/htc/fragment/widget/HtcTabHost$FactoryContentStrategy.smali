.class Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;
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
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/CharSequence;Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p2, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 911
    iput-object p3, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mFactory:Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;

    .line 912
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mFactory:Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 932
    return-void
.end method
