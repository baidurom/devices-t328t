.class Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;
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
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 1327
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1328
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, v2, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    .line 1339
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1341
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, v2, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 1343
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1344
    .local v1, wd:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1345
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1349
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 1359
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1362
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1365
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 1343
    .end local v1           #wd:Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    :cond_0
    return-void
.end method

.method public tabRemoved()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1397
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 1398
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v0, v0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1399
    return-void
.end method
