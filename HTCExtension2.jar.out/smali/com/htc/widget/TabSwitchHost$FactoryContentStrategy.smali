.class Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/htc/widget/TabSwitchHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method public constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Lcom/htc/widget/TabSwitchHost$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 1269
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mFactory:Lcom/htc/widget/TabSwitchHost$TabContentFactory;

    .line 1270
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mFactory:Lcom/htc/widget/TabSwitchHost$TabContentFactory;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/TabSwitchHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    :cond_0
    return-void
.end method

.method public tabRemoved()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    :cond_0
    return-void
.end method
