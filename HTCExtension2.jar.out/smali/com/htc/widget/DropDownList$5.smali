.class Lcom/htc/widget/DropDownList$5;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList;->setupDropDownList()V
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
    .line 2128
    iput-object p1, p0, Lcom/htc/widget/DropDownList$5;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 2131
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 2132
    iget-object v1, p0, Lcom/htc/widget/DropDownList$5;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$600(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownListView;

    move-result-object v0

    .line 2133
    .local v0, dropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v0, :cond_0

    .line 2134
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 2137
    .end local v0           #dropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2140
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
