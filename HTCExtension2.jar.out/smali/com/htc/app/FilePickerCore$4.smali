.class Lcom/htc/app/FilePickerCore$4;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$4;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
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
    .line 687
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-nez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$4;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$4;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->dismissDropDown()V

    .line 691
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;

    .line 693
    .local v0, appListItem:Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$4;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->performDropDownItemClick(Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$1400(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V

    .line 694
    return-void
.end method
