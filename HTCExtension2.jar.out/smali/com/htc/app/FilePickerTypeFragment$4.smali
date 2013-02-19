.class Lcom/htc/app/FilePickerTypeFragment$4;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$4;->this$0:Lcom/htc/app/FilePickerTypeFragment;

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
    .line 231
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$4;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$4;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getTypeAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    .line 233
    .local v0, typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$4;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1, p3, p2, v0}, Lcom/htc/app/FilePickerCore;->performListViewOnItemClickListenerItemClick(ILandroid/view/View;Lcom/htc/app/FilePickerListAdapter;)V

    .line 236
    .end local v0           #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_0
    return-void
.end method
