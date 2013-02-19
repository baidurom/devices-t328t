.class Lcom/htc/widget/DropDownList$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2202
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;-><init>(Lcom/htc/widget/DropDownList;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2209
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iget-boolean v0, v0, Lcom/htc/widget/DropDownList;->mIsHighlightAnimationEnd:Z

    if-nez v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$1000(Lcom/htc/widget/DropDownList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$900(Lcom/htc/widget/DropDownList;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2211
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iput-object p1, v0, Lcom/htc/widget/DropDownList;->mClickedDropDownItemParent:Lcom/htc/widget/HtcAdapterView;

    .line 2212
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iput-object p2, v0, Lcom/htc/widget/DropDownList;->mClickedDropDownItemView:Landroid/view/View;

    .line 2213
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iput p3, v0, Lcom/htc/widget/DropDownList;->mClickedDropDownItemPosition:I

    .line 2214
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iput-wide p4, v0, Lcom/htc/widget/DropDownList;->mClickedDropDownItemId:J

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2217
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/widget/DropDownList;->mIsHighlightAnimationEnd:Z

    .line 2219
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #calls: Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/htc/widget/DropDownList;->access$1100(Lcom/htc/widget/DropDownList;Landroid/view/View;IJ)V

    .line 2220
    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iget-boolean v0, v0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownOnItemClick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method
