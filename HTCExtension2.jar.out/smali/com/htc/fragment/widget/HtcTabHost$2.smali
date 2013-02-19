.class Lcom/htc/fragment/widget/HtcTabHost$2;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/fragment/widget/HtcTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/HtcTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$2;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$2;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    .line 170
    if-eqz p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$2;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/fragment/widget/HtcTabHost;->access$100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 173
    :cond_0
    return-void
.end method
