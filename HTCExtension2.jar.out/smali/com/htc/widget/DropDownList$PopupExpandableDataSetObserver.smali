.class Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupExpandableDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2863
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2872
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 2887
    :cond_0
    :goto_0
    return-void

    .line 2873
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v0, v0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    new-instance v1, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver$1;-><init>(Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2898
    return-void
.end method
