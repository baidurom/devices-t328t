.class Lcom/htc/app/FilePickerFavoritesFragment$2;
.super Ljava/lang/Object;
.source "FilePickerFavoritesFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

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
    .line 186
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v0}, Lcom/htc/app/FilePickerFavoritesFragment;->access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getFavoritesAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    #setter for: Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$802(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter;

    .line 188
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v0}, Lcom/htc/app/FilePickerFavoritesFragment;->access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$2;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$800(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v0, p3, p2, v1}, Lcom/htc/app/FilePickerCore;->performListViewOnItemClickListenerItemClick(ILandroid/view/View;Lcom/htc/app/FilePickerListAdapter;)V

    .line 191
    :cond_0
    return-void
.end method
