.class Lcom/htc/widget/DropDownList$6;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/DropDownList;->mIsHighlightAnimationEnd:Z

    .line 2196
    iget-object v0, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$800(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mClickedDropDownItemParent:Lcom/htc/widget/HtcAdapterView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v2, v2, Lcom/htc/widget/DropDownList;->mClickedDropDownItemView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    iget v3, v3, Lcom/htc/widget/DropDownList;->mClickedDropDownItemPosition:I

    iget-object v4, p0, Lcom/htc/widget/DropDownList$6;->this$0:Lcom/htc/widget/DropDownList;

    iget-wide v4, v4, Lcom/htc/widget/DropDownList;->mClickedDropDownItemId:J

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 2197
    return-void
.end method
