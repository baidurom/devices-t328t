.class Lcom/htc/app/ma/MaMainActivity$1;
.super Ljava/lang/Object;
.source "MaMainActivity.java"

# interfaces
.implements Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/ma/MaMainActivity;->createShiftAnimationAgent(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/PageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ma/MaMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity$1;->this$0:Lcom/htc/app/ma/MaMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPreviousPage()V
    .locals 1

    .prologue
    .line 2360
    const-string v0, "Alice, onBackPreviousPage()"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 2361
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity$1;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #calls: Lcom/htc/app/ma/MaMainActivity;->removeTailToCache()V
    invoke-static {v0}, Lcom/htc/app/ma/MaMainActivity;->access$000(Lcom/htc/app/ma/MaMainActivity;)V

    .line 2362
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity$1;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #calls: Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftBack()V
    invoke-static {v0}, Lcom/htc/app/ma/MaMainActivity;->access$100(Lcom/htc/app/ma/MaMainActivity;)V

    .line 2363
    return-void
.end method

.method public onToNextPage()V
    .locals 1

    .prologue
    .line 2365
    const-string v0, "Alice, onToNextPage()"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity$1;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #calls: Lcom/htc/app/ma/MaMainActivity;->removeHeadToStack()V
    invoke-static {v0}, Lcom/htc/app/ma/MaMainActivity;->access$200(Lcom/htc/app/ma/MaMainActivity;)V

    .line 2367
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity$1;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #calls: Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftNext()V
    invoke-static {v0}, Lcom/htc/app/ma/MaMainActivity;->access$300(Lcom/htc/app/ma/MaMainActivity;)V

    .line 2368
    return-void
.end method
