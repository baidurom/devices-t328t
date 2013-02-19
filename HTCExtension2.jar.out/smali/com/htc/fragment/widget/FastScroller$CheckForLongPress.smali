.class Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalSelectedTab:I

.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberSelectedTab()V
    .locals 5

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1427
    .local v0, pos:I
    :goto_0
    iput v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    .line 1428
    return-void

    .line 1425
    .end local v0           #pos:I
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$1000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .restart local v0       #pos:I
    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1405
    .local v0, pos:I
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    if-ne v1, v0, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/FastScroller;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    :cond_0
    return-void

    .line 1402
    .end local v0           #pos:I
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$1000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .restart local v0       #pos:I
    goto :goto_0
.end method
