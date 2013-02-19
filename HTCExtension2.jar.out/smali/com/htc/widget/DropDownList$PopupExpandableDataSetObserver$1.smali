.class Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 2878
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2880
    iget-object v1, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    iget-object v1, v1, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v0, v1, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    .line 2881
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    .line 2882
    iget-object v1, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    iget-object v1, v1, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    #calls: Lcom/htc/widget/DropDownList;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lcom/htc/widget/DropDownList;->access$1400(Lcom/htc/widget/DropDownList;I)V

    .line 2884
    :cond_0
    return-void
.end method
