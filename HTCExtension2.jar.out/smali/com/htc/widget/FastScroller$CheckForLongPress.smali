.class Lcom/htc/widget/FastScroller$CheckForLongPress;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalSelectedTab:I

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberSelectedTab()V
    .locals 5

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1261
    .local v0, pos:I
    :goto_0
    iput v0, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    .line 1262
    return-void

    .line 1259
    .end local v0           #pos:I
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .restart local v0       #pos:I
    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1239
    .local v0, pos:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    if-ne v1, v0, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/FastScroller;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    :cond_0
    return-void

    .line 1236
    .end local v0           #pos:I
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .restart local v0       #pos:I
    goto :goto_0
.end method
