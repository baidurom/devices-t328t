.class Lcom/htc/app/FilePickerCore$3;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 666
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 670
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->dismissDropDown()V

    .line 672
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v0

    .line 673
    .local v0, isSearchBarVisibled:Z
    if-eqz v0, :cond_1

    .line 674
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->hideSearchBar()V
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$1200(Lcom/htc/app/FilePickerCore;)V

    .line 680
    .end local v0           #isSearchBarVisibled:Z
    :cond_0
    :goto_0
    return-void

    .line 676
    .restart local v0       #isSearchBarVisibled:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$3;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->showSearchBar()V
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$1300(Lcom/htc/app/FilePickerCore;)V

    goto :goto_0
.end method
