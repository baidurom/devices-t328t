.class Lcom/htc/widget/DropDownList$7;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;


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
    .line 3001
    iput-object p1, p0, Lcom/htc/widget/DropDownList$7;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/htc/widget/DropDownList$7;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 3006
    iget-object v0, p0, Lcom/htc/widget/DropDownList$7;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$1900(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/htc/widget/DropDownList$7;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$1900(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 3009
    :cond_0
    return-void
.end method
