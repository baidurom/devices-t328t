.class Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;
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
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;I)V
    .locals 3
    .parameter
    .parameter "viewId"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 870
    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost;->access$100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 871
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    return-void

    .line 874
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;ILcom/htc/fragment/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 865
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 894
    return-void
.end method
