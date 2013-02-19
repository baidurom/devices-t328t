.class Lcom/htc/widget/DropDownList$8;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


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
    .line 3025
    iput-object p1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 3029
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getExpandedPosition()I

    move-result v0

    .line 3030
    .local v0, lastPosition:I
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 3031
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->collapseGroup(I)Z

    .line 3032
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 3033
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$2000(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3034
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$2000(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 3035
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DropDownList$8;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v1, v1, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setExpandedPosition(I)V

    .line 3036
    return-void
.end method
