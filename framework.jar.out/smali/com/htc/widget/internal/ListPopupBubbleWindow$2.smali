.class Lcom/htc/widget/internal/ListPopupBubbleWindow$2;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1327
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    .line 1330
    .local v0, dropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 1331
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1334
    .end local v0           #dropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
